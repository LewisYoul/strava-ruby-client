module Strava
  module Errors
    class Fault < ::Faraday::ClientError
      def message
        response[:body]['message'] || super
      end

      def errors
        response[:body]['errors']
      end
    end
  end
end
