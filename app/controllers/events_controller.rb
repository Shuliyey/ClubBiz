class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index 
    @expand_filter = FALSE
    if (!params[:date_from].nil?) 
      @expand_filter = TRUE
      if (params[:date_from] != "")
        @date_from = params[:date_from].to_datetime 
      end
    end
    if (!params[:date_to].nil?)
      @expand_filter = TRUE
      if (params[:date_to] != "")
        @date_to = params[:date_to].to_datetime
      end
    end
    @date_from = Time.zone.now.beginning_of_day if params[:date_from].nil? || params[:date_from] == ""
    @date_to = @date_from + 7.day if params[:date_to].nil? || params[:date_to] == ""
    date_range_hash = { 
      "day" => 1.day.from_now.beginning_of_day,
      "week" => 7.day.from_now.beginning_of_day,
      "month" => 1.month.from_now.beginning_of_day,
      "year" => 1.year.from_now.beginning_of_day
    }
    if (params.has_key?(:date_range))
      @date_from = Time.zone.now.beginning_of_day
      @date_to = date_range_hash[params[:date_range]]
      @expand_filter = TRUE
    end
    @events = Event.where(:when => (@date_from..@date_to))
    @date_from = @date_from.strftime("%Y-%m-%d %H:%M:%S")
    @date_to = @date_to.strftime("%Y-%m-%d %H:%M:%S")
  end

  # GET /events/1
  # GET /events/1.json  
  def show
    @comments = Comment.where(event_id: @event.id)
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    @event.club_id = current_club.id

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if (@event.club_id == current_club.id)
        if @event.update(event_params)
          format.html { redirect_to @event, notice: 'Event was successfully updated.' }
          format.json { render :show, status: :ok, location: @event }
        else
          format.html { render :edit }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
      else
        format.html { redirect_to @event, notice: 'You do not have permission to do that.' }     
        format.json { render :show, status: :ok, location: @event }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    if (@event.club_id == current_club.id)
      @event.destroy
      respond_to do |format|
        format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to @event, notice: 'You do not have permission to do that.' }     
        format.json { render :show, status: :ok, location: @event }
      end
    end
  end
  
  # Search for clubs, events and students search
  def search
    @query=params[:q]
    @clubs = []
    @events = []
    @students = []
    if (! @query.nil? && @query.length > 0)
      query_array = @query.split
      @query = query_array.join("")
      case query_array[0]
      when "club_id"
        club_id = query_array[1]
        if (club_id.to_i.to_s == club_id)
          redirect_to :controller => "clubs", :action => "show", :id => club_id
          return
        end
      when "student_id"
        student_id = query_array[1]
        if (student_id.to_i.to_s == student_id)
        end
      when "event_id"
        event_id = query_array[1]
        if (event_id.to_i.to_s == event_id)
          redirect_to :controller => "events", :action => "show", :id => event_id
          return
        end
      when "events"
        redirect_to :controller => "events"
        return
      when "clubs"
        redirect_to :controller => "clubs"
      else
          regex = ("%" + query_array.join('%') + "%").downcase
          @events = Event.where('lower(name) like  ? or lower(description) like ? or lower(location) like ?', regex, regex, regex).order('"when", created_at')
          @clubs = Club.where('lower(name) like ? or lower(description) like ? or lower(email) like ? or lower(website) like ?', regex, regex, regex, regex)
      end
    end
  end
  
  # Reserve a ticket for an event
  def reserve
  
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :description, :when, :location, :maxTickets, :ticketPrice, :memberDiscount)
    end
end
