Rails.application.routes.draw do
  namespace :api do
    get '/params_game_url' => 'param_examples#params_game_action'
    get '/params_guess_game_url' => 'param_examples#params_guess_game_action'
    get '/params_guess_game_url/:wildcard' => 'param_examples#params_segment_guess_action'
    post '/body_params_guess_game_url' => 'param_examples#body_params_guess_game_action'
  end
end
