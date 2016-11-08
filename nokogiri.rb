require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))

#search = doc.css('li.components-item')
#puts search

list = doc.css('li.components-item')

list.each do |item|
    puts item.inner_html
end