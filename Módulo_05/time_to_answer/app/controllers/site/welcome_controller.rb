class Site::WelcomeController < SiteController
  def index
    @questions = Question.all.includes(:answers).page(params[:page]).per(5)
  end
end
