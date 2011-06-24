require 'spec_helper'

describe "programs/index.html.erb" do
  before(:each) do
    assign(:programs, [
      stub_model(Program,
        :module => "Module"
      ),
      stub_model(Program,
        :module => "Module"
      )
    ])
  end

  it "renders a list of programs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Module".to_s, :count => 2
  end
end
