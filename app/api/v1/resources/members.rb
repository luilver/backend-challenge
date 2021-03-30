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

          present members, with: Entities::Member
        end
      end
    end
  end
end
