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

	test "name should be unique" do
    	duplicate_group = @group.dup
    	@group.save
    	assert_not duplicate_group.valid?
 	end

 	test "name should not be too long" do
 		@group.name = "a"*9
 		assert_not @group.valid?
 	end
end
