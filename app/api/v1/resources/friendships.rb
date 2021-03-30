# frozen_string_literal: true

module V1
  module Resources
    class Friendships < Base
      resource :friendship do

        params do
          requires :member_id, type: Integer
          requires :friend_id, type: Integer
        end
        post do
          member_id = params[:member_id]
          friend_id = params[:friend_id]

          member = ::Friendships::Creator.call(member_id: member_id, friend_id: friend_id)

          status 201
        end
      end
    end
  end
end
