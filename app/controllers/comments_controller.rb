class CommentsController < ApplicationController
    def create
        # each request for a comment has to keep track of the article to which the comment is attached
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        redirect_to article_path(@article)
    end

    private
        def comment_params
            params.require(:comment).permit(:commenter, :body)
        end
end
