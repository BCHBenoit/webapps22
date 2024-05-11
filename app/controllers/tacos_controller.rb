class TacosController < ApplicationController

  def index
    # render :template => "tacos/index"
    @fillings = ["Carnitas", "Al Pastor", "Steak", "Fish", "Veggie"]
  end

end