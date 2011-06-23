require 'spec_helper'

describe "units/index.html.erb" do
  before(:each) do
    assign(:units, [
      stub_model(Unit,
        :title => "Title"
      ),
      stub_model(Unit,
        :title => "Title"
      )
    ])
  end

  it "renders a list of units" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
