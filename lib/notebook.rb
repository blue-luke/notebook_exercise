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
  def add_tag(note_index, tag)
    @notes[note_index].add_tag(tag)
  end
end