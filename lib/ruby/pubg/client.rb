require 'rest-client'
require 'json'

module Ruby
  module Pubg
  	class Client
      NICK_API_URL = "https://pubgtracker.com/api/profile/pc"
      ID_API_URL = "https://pubgtracker.com/api/search"

      def initialize(api_key)
        @api_key = api_key
      end

      def find_by_name(name)
        response = RestClient::Request.execute(
           :method => :get,
           :url => "#{NICK_API_URL}/#{name}",
           :headers => {"TRN-Api-Key": @api_key}
        )

        JSON.parse(response)
      end

      def find_name_by_steam_id(steam_id)
        response = RestClient::Request.execute(
           :method => :get,
           :url => "#{ID_API_URL}/?steamId=#{steam_id}",
           :headers => {"TRN-Api-Key": @api_key}
        )

        JSON.parse(response)
      end
  	end
  end
end