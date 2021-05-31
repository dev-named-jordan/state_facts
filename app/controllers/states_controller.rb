class StatesController < ApplicationController
  before_action :find_state, only: [:show]

  def index
    @states = State.all
    # require "pry"; binding.pry
    render json: @states
  end

  def show
    # require "pry"; binding.pry
    @state
    render json: @state
  end

  private
  def find_state
    @state = State.find(params[:id])
  end
end
