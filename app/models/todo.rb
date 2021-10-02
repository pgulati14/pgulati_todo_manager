class Todo < ActiveRecord::Base
  def to_pleasant_string
    "#{id}. #{text}"
  end
end
