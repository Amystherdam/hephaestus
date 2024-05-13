class DescribeController < ApplicationController
  def index
    gemini = Gemini.new(describe_params[:image_url])

    render json: { image_description: gemini.generate_description, image_url: describe_params[:image_url] }
  end

  private

  def describe_params
    params.require(:describe).permit(:image_url)
  end
end
