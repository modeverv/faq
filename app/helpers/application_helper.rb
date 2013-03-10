module ApplicationHelper

  def wrap(str,str_length=20)
    str_a = str.split(//)
    result = str_a.first(str_length).inject("") do |result, char|
      result += char
    end
    if(str_a.size > str_length)
      result + "..."
    else
      result
    end
    #    sanitize(raw(content.split.map{|s|wrap_long_string(s)}.join(' ')))
  end

  
end
