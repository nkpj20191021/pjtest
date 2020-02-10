class TopicsController < ApplicationController
    def show
        @category = Category.find(params[:category_id])
        @topic = Topic.find(params[:id])        
        @topic_post = Post.new
        end
    def new
    end
    def create
        category = Category.find(params[:category_id])
        topic = current_user.topics.new(category_topic_params)
        topic.category_id = category.id
        topic.save
        redirect_to category_path(category)
    end
    def edit
    end
    def update
    end
    def destory
    end

    private
    def category_topic_params
        params.require(:topic).permit(:user_id, :category_id, :topic, :explanation, :topic_image)
    end
end
