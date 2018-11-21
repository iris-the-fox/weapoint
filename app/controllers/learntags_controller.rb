class LearntagsController < ApplicationController
  def show
    @learntag = Learntag.find_by(name: params[:id])
    @learnings = @learntag.learnings
  end
end