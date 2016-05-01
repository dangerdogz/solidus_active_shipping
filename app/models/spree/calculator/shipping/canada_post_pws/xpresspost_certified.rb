module Spree
  module Calculator::Shipping
    module CanadaPostPws
      class XpresspostCertified < Spree::Calculator::Shipping::CanadaPostPws::Base
        def self.description
          I18n.t("canada_post_pws.xpresspost_certified")
        end
      end
    end
  end
end
