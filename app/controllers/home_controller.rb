class HomeController < ApplicationController
  before_filter :must_be_signed_in
  def index
    @categories = Category.all
    @questions = Question.all
    @top20  = Question.categoryTop20ViewCount
  end
end
