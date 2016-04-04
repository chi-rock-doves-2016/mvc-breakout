require_relative 'task.rb'

class List

  def initialize
    @tasks = []
  end

  def add_task(text)
    @tasks << Task.new(text)
  end

  def display_tasks
    if @tasks.empty?
      puts "No tasks"
    else
      @tasks.each_with_index do |task, index|
        puts "#{index+1}: #{task}"
      end
    end
  end

  def remove_item(item_index)
    return if @tasks.empty?
    @tasks.delete_at(item_index)
  end
end