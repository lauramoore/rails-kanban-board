class BoardController < ApplicationController
  def show
    @backlog = Story.find :all, :conditions => 'state = "B"'
    @priority = Story.find :all,  :conditions => 'state = "P"' 
    @active = Story.find :all,  :conditions => 'state = "A"' 
    @delegated = Story.find :all,  :conditions => 'state = "D"' 
    @complete = Story.find :all,  :conditions => 'state = "C"'
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @stories }
    end
  end
  
  def update

  end

end
