class TweetsController < ApplicationController
    
    def index
      @tweets = Tweet.order("created_at DESC")
    end
    
    def new
    end
    
    def create
      Tweet.create(tweet_params)
    end
    
    private #tweetsコントローラ以外のファイルからメソッドを呼び出すことを防ぐ
    def tweet_params
      params.permit(:name, :title, :image)
    end
    
end