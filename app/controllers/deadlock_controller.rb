class DeadlockController < ApplicationController
  def transaction
    1000.times do |i|
      puts "creating record #{i}"
      Post.create!(title: 'deadlock')
      sleep 0.1
    end

    head :ok
  end

  def clear
    1000.times do |i|
      puts "clearing all connections #{i}"
      ActiveRecord::Base.clear_all_connections!
      sleep 0.1
    end

    head :ok
  end
end
