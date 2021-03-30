# frozen_string_literal: true

module V1
  module Resources
    class Verify < Base
      get :verify do
        status 200
      end
    end
  end
end
