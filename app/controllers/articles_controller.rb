class ArticlesController < ApplicationController
	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		@article.save
		redirect_to articles_show(@article)
	end

	private

	def article_params
		puts 'hohohaha'
		params.require(:article).permit(:title, :description)
	end



end