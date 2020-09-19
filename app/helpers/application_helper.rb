module ApplicationHelper

  def gsubSoundCloud(input)
    return input.gsub(" ", "-")
  end

  def network_direct_true?(networks)
    networks.each do |n|
      return true if n.direct == true
    end
    return false
  end
end
