# Tratocyr

* Tratocyr - Translit To Cyrillic
* This gem provide functionality for translation string with translit symbols to string with cyrillic symbols

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tratocyr'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tratocyr

## Usage

* Usage:
```ruby
translator = Tratocyr::CyrillicTranslator.new
translator.to_cyrillic("Mister Putin molodec!")
```
* Result:
``` Мистер Путин молодец!```

## Contributing

1. Fork it ( https://github.com/CyberLight/tratocyr/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
