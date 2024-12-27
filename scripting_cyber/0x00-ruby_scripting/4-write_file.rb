#!/usr/bin/env ruby

require 'json'

def merge_json_files(file1_path, file2_path)
    # Read the files
    file1 = JSON.parse(File.read(file1_path))
    file2 = JSON.parse(File.read(file2_path))

    # Merge the files
    merged_file = file1 + file2

    # Write the merged file
    File.write(file2_path, JSON.pretty_generate(merged_file))
end