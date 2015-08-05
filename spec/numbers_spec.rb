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
    expect((88).numbers()).to(eq("eighty eight"))
  end
  it("returns correct String for numbers 100-999") do
    expect((755).numbers()).to(eq("seven hundred fifty five"))
  end
  it("returns correct String for numbers 1000 - 9999") do
    expect((3760).numbers()).to(eq("three thousand seven hundred sixty"))
  end
  it("returns correct String for numbers 10000 - 19999") do
    expect((17760).numbers()).to(eq("seventeen thousand seven hundred sixty"))
  end
  it("returns correct String for numbers 20000 - 99999") do
    expect((57760).numbers()).to(eq("fifty seven thousand seven hundred sixty"))
  end
end
