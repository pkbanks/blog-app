class ArticlesController < ApplicationController

	before_action :set_article, only: [:edit, :show, :update, :destroy]

	# need a logged in user for all actions, except index and show
	before_action :require_user, except: [:index, :show]

	# only the author of the article can edit/update/delete the article
	before_action :require_same_user, only: [:edit, :update, :destroy]

	def index
		# @articles = Article.all
		@articles = Article.paginate(page: params[:page], per_page: 5)
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		@article.user = current_user
		if @article.save
			flash[:success] = "Article was successfully created."
			redirect_to article_path(@article)
		else
			render 'new'
		end
	end

	def show
		
	end

	def edit
		
	end

	def update
		
		if @article.update(article_params)
			flash[:success] = "Article successfully updated."
			redirect_to article_path(@article)
		else
			render 'edit'
		end
	end

	def destroy
		@article.destroy
		flash[:danger] = "Article was successfully deleted"
		redirect_to articles_path
	end

	private

	def set_article
		@article = Article.find(params[:id])
	end

	def article_params
		params.require(:article).permit(:title, :description)
	end

	def require_same_user
		if current_user != @article.user
			flash[:danger] = "You can only edit or delete your own article."
			redirect_to root_path
		end
	end

end