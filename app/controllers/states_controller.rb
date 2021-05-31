class StatesController < ApplicationController
  # before_action :find_state, only: [:show]
  # before_action :find_state_fact_title, only: [:show]

  def index
    # require "pry"; binding.pry
    @states = State.all
    render json: @states
  end

  def show
    state = State.find(params[:id])
    fact = Fact.where(state_id: state.id)
    state_facts = fact.map(&:title)
    @state_final = [state, state_facts]
    render json: @state_final
  end

  # private
  # def find_state
  #   @state = State.find(params[:id])
  # end
  #
  # def find_state_fact_title
  #   fact = Fact.where(state_id: @state.id)
  #   @state_facts = fact.each(&:title)
  # end
end
