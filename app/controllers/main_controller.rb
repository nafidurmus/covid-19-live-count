class MainController < ApplicationController

	def index
		require 'open-uri'
		require 'nokogiri'
		doc = Nokogiri::HTML(open("https://www.worldometers.info/coronavirus/"))
		@world = doc.css('div.maincounter-number')	


		require 'uri'
		require 'net/http'
		require 'rubygems'
		require 'json'

		url = URI("https://api.collectapi.com/corona/countriesData?country=Turkey")

		http = Net::HTTP.new(url.host, url.port)
		http.use_ssl = true
		http.verify_mode = OpenSSL::SSL::VERIFY_NONE

		request = Net::HTTP::Get.new(url)
		request["content-type"] = 'application/json'
		request["authorization"] = 'apikey 2Fdhem1KI5mpRKkywFNInm:5nkvw1MDPBHVPJhFP1yy9P'

		@response = http.request(request)
		@response = @response.read_body
		@response1 = JSON.parse(@response)
	end
end
