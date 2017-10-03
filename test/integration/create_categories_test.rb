require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest

		test "get new category form and create category" do

			get new_category_path			# get request
			assert_template 'categories/new'		# go to new view, a form
			assert_difference('Category.count', 1) do
				# sends a post request to categories_path
				post categories_path, params: {category: {name: 'sports'}}
			end
			# send to index view
			assert_template 'categories/index'
			assert_match "sports", response.body		# 'sports' should be in the body
		end
end

