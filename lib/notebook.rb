class Notebook
  def initialize
    @notes = []
  end
  def add_note(note)
    @notes.append(note)
  end
  def list_notes
    @notes.map { |x| x.content }.join("; ")
  end
end