class PagesController < ApplicationController
  def home
    @word = strong_params[:word]
    if @word
      data = ApplicationHelper.call_datamuse(@word)
      @result = data[0] ? data[0]["word"] : nil
    end
    if !@result
      @result = "Word not found"
    end
  end

  private

  def strong_params
    params.permit(:word)
  end
end
