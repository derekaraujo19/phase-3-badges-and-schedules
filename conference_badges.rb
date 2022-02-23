# Write your code here.
require 'pry'

def badge_maker name
  "Hello, my name is #{name}."
end

def batch_badge_creator names
  names.map {|name| badge_maker(name) }
end

def assign_rooms speakers
  speakers.each_with_index.map do |speaker, i|
    "Hello, #{speaker}! You'll be assigned to room #{i + 1}!"
  end
end

def printer attendees
  batch_badge_creator(attendees).each { |badge| puts badge }
  assign_rooms(attendees).each { |assignment| puts assignment }
end
# printer(["Arel", "Carol"])