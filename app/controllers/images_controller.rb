class ImagesController < ApplicationController
  def random
    image = Image.order(Arel.sql('random()')).first
    render json: image
  end
end
