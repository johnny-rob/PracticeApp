module ApplicationHelper

  def login_helper style = ''
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path, class: style)+
      " ".html_safe +
      (link_to "Login", new_user_session_path, class: style)
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end
  end


  ## The next two def sections work together to create the nav items
    def nav_items
      [
        {
          url: root_path,
          title: 'Home'
        },
        {
          url: blogs_path,
          title: 'About Me'
        },
      ]
    end

    def nav_helper style, tag_type
      nav_links = ''
      nav_items.each do |item|
        nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
      end

      nav_links.html_safe
    end

end
