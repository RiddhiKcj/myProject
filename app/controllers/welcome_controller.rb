class WelcomeController < ApplicationController
	
  def index
    @user = current_user
    @results = ApiModel.retrieve_results
    @hash = Hash.new
    res = @results.to_s.split(',').split('=>')
    puts res
  end
end
