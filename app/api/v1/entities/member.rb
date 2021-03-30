# frozen_string_literal: true

module V1
  module Entities
    class Member < Base
      with_options if: :with_number_of_friends do
        expose :number_of_friends
      end

      with_options if: :with_reporter do
        expose :shorten_url
        expose :friends, with: Entities::Friend
      end
    end
  end
end
