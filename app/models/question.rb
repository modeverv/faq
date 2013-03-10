class Question < ActiveRecord::Base
  attr_accessible :answer, :category_id, :isanswerd, :question, :viewcount

  # categoryに属する
  belongs_to :category

  # オーダー
  default_scope order('viewcount DESC')  

  # paginationの表示件数
  self.per_page = 3
  
  # カテゴリー配下のトップ２０のviewcountを返却する  
  # 表示の閾値として使う
  def self.categoryTop20ViewCount(category_id=nil)
    Question.categoryTopXViewCount(category_id,2)
  end
  
  # カテゴリー配下のトップ??のviewcountを返却する  
  # 表示の閾値として使う
  def self.categoryTopXViewCount(category_id,x)
    if category_id
      viewcount = Question.where(:category_id => category_id).order("viewcount desc").limit(x).last.viewcount
    else
      begin
        viewcount = Question.order("viewcount desc").limit(x).last.viewcount
      rescue
        viewcount = 0
      end
    end
    viewcount
  end
  
end
