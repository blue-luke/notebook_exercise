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

  def find_notes_by_tag(tag)
    notes_with_tag = @notes.select { |x| x.tag == tag }
    notes_with_tag.map { |x| x.content }.join("; ")
  end
end