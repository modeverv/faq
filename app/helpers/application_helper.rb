module ApplicationHelper

  def wrap(str,str_length=20)
    begin
      str_a = str.split(//)
      result = str_a.first(str_length).inject("") do |result, char|
        result += char
      end
      if(str_a.size > str_length)
        result += "..."
      else
        result
      end
      str = result
    rescue
      #文字列がnilの場合は
    end
    str
  end

  def markdown(text)
    options = [
               :autolink,
               :gh_blockcode,
               :hard_wrap,
               :no_intraemphasis,
               :fenced_code,
               :filter_html
              ]
    Redcarpet.new(text, *options).to_html.html_safe if !text.nil?
  end  
end
