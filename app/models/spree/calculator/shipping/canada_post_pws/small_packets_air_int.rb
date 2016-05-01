module Spree
  module Calculator::Shipping
    module CanadaPostPws
      class SmallPacketsAirInt < Spree::Calculator::Shipping::CanadaPostPws::Base
        def self.description
          I18n.t("canada_post_pws.small_packets_air_int")
        end
      end
    end
  end
end
