module Spree
  class Address
    ##
    # Adds geocoding methods to `Spree::Address`
    #
    module Geocoding
      extend ActiveSupport::Concern

      included do
        geocoded_by :full_address

        ##
        # Addresses are readonly so be sure to only
        # perform geocode on create.
        after_validation :geocode, if: '(self.changed? && !self.longitude_changed? && !self.latitude_changed?) || !self.longitude || !self.latitude'
      end
      
      ##
      # The full address.
      #
      # @example Get the full address.
      #   address.full_name # "street, city, state, country"
      #
      # @return [String] The full street address wit city, state and country.
      #
      def full_address
        [address1, address2.presence, city, state_text, country.try(:iso)].compact.join(', ')
      end
    end
  end
end
