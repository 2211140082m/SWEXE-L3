class TweetsController < ApplicationController
  def index
      @tweets = Tweet.all
  end
  def new
    @tweet = Tweet.new  #formヘルパーのデータの入れ物になる
  end
  def create
    @tweet = Tweet.new(
    tdate: Time.current,
    message: params[:tweet][:message],
    )
    if @tweet.save
      flash[:notice] = '１レコード追加しました'
      redirect_to '/' #=> 一覧ページにリダイレクトする
    else
      render 'new', status: :unprocessable_entity
    end
  end
  def edit
    @tweet = Tweet.find(params[:id])
  end
  def update
    tweet = Tweet.find(params[:id])
    tweet.update(message: params[:tweet][:message])
    redirect_to '/'
  end
  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to '/'
  end
  def show
    @tweet = Tweet.find(params[:id])
  end
end
