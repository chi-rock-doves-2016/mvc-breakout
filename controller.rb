require_relative 'view.rb'
require_relative 'model.rb'

class Controller

  def initialize
    @list = List.new
  end

  def run!
    while true
      View.prompt_user
      input = gets.chomp!

      if(input == 'exit')
        exit_program
      elsif(input == 'add')
        add_item
      elsif(input == 'delete')
        delete_item
      elsif(input == 'list')
        list_all
      else
        echo_output(input)
      end
    end
  end

  private
  attr_reader :list

  def exit_program
    View.display_exit_message
    abort
  end

  def add_item
    View.prompt_for_add
    input = gets.chomp!
    list.add_task(input)
    list_all
  end

  def echo_output(input)
    View.output_info(input)
  end

  def list_all
    View.display_list(list)
  end

  def delete_item
    View.prompt_for_delete
    input = gets.chomp!.to_i
    View.confirm_delete(list.remove_item(input - 1))
  end
end