# CountryCurrency

## DESCRIPTION:

Provides ISO codes, names and currencies for countries.

## USE:
```ruby
# Search by country (Argentina)
country = CountryCurrency.find('AR')        # Alpha2
country = CountryCurrency.find('ARG')       # Alpha3
country = CountryCurrency.find('Argentina') # Iso name

# Attributes
country.currency        # => "ARS"
country.currency_symbol # => "$"
country.alpha2          # => "AR"
country.alpha3          # => "ARS"
country.calling         # => "+54" phone number prefix

# Search by country (United States)
country = CountryCurrency.find('US')            # Alpha2
country = CountryCurrency.find('USA')           # Alpha3
country = CountryCurrency.find('United States') # Iso name

# Attributes
country.currency        # => "USD"
country.currency_symbol # => "u$d"
country.alpha2          # => "US"
country.alpha3          # => "USA"
country.calling         # => "+1" phone number prefix

```

## console:
`$ rake console`

## test:
`$ rake test`
