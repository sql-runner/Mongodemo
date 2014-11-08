class YasisController < ApplicationController

  def index
    @yasis = Yasi.all
  end
end
