module ApplicationHelper
    
    #ページ固有のタイトル有無でタイトルの文字列を調整して返す。
    def full_title(page_title)
        base_title = "Ruby on Rails Tutorial Sample App"
        if page_title.empty?
            base_title
        else
            "#{page_title} | #{base_title}"
        end
    end
end
