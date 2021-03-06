class FavoritesController < ApplicationController
  def create
    favorite = Favorite.new
    favorite.user_id = current_user.id
    favorite.topic_id = params[:topic_id]
    if favorite.save
      redirect_to topics_path, notice: 'お気に入りに登録しました'
    else
      redirect_to topics_path, notice: 'お気に入りに登録に失敗しました'
    end
  end

  def index
    @favorite_topics = current_user.favorite_topics

    @search = Topic.ransack(params[:q])
    @result = @search.result
  end


end
