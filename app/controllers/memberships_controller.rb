class MembershipsController < ApplicationController

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response


    def create
        membership = Membership.create!(memberships_params)
        render json: membership, status: :created
    end
     
    private 

    def memberships_params
        params.permit(:gym_id, :client_id, :charge)
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, statu: :render_unprocessable_entity
    end

    

end
