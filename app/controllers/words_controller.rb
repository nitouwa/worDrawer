class WordsController < ApplicationController
  def index
    @words = Word.order("updated_at DESC").page(params[:page]).per(5)
  end

  def show
    @word = Word.find(params[:id])
  end

  def new
    @title = "単語を登録する｜"
    @word  = Word.new
  end

  def create
    @title = "単語の登録が完了しました｜"
    Word.create(word_params)
    # redirect_to action: :show
  end

  def edit
    @title = "単語を編集する｜"
  end

  def update
  end

  def destroy
  end

  def word_params
    params.require(:word).permit(:word, :text, :category, :status)
  end
end
