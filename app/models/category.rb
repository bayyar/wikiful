class Category < ActiveRecord::Base
	has_many :article_categories
	has_many :categories, through: :article_categories
	validates :category_name, presence: true
	validates :category_name, uniqueness: true
end
