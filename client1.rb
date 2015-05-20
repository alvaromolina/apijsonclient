require 'rubygems'
require 'mechanize'

user=""
banda=""


data = {"book[name]" => "Harry Potter", "book[description]" => "Harry Potter"}


json = Mechanize.new.post('http://localhost:3000/books.json', data).body
result = JSON.parse json
puts result