dir = File.dirname(__FILE__)
$LOAD_PATH << dir unless $LOAD_PATH.include?(dir)

require 'country_currency/code'
require 'country_currency/iso_3166_1'
require 'country_currency/iso_13616_1'
require 'country_currency/iso_4217'
require 'country_currency/calling'
require 'country_currency/continent'
require 'country_currency/country_currency'
