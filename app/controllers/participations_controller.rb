class ParticipationsController < ApplicationController
    def index
    end
  
    def new
      @participation = Participation.new
      @participation.user = current_user
      @participation.event = Event.find(params[:event_id])
    end
  
    def create
      @participation = Participation.new(participation_params)
      @participation.user = current_user
      @participation.event = Event.find(params[:event_id])  

      if @participation.save
        redirect_to events_path, notice: "You are registered!"
      else
        render action: 'new'
      end
    end
  
  private
  
    def participation_params
      params.require(:participation).permit(:user_id, :email)
    end
end