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
end