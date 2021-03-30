# frozen_string_literal: true

module V1
  module Resources
    class Members < Base
      get :members do
        members = ::Members::Indexer.call

        present members, with: Entities::Member
      end
    end
  end
end
