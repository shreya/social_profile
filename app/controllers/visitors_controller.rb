class VisitorsController < ApplicationController

	def social_profile
		if request.xhr?
			if params[:type] == "twitter"
				client = Twitter::REST::Client.new do |config|
				  config.consumer_key = CONSUMER_KEY
				  config.consumer_secret = CONSUMER_SECRET
				  config.access_token = ACCESS_TOKEN
				  config.access_token_secret = ACCESS_TOKEN_SECRET
				end		
				@tweets = client.user_timeline(params[:username], :count => 10) rescue nil
			elsif params[:type] == "rubygems"
				@gem_list = Gems.gems(params[:username]).first(10)
			elsif params[:type] == "github"
				github = Github.new
				begin
					@github_doj = github.users.get(user: params[:username]).created_at
					@repos =  github.repos.list(user: params[:username]).first(10)
				rescue 
					nil
				end
			end
		end	
	end
end
