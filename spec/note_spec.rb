require 'note'

describe 'note' do
  it 'stores text' do
    n = Note.new("Host meeting")
    expect(n.content).to eq "Host meeting"
  end
  it 'stores a tag' do
    n = Note.new("Host meeting")
    n.add_tag("Important")
    expect(n.tag).to eq "Important"
  end
end