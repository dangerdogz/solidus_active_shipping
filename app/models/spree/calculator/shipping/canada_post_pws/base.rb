require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    module CanadaPostPws

      ::ActiveShipping::CanadaPostPWS.class_eval do
        cattr_reader :name
      end

      class Base < Spree::Calculator::Shipping::ActiveShipping::Base
        def carrier
          canada_post_options = {
              :api_key => Spree::ActiveShipping::Config[:canada_post_pws_api_key],
              :secret => Spree::ActiveShipping::Config[:canada_post_pws_secret],
              :endpoint => Spree::ActiveShipping::Config[:test_mode] ?
                  'https://ct.soa-gw.canadapost.ca/' : nil,
              :customer_number => Spree::ActiveShipping::Config[:canada_post_pws_customer_number]
          }

          ::ActiveShipping::CanadaPostPWS.new(canada_post_options)
        end
      end
    end
  end
end
