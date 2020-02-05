# Schema Utils

Gem utilizada pela equipe da Bonitour para executar as migrations dentro de cada schema no Database.

## Installation

```ruby
gem 'schema_utils'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install schema-utils

## Usage

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
