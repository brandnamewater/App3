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


def your_country
    @my_country = options_for_select(['Country1', 'Country2', 'Country3', 'Country4'])
   #return
    #my_country
  end

#@your_country = options_for_select(['Country1', 'Country2', 'Country3', 'Country4'])

#def your_country
  #  my_country = ["Country1", "Country2", "Country3", "Country4"]
  # return
  #  my_country
#  end

end
