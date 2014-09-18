#!/usr/bin/env ruby
require 'nokogiri'
require 'open-uri'

url = 'https://www.facebook.com/DiefetteKuh'
#doc = Nokogiri::HTML(open(url))
doc = Nokogiri::HTML(open(url) {|f| f.read})

# for some very weird reasons open gives us the interesting content in
# comments which have to be parsed again it seems
comments = []
doc.root.traverse do |elem|
  if elem.content.include? 'BURGER'
    comments << Nokogiri::HTML::DocumentFragment.parse(elem.content)
  end
end

puts comments[0].at_css('div[role=article] .userContent').content
puts comments[0].at_css('div[role=article] .scaledImage img')['src']
