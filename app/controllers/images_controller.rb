class ImagesController < ApplicationController
  def random
    image = Image.order('random()').first
    render json: image
  end
end
