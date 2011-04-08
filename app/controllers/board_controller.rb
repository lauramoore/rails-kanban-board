class BoardController < ApplicationController
  def show
    @backlog = Story.find_by_state("P")
    @priority = Story.order("column_ord").find_by_state("P") 
    @active = Story.find_by_state("A")
    @delegated = Story.find_by_state("D") 
    @complete = Story.find_by_state("C")
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @stories }
    end
  end
  def drop
  	    story = Story.find(params[:id])
  	    story.state = params[:state]
  	    story.column_ord = params[:column_ord]
    respond_to do |format|
      if story.save()
        format.xml  { head :ok }
      else
        format.xml  { render :xml => @story.errors, :status => :unprocessable_entity }
      end
    end
  end
end
