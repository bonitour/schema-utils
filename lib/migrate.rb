# frozen_string_literal: true

class Migrate
  def self.on_schema(schema)
    conn = ActiveRecord::Base.connection

    default_search_path = conn.execute("SHOW search_path").first["search_path"]

    schema_search_path = [schema, SchemaUtils.persistent_schemas].flatten.map(&:inspect).join(", ")

    # Set the custom schema
    conn.execute("SET search_path TO #{schema_search_path}")

    # Execute migration block
    yield

    # Return to default schema path
    conn.execute("SET search_path TO #{default_search_path}")
  end
end
