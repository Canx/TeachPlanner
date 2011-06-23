require 'spec_helper'

describe "units/new.html.erb" do
  before(:each) do
    assign(:unit, stub_model(Unit,
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new unit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => units_path, :method => "post" do
      assert_select "input#unit_title", :name => "unit[title]"
    end
  end
end
