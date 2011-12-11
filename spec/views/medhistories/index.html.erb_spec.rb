require 'spec_helper'

describe "medhistories/index.html.erb" do
  before(:each) do
    assign(:medhistories, [
      stub_model(Medhistory,
        :history => "History",
        :allergies => "Allergies",
        :familyhistory => "Familyhistory",
        :images => "Images",
        :appointments => "Appointments"
      ),
      stub_model(Medhistory,
        :history => "History",
        :allergies => "Allergies",
        :familyhistory => "Familyhistory",
        :images => "Images",
        :appointments => "Appointments"
      )
    ])
  end

  it "renders a list of medhistories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "History".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Allergies".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Familyhistory".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Images".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Appointments".to_s, :count => 2
  end
end
