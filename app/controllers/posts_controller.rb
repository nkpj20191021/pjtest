class PostsController < ApplicationController
    def new
    end
    def create
        topic = Topic.find(params[:topic_id])
        post = current_user.posts.new(topic_post_params)
        post.topic_id = topic.id
        post.save
        redirect_to category_topic_path(topic.category_id, topic)
    end
    def edit
    end
    def update
    end
    def destroy
        post = Post.find(params[:id])
        if post.user_id == current_user.id
            post.destroy
            redirect_to category_topic_path(post.topic.category_id, post.topic_id)
        else
            redirect_to category_topic_path(post.topic.category_id, post.topic_id)
        end
    end

    private
    def topic_post_params
        params.require(:post).permit(:user_id, :topic_id, :content)
    end
end
