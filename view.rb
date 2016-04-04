class View

  def self.prompt_user
    print "enter something (list, add, delete, exit or whatever you want): "
  end

  def self.display_exit_message
    puts "goodbye!"
  end

  def self.output_info(info)
    puts "You entered: #{info}"
  end

  def self.prompt_for_add
    print "enter task to add: "
  end

  def self.display_list(list)
    list.display_tasks
  end

  def self.prompt_for_delete
    print "Enter number of item to delete: "
  end

  def self.confirm_delete(deleted_item)
    if deleted_item == nil
      puts "No item deleted"
    else
      puts "Item deleted: #{deleted_item}"
    end
  end
end