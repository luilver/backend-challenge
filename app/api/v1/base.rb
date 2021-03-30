# frozen_string_literal: true

module V1
  class Base < Grape::API::Instance
    prefix 'v1'
    version 'v1', using: :accept_version_header

    format :json
    content_type :json, 'application/json'

    helpers Helpers::Base
    mount Resources::Members
    mount Resources::Friendships
    mount Resources::Verify

    add_swagger_documentation api_version: 'v1',
                              doc_version: '0.0.0',
                              hide_documentation_path: true,
                              base_path: '/',
                              info: { title: 'Backend Challenge' }
  end
end
