class HomeController < ApplicationController
  def index
    @categories = Category.all
    @questions = Question.all
    @top20  = Question.categoryTop20ViewCount
  end
end
