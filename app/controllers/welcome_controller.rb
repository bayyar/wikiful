class WelcomeController < ApplicationController
  def index
  	@recentart = Article.all.order(updated_at: :desc).limit(5)
  end
end
