require 'spec_helper'

describe "medhistories/edit.html.erb" do
  before(:each) do
    @medhistory = assign(:medhistory, stub_model(Medhistory,
      :history => "MyString",
      :allergies => "MyString",
      :familyhistory => "MyString",
      :images => "MyString",
      :appointments => "MyString"
    ))
  end

  it "renders the edit medhistory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => medhistories_path(@medhistory), :method => "post" do
      assert_select "input#medhistory_history", :name => "medhistory[history]"
      assert_select "input#medhistory_allergies", :name => "medhistory[allergies]"
      assert_select "input#medhistory_familyhistory", :name => "medhistory[familyhistory]"
      assert_select "input#medhistory_images", :name => "medhistory[images]"
      assert_select "input#medhistory_appointments", :name => "medhistory[appointments]"
    end
  end
end
