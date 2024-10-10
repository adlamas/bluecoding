
class UrlsController < ApplicationController
	def create
		short_url = "#{params[:url].split('')[0]}#{Url.count}"
		render json: { url: Url.create!(real_url: params[:url], short_url: short_url)}
	end

	def redirect
		begin
			@url = Url.find_by(short_url: params[:short_url])
			@url.click

			render json: { url: @url.real_url }
		rescue StandardError => e
			render json: e.message
		end
	end

	def most_frequents
		@urls = Url.order(clicks: :desc).limit(100)

		render json: @urls
	end
end
