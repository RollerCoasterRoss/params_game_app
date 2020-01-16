class Api::ParamExamplesController < ApplicationController
  def params_game_action
    @my_name = params[:name].upcase

    if @my_name.chr == "A"
      @alt_message = "Hey, your name begins with the first letter in the alphebet!"
    end

    render "params_game_view.json.jb"
  end

  def params_guess_game_action
    @guess = params[:user_guess].to_i

    if @guess == 66
      @result = "You Win!"
    elsif @guess > 66
      @result = "Lower!"
    elsif @guess < 66
      @result = "Higher!"
    end

    render "params_guess_game_view.json.jb"
  end

  def params_segment_guess_action
    @guess = params[:wildcard].to_i

    if @guess == 66
      @result = "You Win!"
    elsif @guess > 66
      @result = "Lower!"
    elsif @guess < 66
      @result = "Higher!"
    end

    render "params_segment_guess.json.jb"
  end

  def body_params_guess_game_action
    @guess = params[:user_guess].to_i

    if @guess == 66
      @result = "You Win!"
    elsif @guess > 66
      @result = "Lower!"
    elsif @guess < 66
      @result = "Higher!"
    end

    render "body_params_guess_game_view.json.jb"
  end
end
