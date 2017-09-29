require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

	def setup
		@category = Category.new(name: 'sports')
	end

	test "category should be valid" do
		assert @category.valid?
	end

	test "name should be present" do
		# set category name to empty string
		@category.name = ""

		# category should not be valid
		assert_not @category.valid?
	end

	test "name should be unique" do 
		@category.save
		category2 = Category.new(name: "sports")
		assert_not category2.valid?
	end

	test "name should not be too long" do
		@category.name = "hocus_pocus" * 5
		assert_not @category.valid?
	end

	test "name should not be too short" do
		@category.name = 'ho'
		assert_not @category.valid?
	end

end













