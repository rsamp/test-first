class XmlDocument
  # TODO: your code goes here!
  def hello(attribute = nil)
      return "<hello/>" if attribute == nil
      attribute.each { |k,v| return "<hello #{k}=\"#{v}\"/>" } if attribute.class == Hash
      return "<hello>#{yield}</hello>" if attribute.class = Proc
  end
  
  def send(tag_name)
      return "<#{tag_name}/>"
  end
  
  def method_missing(m)
      return "#{m}"
  end
  
end
