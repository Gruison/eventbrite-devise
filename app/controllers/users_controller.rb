class UsersController < ApplicationController
  def show
  @user = User.find(params[:id])
  # @participation = Participation.all
  # puts @participation
  end
  
end
