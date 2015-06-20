# Dyna Pagarme

## Instalação


```ruby
gem 'dyna-pagarme'
```

Ou:

```bash
$ gem install dyna-pagarme
```

## Como usar

Para criar uma transação:

```ruby
PagarMe.transactions.create({…})
#=> {
  "object" => "transaction",
  "status" => "processing",
  …
  "customer" => {…},
  "card" => {
    "object" => "card",
    …
  },
  "metadata" => {…}
}
```

Os parâmetros aplicáveis podem ser encontrados em http://pagar.me/docs.

Para criar uma conta bancária:

```ruby
PagarMe.bank_accounts.create({…})
#=> {
    "object" => "bank_account",
    "id" => 4840,
    "date_created" => "2015-03-19T15:35:40.000Z",
    …
}
```

Os parâmetros aplicáveis podem ser encontrados em http://pagar.me/docs.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/dyna-pagarme/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
