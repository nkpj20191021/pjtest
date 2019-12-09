class TopicsController < ApplicationController
    def index
        @topics = Topic.all
    end
    def show
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
        params.require(:topic).permit(:user_id, :category_id, :topic, :explanation)
    end
end
