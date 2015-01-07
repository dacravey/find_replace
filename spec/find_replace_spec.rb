require('rspec')
require('find_replace')

describe('string#find_and_replace') do

  it("returns the original string if it does not find the searched for string") do
    expect("hello world".find_and_replace("foo","bar")).to(eq("hello world"))
  end

  it("returns an updated string with the matching words replaced") do
    expect("hello world".find_and_replace("world", "universe")).to(eq("hello universe"))
  end

  it("returns an updated string with the matching words replaced, where string includes multiple copies of word") do
    expect("Hello world How are you world".find_and_replace("world", "universe")).to(eq("Hello universe How are you universe"))
  end

   # punctuation means partial match check necessary
   it("returns an updated string with the matching words replaced, where string includes punctuation") do
     expect("Hello, world. How are you world?".find_and_replace("world", "universe")).to(eq("Hello, universe. How are you universe?"))
   end


end
