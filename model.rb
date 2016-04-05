require_relative 'task.rb'

class List

  def initialize
    @tasks = []
  end

  def add_task(text)
    @tasks << Task.new(text)
  end

  def remove_item(item_index)
    return if @tasks.empty?
    @tasks.delete_at(item_index)
  end
end