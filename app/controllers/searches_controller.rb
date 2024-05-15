# frozen_string_literal: true

class SearchesController < ApplicationController
  def index
    render json: Search.all
  end
end
