# frozen_string_literal: true

module V1
  class Base < Grape::API::Instance
    prefix 'v1'
    version 'v1', using: :accept_version_header

    format :json
    content_type :json, 'application/json'

    helpers Helpers::Base
    mount Resources::Verify
  end
end
