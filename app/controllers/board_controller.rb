class BoardController < ApplicationController
  def show
    @backlog = Story.find :all, :conditions => 'state IS NULL'
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @stories }
    end
  end

end
