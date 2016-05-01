module Spree
  module Calculator::Shipping
    module CanadaPostPws
      class Regular < Spree::Calculator::Shipping::CanadaPostPws::Base
        def self.description
          I18n.t("canada_post_pws.regular")
        end
      end
    end
  end
end
