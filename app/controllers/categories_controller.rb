class CategoriesController < ApplicationController

	def index
	end

	def new
		@category = Category.new()
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			flash[:success] = "'#{@category.name}' category was created successfully"
			redirect_to categories_path
		else
			render 'new'
		end
	end

	def show
	end

	private
	
	def category_params
		params.require(:category).permit(:name)
	end
end




