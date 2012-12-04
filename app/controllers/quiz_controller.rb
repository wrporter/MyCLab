class QuizController < ApplicationController
	def quiz_list
		@quizzes = Quiz.find(:all)
	end
	def show_quiz 
		@quiz = Quiz.find(params[:id])
		@questions = Question.find(:all, :conditions => ["quiz_id = ?", @quiz.id])
		#@questions = Question.find(:all)
	end
	def new_quiz 
		@quiz = Quiz.new

	end
	def create_quiz
		@quiz = Quiz.new(params[:quiz])
		if @quiz.save
			redirect_to :action => 'quiz_list'
		else 
			render :action => 'new_quiz'
		end	
	end
	def edit_quiz
		@quiz = Quiz.find(params[:id])
	end
	def update_quiz 
		@quiz.find(params[:id])
		if @quiz.update_attributes(params[:quiz])
			redirect_to :action => 'show_quiz', :id => @quiz 
		else 
			render :action => 'edit_quiz'
		end	
	end
	def delete_quiz
		Quiz.find(params[:id]).destroy
		redirect_to :action => 'quiz_list'
	end
end
