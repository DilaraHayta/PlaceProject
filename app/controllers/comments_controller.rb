class CommentsController < ApplicationController
  before_action :authenticate_customer!
  before_action :set_place

  def create
    @comment = @place.comments.new(comment_params)

    @comment.customer= current_customer
       if @comment.save
               redirect_to @place, notice: "Comment was saved"
              else
                       redirect_to @place, notice: "Comment couldn't saved"
                     end
  end

  def destroy
  end


  private

    def comment_params
        params.require(:comment).permit(:body)
      end

    def set_place
        @place= Place.find(params[:place_id])
     end
end
