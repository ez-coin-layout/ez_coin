module ApplicationHelper

  def local_time(time)
    time.in_time_zone('Tokyo').strftime('%Y年%m月%d日 %H:%M:%S')
  end
end
