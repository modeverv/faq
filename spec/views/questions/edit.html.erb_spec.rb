require 'spec_helper'

describe "questions/edit" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :question => "MyString",
      :answer => "MyString",
      :viewcount => 1,
      :category_id => 1,
      :isanswerd => 1
    ))
  end

  it "renders the edit question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => questions_path(@question), :method => "post" do
      assert_select "input#question_question", :name => "question[question]"
      assert_select "input#question_answer", :name => "question[answer]"
      assert_select "input#question_viewcount", :name => "question[viewcount]"
      assert_select "input#question_category_id", :name => "question[category_id]"
      assert_select "input#question_isanswerd", :name => "question[isanswerd]"
    end
  end
end
