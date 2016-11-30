class Friend

  def greeting(name = true)
    if name == true
      "Hello!"
    else
      "Hello, #{name}!"
    end
  end

end
