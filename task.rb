class Task
  def initialize(text)
    @text = text
  end

  def to_s
    "#{text}"
  end

  private
  attr_reader :text
end