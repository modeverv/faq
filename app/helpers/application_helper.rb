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

  
end
