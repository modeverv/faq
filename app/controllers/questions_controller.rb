class QuestionsController < ApplicationController
  before_filter :must_be_signed_in

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @questions }
    end
  end

  # GET /questions/1
  # GET /questions/1.json
  # 表示のたびにviewcountをインクリメント
  def show
    @question = Question.find(params[:id])
    @categories = Category.all
    
    if @question
      @question.viewcount = 0 if !@question.viewcount
      @question.update_attributes( :viewcount => @question.viewcount + 1  )
    end
    
    @comment = @question.comments.build

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @question }
    end
  end

  # GET /questions/new
  # GET /questions/new.json
  def new
    @question = Question.new
    @question.category_id = params[:category_id] if params[:category_id]
  

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @question }
    end
  end

  # GET /questions/question
  # GET /questions/question.json
  def q
    @question = Question.new
    @question.category_id = params[:category_id] if params[:category_id]
    @question.isanswerd = 0

    respond_to do |format|
      format.html { render :new }# new.html.erb
      format.json { render json: @question }
    end
  end

  # GET /questions/answer
  # GET /questions/answer.json
  def answer
    @question = Question.find(params[:question_id])
    @question.isanswerd = 1
    @answer = true

    respond_to do |format|
      format.html { render :new }# new.html.erb# new.html.erb
      format.json { render json: @question }
    end
  end

  
  # GET /questions/1/edit
  def edit
    @question = Question.find(params[:id])
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(params[:question])
    
    # 答えられたかどうかでフラグ立てておく
    @question.isanswerd = @question.answer.blank? ? 0 : 1
    @question.viewcount = 0

    respond_to do |format|
      if @question.save
#        format.html { redirect_to @question, notice: 'Question was successfully created.' }
        format.html { redirect_to category_path(@question.category), notice: 'Question was successfully created.' }
        format.json { render json: @question, status: :created, location: @question }
      else
        format.html { render action: "new" }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /questions/1
  # PUT /questions/1.json
  def update
    @question = Question.find(params[:id])

    # 答えられたかどうかでフラグ立てておく
    @question.isanswerd = @question.answer.blank? ? 0 : 1

    respond_to do |format|
      if @question.update_attributes(params[:question])
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    respond_to do |format|
      format.html { redirect_to questions_url }
      format.json { head :no_content }
    end
  end
end
