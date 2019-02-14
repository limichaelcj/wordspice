class PagesController < ApplicationController
  def home
    @word = strong_params[:word]
    if @word
      data = Api::Datamuse.search(@word)
      if data[0]
        @result = data[0]["word"] == @word ? data[0]["word"] : nil
      end
    end
    if !@result
      @result = "Word not found in dictionary"
    end
  end

  private

  def strong_params
    params.permit(:word)
  end
end
