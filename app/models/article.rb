class Article < ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  end

  def create
    article = Article.new(title: "Hello Rails", body: "I am on Rails!")
    if article.save
      # redirect_to article_path(article), notice: "Article was successfully created"
    else
      # render :new
    end
  end
