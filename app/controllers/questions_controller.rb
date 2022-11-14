class QuestionsController < ApplicationController
  def ask; end

  def answer
    @response = 'I don\'t care, get dressed and go to work!'
    @response = 'Great!' if params['question'] == 'I am going to work'
    @response = 'Silly question, get dressed and go to work!.' if params['question'].include?('?')
  end
end
