require 'spec_helper'

describe "units/show.html.erb" do
  before(:each) do
    @unit = assign(:unit, stub_model(Unit,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
  end
end
