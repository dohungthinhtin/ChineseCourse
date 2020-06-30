class LibraryQuestionsController < ApplicationController
  def index
    @pagy, @library_questions = pagy(LibraryQuestion.all.order(content: :asc))
    respond_to do |format|
      format.html
      format.json {
        render json: {
          entries: render_to_string(partial: 'library_questions', formats: [:html]),
          pagination: view_context.pagy_nav(@pagy)}
      }
    end
  end

  def show
    @library_question = LibraryQuestion.find(params[:id])
  end

  def new
    @library_question = LibraryQuestion.new
    4.times { @library_question.answers.build }
  end

  def search
    @library_questions = LibraryQuestion.ransack(content_cont: params[:q]).result(distinct: true)
    respond_to do |format|
      format.html {}
      format.json { @library_questions = @library_questions.limit(5) }
    end
  end

  def load
    @library_question = LibraryQuestion.find(params[:id])
  end

  def create
    @library_question = LibraryQuestion.new(library_question_params)
    if @library_question.save
      redirect_to @library_question, notice: "Successfully created question."
    else
      render :new
    end
  end

  def edit
    @library_question = LibraryQuestion.find(params[:id])
  end

  def update
    @library_question = LibraryQuestion.find(params[:id])
    if @library_question.update_attributes(library_question_params)
      redirect_to @library_question, notice: "Successfully updated question."
    else
      render :edit
    end
  end

  def destroy
    @library_question = LibraryQuestion.find(params[:id])
    @library_question.destroy
    redirect_to library_questions_url, notice: "Successfully deleted question."
  end

  private

  def library_question_params
    params.require(:library_question).permit(:id, :content, :_destroy, answers_attributes: [:id, :content, :correct, :question_id, :created_at, :updated_at, :_destroy] )
  end

end
