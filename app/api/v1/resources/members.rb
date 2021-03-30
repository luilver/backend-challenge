# frozen_string_literal: true

module V1
  module Resources
    class Members < Base
      resource :members do

        params do
          requires :name, type: String
          requires :website_url, type: String
        end
        post do
          name = params[:name]
          website_url = params[:website_url]

          member = ::Members::Creator.call(name: name, website_url: website_url)

          present member, with: Entities::Member
        end

        get do
          members = ::Members::Indexer.call

          present members, with: Entities::Member, with_number_of_friends: true
        end

        route_param :member_id, type: Integer do
          get do
            member_id = params[:member_id]

            member = ::Members::Reporter.call(member_id: member_id)

            present member, with: Entities::Member, with_reporter: true
          end
        end
      end
    end
  end
end
