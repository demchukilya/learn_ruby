class Friend
  def greeting who = nil
    "Hello#{ if who; ", "+who end }!"
  end
end