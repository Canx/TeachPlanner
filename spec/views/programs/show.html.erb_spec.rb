require 'spec_helper'

describe "programs/show.html.erb" do
  before(:each) do
    @program = assign(:program, stub_model(Program,
      :module => "Module"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Module/)
  end
end
