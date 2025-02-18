# frozen_string_literal: true

module V1
  module Entities
    class Base < Grape::Entity
      expose :name
      expose :website_url

      format_with(:to_string) { |foo| foo.to_s }
      format_with(:to_float, &:to_f)
    end
  end
end
