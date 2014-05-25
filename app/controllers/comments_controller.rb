class CommentsController < ApplicationController


  def new
  	@comment = Comment.new
  end

  def create
  	@event = Event.find(params[:event_id])

    @student = Student.find(current_student.id)

    @comment = Comment.new(comment_params)
    @comment.student_id = @student.id

    @student.comments << @comment
    @event.comments << @comment

    redirect_to event_path(@event)
  end

  def edit
  	@comment = Comment.find(params[:id])
  end

  def update
  	@comment = Comment.find(params[:id])
  	@event = Event.find(params[:event_id])
  	@event =  Event.find(@comment.event_id)
  	if (@comment.student_id == current_student.id)
  		@comment.update(comment_params)
  	end
  	redirect_to event_path(@event)

  end

  def destroy
  	@comment = Comment.find(params[:id])
  	@event =  Event.find(@comment.event_id)
  	@club = Club.find(@event.club_id)
  	if (student_signed_in?)
	    if ( @comment.student_id == current_student.id )

		  	@comment.destroy
			redirect_to event_path(@event)
		end
	elsif (club_signed_in?)
	    if ( @club.id == current_club.id )

		  	@comment.destroy
			redirect_to event_path(@event)
		end

	else
      	respond_to do |format|
        	format.html { redirect_to @event, notice: 'You do not have permission to do that.' }     
        	format.json { render :show, status: :ok, location: @event }
	  	end

	end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:content, :event_id)
    end



end
