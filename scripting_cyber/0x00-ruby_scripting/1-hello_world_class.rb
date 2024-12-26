#!/usr/bin/env ruby

# Crear class

class HelloWorld
  def initialize(message = "World")
    @message = message
  end

  def print_hello
    puts "Hello, #{@message}!"
  end
end
