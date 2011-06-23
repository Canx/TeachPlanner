require 'spec_helper'

describe "units/edit.html.erb" do
  before(:each) do
    @unit = assign(:unit, stub_model(Unit,
      :title => "MyString"
    ))
  end

  it "renders the edit unit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => units_path(@unit), :method => "post" do
      assert_select "input#unit_title", :name => "unit[title]"
    end
  end
end
