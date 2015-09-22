class Friend
  # TODO: your code goes here!
  def greeting(who = nil)
      if(who != nil)
          return "Hello, #{who}!"
      end
      "Hello!"
  end
end
