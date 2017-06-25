require "spec_helper"

RSpec.describe Goffir do
  it "has a version number" do
    expect(Goffir::VERSION).not_to be nil
  end

  it "can calculate a given fibonacci number" do
    expect(Goffir.fibanachos(42)).to be(267914296)
  end
end
