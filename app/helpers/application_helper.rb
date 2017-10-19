module ApplicationHelper
  def sortable(column)
    direction = (sort_direction == 'asc') ? 'desc' : 'asc'
    link_to column, {:sort => column, :direction => direction}
  end
end
