class AdventureController < ApplicationController
  def new
    #a hiker will go on a new adventure, when ever and where ever
  end

  def create
    #make the new adventure real and save it with association that it belongs to a hiker
  end

  def index
    #i want to click on the hiker's adventure link and have that page display all their adventures they've gone on
    #so maybe index for adventures then show for individual trek on that adventure
    #index with the name of adventure
    #show each specific trek with all attributes: name, state, elevation and level
  end
end
