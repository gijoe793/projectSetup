require 'spec_helper'

describe "medhistories/new.html.erb" do
  before(:each) do
    assign(:medhistory, stub_model(Medhistory,
      :history => "MyString",
      :allergies => "MyString",
      :familyhistory => "MyString",
      :images => "MyString",
      :appointments => "MyString"
    ).as_new_record)
  end

  it "renders new medhistory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => medhistories_path, :method => "post" do
      assert_select "input#medhistory_history", :name => "medhistory[history]"
      assert_select "input#medhistory_allergies", :name => "medhistory[allergies]"
      assert_select "input#medhistory_familyhistory", :name => "medhistory[familyhistory]"
      assert_select "input#medhistory_images", :name => "medhistory[images]"
      assert_select "input#medhistory_appointments", :name => "medhistory[appointments]"
    end
  end
end
