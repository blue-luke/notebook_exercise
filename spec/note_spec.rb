require 'note'

describe 'note' do
  it 'stores text' do
    n = Note.new("Host meeting")
    expect(n.content).to eq "Host meeting"
  end
end