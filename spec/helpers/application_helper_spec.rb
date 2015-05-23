require "rails_helper"

describe ApplicationHelper do
  describe "#flash_messages" do
    xit "should return rendered flash messages" do
      ApplicationHelper.flash_messages.stub!(:flash).and_return({alert: "Incorect password"})
      expect(helper.flash_messages).to include("<a href='#'' class='close'>&times;</a>", "Incorect password")
    end
  end
end
