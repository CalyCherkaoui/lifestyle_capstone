module ApplicationHelper

  def flash_class_helper(my_type)
    case my_type.to_sym
    when :notice then "success"
    when :success then "success"
    when :error then "danger"
    when :alert then "danger"
    when :warning then "warning"
    end
  end

  def flash_prefix_helper(my_type)
    case my_type.to_sym
    when :notice then "Notice!"
    when :success then "Success!"
    when :error then "Error!"
    when :alert then "Alert!"
    when :warning then "Warning!"
    end 
  end

  
  def logged_in_author?(article)
    logged_in? && (current_user.id == article.author.id)
  end

  def same_logged_in_user?(user)
    logged_in? && (current_user.id == user.id)
  end
end
