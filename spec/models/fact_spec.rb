require 'rails_helper'

RSpec.describe Fact, type: :model do
  describe "validations" do
    it { should validate_presence_of :title}
    it { should validate_presence_of :details }
    it { should validate_presence_of :lat }
    it { should validate_presence_of :lng }
    it { should validate_presence_of :state_id }
  end
  describe "relationships" do
    it { should belong_to :state }
  end
end
