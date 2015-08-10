module ApplicationHelper

  WEEK = {"1" => "星期一", "2" => "星期二", "3" => "星期三", "4" => "星期四", "5" => "星期五", "6" => "星期六", "7" => "星期七"}
  MASONRY = ['goods-size-378-756', 
              'goods-size-378-378', 
              'goods-size-756-378', 
              'goods-size-378-756', 
              'goods-size-378-378',
              'goods-size-756-378',
              'goods-size-378-378',
              'goods-size-378-378'
            ]

  def full_title(title)
    base_title = "朴客"
    if title.present?
      "#{base_title} | #{title}"
    else
      base_title
    end
  end

  def time_day
    time = Time.now.strftime("%Y年%m月%d日")
    week = WEEK["#{Time.now.wday}"]
    str = "#{time}  #{week}"
  end

  def masonry(num)
    MASONRY[num]
  end

end
