require 'spec_helper'

module Drapery
  describe Subscription do
    describe "Validations" do
      describe "email" do
        it 'should validate presence' do
          expect(described_class.new).to be_invalid
        end

        it 'should validate uniqueness' do
          described_class.create(email: "ileeftimov@gmail.com")
          expect(described_class.new(email: "ileeftimov@gmail.com")).to be_invalid
        end
      end
    end
  end
end
