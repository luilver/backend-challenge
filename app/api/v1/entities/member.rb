# frozen_string_literal: true

module V1
  module Entities
    class Member < Base
      expose :name
      expose :website_url
      expose :number_of_friends
    end
  end
end
