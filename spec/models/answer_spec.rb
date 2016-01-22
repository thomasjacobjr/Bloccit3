require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:answer) { Answer.new(title: "New Answer title") }

  describe "attributes" do
    it "should respond to title" do
      expect(answer).to respond_to(:title)
    end
  end

end
