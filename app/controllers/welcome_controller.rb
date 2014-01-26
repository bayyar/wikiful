class WelcomeController < ApplicationController
  layout "welcome_layout", only: :index

  def index
  	@recentart = Article.all.order(updated_at: :desc).limit(5)
  end
end
