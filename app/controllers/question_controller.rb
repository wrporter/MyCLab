class QuestionController < ApplicationController
    def new_question
    	@question = Question.new
		@answer = Answer.new
		@wrong_answer1 = Answer.new
		@wrong_answer2 = Answer.new
		@wrong_answer3 = Answer.new
		@quiz_id = params[:id]
    end
    def create_question
		@quiz_id = params[:id]
		@question = Question.new(params[:question])
		@question.update_attribute(:quiz_id, @quiz_id )
		if @question.save
	    	@answer = Answer.new(params[:answer])
	    	@answer.update_attribute(:question_id, @question.id) 
	    	@answer.save

	 		@wrong_answer1 = Answer.new(params[:wrong_answer1])
	    	@wrong_answer1.update_attribute(:question_id, @question.id)
		    @wrong_answer1.save

	 		@wrong_answer2 = Answer.new(params[:wrong_answer2])
	    	@wrong_answer2.update_attribute(:question_id, @question.id)
		    @wrong_answer2.save
			
			@wrong_answer3 = Answer.new(params[:wrong_answer3])
	    	@wrong_answer3.update_attribute(:question_id, @question.id)	
		    @wrong_answer3.save

			#@question.correct_answer_id = @answer.id
	    	@question.update_attribute(:correct_answer_id, @answer.id)
	    	redirect_to :controller => 'quiz', :action => 'show_quiz', :id => @question.quiz_id
		else 
	    	render :action => 'new_question'
		end    
    end
	def edit_question
		@question= Question.find(params[:id])
		@quiz_id = params[:quiz_id]
		@answer = Answer.find(@question.id)
		@wrong_answer1 = Answer.find(@question.id)
		@wrong_answer2 = Answer.find(@question.id)
		@wrong_answer3 = Answer.find(@question.id)
	end
	def update_question
		@question = Question.find(params[:id])
		@answer = Answer.find(@question.id)
		@wrong_answer1 = Answer.find(@question.id)
		@wrong_answer2 = Answer.find(@question.id)
		@wrong_answer3 = Answer.find(@question.id)

		if @question.update_attributes(params[:question])
			@answer.update_attributes(params[:answer])
			@wrong_answer1.update_attributes(params[:wrong_answer1])
			@wrong_answer2.update_attributes(params[:wrong_answer2])
			@wrong_answer3.update_attributes(params[:wrong_answer3])
	    	redirect_to :controller => 'quiz', :action => 'show_quiz', :id => @question.quiz_id
		else
	    	render :action => 'edit_question'		
		end
	end
	def delete_question
		Question.find(params[:id]).destroy
		redirect_to :controller => 'quiz', :action => 'show_quiz', :id => params[:quiz_id]
	end
end
