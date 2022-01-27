require 'notebook'

describe 'Notebook' do
  it 'stores and lets you read notes' do
    note1 = double("Note", :content => "Host meeting")
    note2 = double("Note", :content => "Send minutes")

    nb = Notebook.new
    nb.add_note(note1)
    nb.add_note(note2)

    expect(nb.list_notes). to eq "Host meeting; Send minutes" 
  end
  it 'stores and lets you read tags' do
    note1 = double("Note", :content => "Host meeting", :add_tag => "Important")

    nb = Notebook.new
    nb.add_note(note1)
    nb.add_tag(0, "Important")
    
    expect(note1).to have_received(:add_tag).with("Important") 
  end
  it 'lets you search for notes by tag' do
    note1 = double("Note", :content => "Host meeting", :tag => "Important")
    note2 = double("Note", :content => "Send minutes", :tag => "Unimportant")

    nb = Notebook.new
    nb.add_note(note1)
    nb.add_note(note2)
        
    expect(nb.find_notes_by_tag("Important")).to eq "Host meeting"
  end
end