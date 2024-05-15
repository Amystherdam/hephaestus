# frozen_string_literal: true

class DescriptionsController < ApplicationController
  def index
    gemini = Gemini.new(description_params[:image_url])

    render json: { image_description: gemini.generate_description, image_url: description_params[:image_url] }
  end

  private

  def description_params
    params.require(:description).permit(:image_url)
  end
end
