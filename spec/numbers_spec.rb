require ('rspec')
require ('numbers')

describe('Fixnum#numbers') do
  it("When given a number 1-12, it returns the value as a String.") do
    expect((13).numbers()).to(eq("thirteen"))
  end
  it("returns correct String for numbers 13-19") do
    expect((17).numbers()).to(eq("seventeen"))
  end
  it("returns correct String for numbers 20-99") do
    expect((88).numbers()).to(eq("eightyeight"))
  end
end
