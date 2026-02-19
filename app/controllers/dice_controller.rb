class DiceController < ApplicationController
  def home
    render ({ :template => "/dice_templates/home" })
  end

  def roll
    @dice = params.fetch("dice").to_i
    @sides = params.fetch("sides").to_i

    @rolls = []

    # TODO: load up rolls dice time with a random value between (1..sides)
    @dice.times do
      dice = rand(1..@sides)

    @rolls.push(dice)
    end

    render ({ :template => "/dice_templates/results" })
  end


end
