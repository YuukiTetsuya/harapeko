module ApplicationHelper
  
  # ページごとにタイトルを分けて返す
  def full_title(page_title = '')
    base_title = "HARAPEKO。"
    if page_title.empty?
      "老舗食堂専用レビューサイト" +  " | " + base_title
    else
      page_title + " | " + base_title
    end
  end
end
