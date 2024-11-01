class DicerollController < ApplicationController
  def home
    render({ :template => "layouts/home" })
  end

  def roll_2d6
    @rolls = []

    2.times do
      die = rand(1..6)

      @rolls.push(die)
    end
    render({ :template => "roll_templates/roll_2d6"})
  end
    
  def roll_2d10
    @rolls = []

    2.times do
      die = rand(1..10)

      @rolls.push(die)
    end
    render({ :template => "roll_templates/roll_2d10"})
  end

  def roll_1d20
    @rolls = []

    1.times do
      die = rand(1..20)

      @rolls.push(die)
    end
    render({ :template => "roll_templates/roll_1d20"})
  end

  def roll_5d4
    @rolls = []

    5.times do
      die = rand(1..4)

      @rolls.push(die)
    end
    render({ :template => "roll_templates/roll_5d4"})
  end

  def roll_random
    @num_dice = params.fetch("number_of_dice").to_i

    @sides = params.fetch("how_many_sides").to_i
  
    @rolls = []
  
    @num_dice.times do
      die = rand(1..@sides)
  
      @rolls.push(die)
    end
    render({ :template => "roll_templates/roll_random" })
  end
end
