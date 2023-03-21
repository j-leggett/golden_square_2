require 'diary_entry_2'

RSpec.describe DiaryEntry do

  it "initiaises with title and contents" do
    monday = DiaryEntry.new("title", "contents")
    expect(monday.title).to eq "title"
    expect(monday.contents).to eq "contents"
  end

  describe "#count_words" do
    it "one word" do
      monday = DiaryEntry.new("title", "contents")
      expect(monday.count_words).to eq 1
    end

    it "10 words" do
      monday = DiaryEntry.new("title", "contents contents contents contents contents contents contents contents contents contents" )
      expect(monday.count_words).to eq 10
    end
  end

  describe "#reading_time" do
    it "returns correct time for a resonable words per minute" do
      monday = DiaryEntry.new("title", "contents " * 100)
      expect(monday.reading_time(80)).to eq 1.25
    end
  end

  it "displays the correct number of words to read" do 
    monday = DiaryEntry.new("title", "If called again reading chunk should return the next chunk")
    expect(monday.reading_chunk(2, 2)).to eq "If called again reading"
  end

  it "should return the next chunk if .reading chunk is called again" do
    monday = DiaryEntry.new("title", "If called again reading chunk should return the next chunk")
    monday.reading_chunk(1, 1)
    expect(monday.reading_chunk(2, 2)).to eq "called again reading chunk"
  end

  it "restarts chunk if ends exactly on the end of passage" do
    monday = DiaryEntry.new("title", "If called again reading chunk should return the next chunk")
    monday.reading_chunk(10, 1)
    expect(monday.reading_chunk(2, 2)).to eq "If called again reading"
  end

  it "restarts chunk if already reached the end of text passage" do
    monday = DiaryEntry.new("title", "If called again reading chunk should return the next chunk")
    monday.reading_chunk(11, 1)
    expect(monday.reading_chunk(2, 2)).to eq "If called again reading"
  end


end