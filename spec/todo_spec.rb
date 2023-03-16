require 'todo'

RSpec.describe "task_tracker method" do

  it "returns not a todo if task is empty" do
    result = task_tracker("")
    expect(result).to eq "This is not a #TODO"
  end

  it "returns not a todo if task does not contain #TODO" do
    result = task_tracker("walk dog")
    expect(result).to eq "This is not a #TODO"
  end

  it "returns is a todo if string does conatin #TODO" do
    result = task_tracker("#TODO Walk dog")
    expect(result).to eq "This is a #TODO"
  end

  it "returns is a todo if #TODO is at the end of the string" do
    result = task_tracker("Feed dog #TODO")
    expect(result).to eq "This is a #TODO"
  end

  it "returns is a todo if #TODO is not capitaized" do
    result = task_tracker("#todo Walk dog")
    expect(result).to eq "This is a #TODO"
  end

  it "returns is a todo if #TODO is has upper and lower case letters" do
    result = task_tracker("#toDo walK Dog")
    expect(result).to eq "This is a #TODO"
  end

  it "returns is not a todo if task is nil" do
    result = task_tracker()
    expect(result).to eq "This is not a #TODO"
  end

end