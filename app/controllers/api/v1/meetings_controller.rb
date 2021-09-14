class Api::VI::MeetingsController < Api::V1::ApplicationController

    def index
        users = Meeting.all
        render json: MeetingSerializer.new(meeting)
    end

    def create
        meeting = Meeting.find_or_create_by(id: meeting_params[:id])
        render json: MeetingSerializer.new(meeting)
    end

    def show
        meeting = Meeting.find_by(id: params[:id])
        render json: MeetingSerializer.new(meeting)
    end

end