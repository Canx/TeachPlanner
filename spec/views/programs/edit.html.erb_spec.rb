require 'spec_helper'

describe "programs/edit.html.erb" do
  before(:each) do
    @program = assign(:program, stub_model(Program,
      :module => "MyString"
    ))
  end

  it "renders the edit program form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => programs_path(@program), :method => "post" do
      assert_select "input#program_module", :name => "program[module]"
    end
  end
end
