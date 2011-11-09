module ApplicationHelper
  
  def time_display
    @time = Time.now
    @time.strftime("%A %H:%M %P")
  end
end
