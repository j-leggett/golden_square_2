require 'diary_2.rb'
require 'diary_entry_2.rb'

RSpec.describe "Diary Entry Intigration" do
  
  describe "#count_words" do
    it "counts one word" do
      diary = Diary.new
      monday = DiaryEntry.new("title", "contents")
      diary.add(monday)
      expect(diary.count_words).to eq 1
    end

    it "counts 82 word" do
      diary = Diary.new
      monday = DiaryEntry.new("title", "contents " * 82)
      tuesday = DiaryEntry.new("title", "contents")
      diary.add(monday)
      diary.add(tuesday)
      expect(diary.count_words).to eq 83
    end
  end

  describe "#reading_time" do 
    it "returns correct reading time for a passage" do
      diary = Diary.new
      monday = DiaryEntry.new("title", "contents " * 82)
      diary.add(monday)
      expect(diary.reading_time(41)).to eq 2.0
    end
  end



end 

