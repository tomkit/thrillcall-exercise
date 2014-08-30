class QuerysController < ApplicationController
  layout "querys"
  
  def index
    #@query = Query.new
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml }
    end
  end
  
  def create
    @query = Query.new(params[:name1], params[:name2])
    
    count = 0
    found = false
    actorsQueue = Queue.new
    actorsQueue << params[:name1]
    
    while actorsQueue.size() != 0 && found != true
      curActor = actorsQueue.pop
      
      @titles = Movie.find(:all, :conditions => ["actor = ?", curActor], :select => "title")
      @titles.each do |title|
        puts "title :" + title.title
        @actors = Movie.find(:all, :conditions => ["title = ?", title.title], :select => "actor")
        @actors.each do |actor|
          puts "actor: " + actor.actor
          if actor.actor == params[:name2]
            @query.degree = count
            found = true
            break
          elsif actor.actor != curActor
            actorsQueue << actor.actor            
          end          
        end
        if(found)
          break
        end
      end 
      
      count += 1
    end
   
    respond_to do |format|
      format.html { render :action => 'show' }
      format.xml  { render :xml => @query }
    end
  end
  
  def show
    #@query = Query.all
    
    
    respond_to do |format|
      
      format.html
      format.xml { render :xml => @movies }
    end
  end
  
end