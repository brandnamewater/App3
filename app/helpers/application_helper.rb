module ApplicationHelper

  #nav name white if active
  #takes arguments: 'link', 'what page on', 'url', 'change font color'
  def active_link_to(nav_link, cntrl, action, url, color)
    if controller_name == cntrl && action_name == action
      return link_to nav_link, url, id: color
    else
      return link_to nav_link, url, class: color
    end
  end





end
