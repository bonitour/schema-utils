# frozen_string_literal: true

require "schema_utils/version"
require "migrate"

module SchemaUtils
  class << self
    attr_writer :persistent_schemas

    def configure
      yield self if block_given?
    end

    def persistent_schemas
      @persistent_schemas || []
    end
  end
end
