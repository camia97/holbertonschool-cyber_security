#!/usr/bin/env ruby

require "json"

def count_user_ids(path)
    # Read the json file
  file_content = File.read(path)
  data = JSON.parse(file_content)

  # Count the user ids
  user_id_counts = Hash.new(0)
  data.each do |user|
    user_id_counts[user["userId"]] += 1
  end

  # Print the counts
  user_id_counts.sort.each do |user_id, count|
    puts "#{user_id}: #{count}"
  end
end
