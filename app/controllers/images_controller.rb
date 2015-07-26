class ImagesController < ApplicationController

  def random
    @image = Image.all.sample
    render json: @image
  end

end