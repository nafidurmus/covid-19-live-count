class MainController < ApplicationController

	def index
		require 'open-uri'
		require 'nokogiri'
		doc = Nokogiri::HTML(open("https://www.worldometers.info/coronavirus/"))
		@world = doc.css('div.maincounter-number')		
	end

	def fetch_data
		

	end
end
