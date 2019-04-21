class PagesController < ApplicationController
  def index
    @image = Image.landscapes.order(Arel.sql('random()')).first
  end

  def about; end

  def contact; end
end
