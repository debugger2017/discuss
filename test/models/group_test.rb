require 'test_helper'

class GroupTest < ActiveSupport::TestCase
	def setup
		@group = groups(:idyllic)
	end

	test "should be valid" do 
    	assert @group.valid?
  	end

	test "name should be present" do
		@group.name = " "
		assert_not @group.valid?
	end
end
