require 'test/unit'
require 'tzinfo'
require 'country_currency'

class TestCountryCurrency < Test::Unit::TestCase

  def test_all_tzinfo_names
    result = TZInfo::Country.all.any? do |c|
      CountryCurrency.find(c.code).name != c.name
    end

    assert !result
  end

  def test_find_by_all_names_and_codes
    assert_equal 'Argentina', CountryCurrency.find('AR').name
    assert_equal 'Argentina', CountryCurrency.find('Argentina').name
    assert_equal 'Argentina', CountryCurrency.find('arGentIna').name
    assert_equal 'Argentina', CountryCurrency.find('ARG').name
  end

  def test_search_by_currency
    assert_equal 'Argentina', CountryCurrency.search_by_currency('ARS').first.name

    assert_includes CountryCurrency.search_by_currency('USD').map(&:name), 'United States'
  end

  def test_currency_symbol
    assert_equal '$', CountryCurrency.find('AR').currency_symbol
    assert_equal '$', CountryCurrency.search_by_currency('ARS').first.currency_symbol
    assert_equal 'u$s', CountryCurrency.find('US').currency_symbol
    assert_equal ['u$s'], CountryCurrency.search_by_currency('USD').map(&:currency_symbol).uniq
  end
end
