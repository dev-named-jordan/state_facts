class StatesController < ApplicationController
  # before_action :find_state, only: [:show]
  # before_action :find_state_fact_title, only: [:show]

  def index
    @states = State.all
    render json: @states
  end

  def show
    state = State.find(params[:id])
    fact = Fact.where(state_id: state.id)
    state_facts = fact.map(&:title)
    @state_final = [state, state_facts]
    # require "pry"; binding.pry
    render json: @state_final
  end
#not sure if strong params should be used here
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
