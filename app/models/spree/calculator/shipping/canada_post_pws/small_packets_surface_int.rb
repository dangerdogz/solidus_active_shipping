module Spree
  module Calculator::Shipping
    module CanadaPostPws
      class SmallPacketsSurfaceInt < Spree::Calculator::Shipping::CanadaPostPws::Base
        def self.description
          I18n.t("canada_post_pws.small_packets_surface_int")
        end
      end
    end
  end
end
