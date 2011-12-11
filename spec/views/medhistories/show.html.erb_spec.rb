require 'spec_helper'

describe "medhistories/show.html.erb" do
  before(:each) do
    @medhistory = assign(:medhistory, stub_model(Medhistory,
      :history => "History",
      :allergies => "Allergies",
      :familyhistory => "Familyhistory",
      :images => "Images",
      :appointments => "Appointments"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/History/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Allergies/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Familyhistory/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Images/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Appointments/)
  end
end
