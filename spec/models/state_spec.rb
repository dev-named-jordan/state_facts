require 'rails_helper'

RSpec.describe State, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :description }
    it { should validate_presence_of :flag_image }
    it { should validate_presence_of :captitol_name }
    it { should validate_presence_of :population }
  end
  describe "relationships" do
    it { should have_many :facts }
  end
end
