# frozen_string_literal: true

class Migrate
  def self.on_schema(schema)
    conn = ActiveRecord::Base.connection

    default_search_path = conn.schema_search_path

    # Set the schema that you want run the migration
    conn.schema_search_path = schema
    yield schema

    # Return to default schema path
    conn.schema_search_path = default_search_path
  end
end
