class Note
  attr_reader :content, :tag
  def initialize(content)
    @content = content
    @tag = nil
  end
  def add_tag(tag)
    @tag = tag
  end
end