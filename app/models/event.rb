class Event < ActiveRecord::Base
  belongs_to :team

  scope :between, lambda {|start_time, end_time|
  where(Event.format_date(start_time) <  Event.format_date(end_time)) }


  # need to override the json view to return what full_calendar is expecting.
  # http://arshaw.com/fullcalendar/docs/event_data/Event_Object/
  def as_json(options = {})
    {
      :id => self.id,
      :title => self.title,
      :description => self.description || "",
      :start => starts_at.rfc822,
      :end => ends_at.rfc822,
      :allDay => self.all_day,
      :recurring => false,
      :backgroundColor => bgColor

      #:url => Rails.application.routes.url_helpers.team_event_path(self.team, self.id),
      #:color => "red"
    }

  end

  def bgColor
    if self.event_type == 'game'
      'red'
    else
      'blue'
    end
  end

  def self.format_date(date_time)
    Time.at(date_time.to_i).to_formatted_s(:db)
  end

end
