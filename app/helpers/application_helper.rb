module ApplicationHelper

  def gsubSoundCloud(input)
    return input.gsub(" ", "-")
  end

  def placeholder_social(elem)
    placeholder = ""
    if elem.name == "whatsapp" || elem == "text"
      return "Your phone number"
    elsif elem.kind == "username"
      return "Your username"
    elsif elem.name == "website" || elem.name == "lien"
      return "Link of your website"
    else
      return "Link of your profile"
    end
  end
end
