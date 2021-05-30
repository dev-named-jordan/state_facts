class StatesController < ApplicationController
  before_action :find_state, only: [:show]

  def index
    @states = State.all
  end

  def show
    @state
  end

  private
  def find_state
    @state = State.find(params[:state_id])
  end
end
