class PagesController < ApplicationController
  def home
    @word = strong_params[:word]
    if @word
      @word_exists = Api::Datamuse.search(@word)
    end
    @result = @word_exists ? "'#{@word}' found!" : "'#{@word}' not found" 
  end

  private

  def strong_params
    params.permit(:word)
  end
end
