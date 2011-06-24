require 'spec_helper'

describe "programs/new.html.erb" do
  before(:each) do
    assign(:program, stub_model(Program,
      :module => "MyString"
    ).as_new_record)
  end

  it "renders new program form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => programs_path, :method => "post" do
      assert_select "input#program_module", :name => "program[module]"
    end
  end
end
