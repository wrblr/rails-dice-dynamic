Rails.application.routes.draw do
  get("/", { :controller => "diceroll", :action => "home"})
  get("/dice/2/6", { :controller => "diceroll", :action => "roll_2d6"})
  get("/dice/2/10", { :controller => "diceroll", :action => "roll_2d10"})
  get("/dice/1/20", { :controller => "diceroll", :action => "roll_1d20"})
  get("/dice/5/4", { :controller => "diceroll", :action => "roll_5d4"})
  get("/dice/:number_of_dice/:how_many_sides", { :controller => "diceroll", :action => "roll_random"})
end
