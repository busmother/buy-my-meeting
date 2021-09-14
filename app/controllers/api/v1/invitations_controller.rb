class Api::VI::InvitationssController < Api::V1::ApplicationController

    def index
        invitations = Invitation.all #should update to only show specific invitations
        render json: InvitationSerializer.new(invitation)
    end

    def create
        invitation = Invitation.find_or_create_by(id: invitation_params[:id])
        render json: InvitationSerializer.new(invitation)
    end

    def show
        invitation = Invitation.find_by(id: params[:id])
        render json: InvitationSerializer.new(invitation)
    end

end