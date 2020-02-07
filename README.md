# Schema Utils

Gem utilizada pela equipe da Bonitour para executar as migrations dentro de cada schema no Database.

## Installation

```ruby
gem 'schema_utils'
```

And then execute:

```bash
$ bundle install
```

## Usage

Inicializar a lib:

```ruby
# ../config/initializers/schema_utils.rb

require "schema_utils"
#
# SchemaUtils Configuration
#
SchemaUtils.configure do |config|
  # There are cases where you might want some schemas to always be in your search_path
  # e.g when using a PostgreSQL extension like pgcrypto.
  # Any schemas added here will be available along with your selected Schema.
  #
  config.persistent_schemas = %w[shared_extensions]
end
```

Dentro da migration incluir:

```ruby
    Migrate.on_schema("company") do
      create_table :employee do |t|
        t.string :document, null: false
        t.timestamps
      end
    end
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Schema::Utils project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/schema_utils/blob/master/CODE_OF_CONDUCT.md).
