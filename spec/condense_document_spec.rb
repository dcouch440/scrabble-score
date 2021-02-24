require('rspec')
require('condense_document')
describe(CondenseDocument) do
  it("condenses file text to a string with no whitespace") do
    expect(CondenseDocument.txt_no_space('spec/test_text/test_text.txt')).to(eq("ThisWorks"))
  end
end
