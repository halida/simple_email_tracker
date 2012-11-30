require 'spec_helper'

describe SimpleEmailTracker::Visit do
  describe "it works" do
    v = SimpleEmailTracker::Visit.get_by_key 'hello'
    request = {}
    request.stub :ip, "fakeip"
    request.stub :env, {"HTTP_USER_AGENT" => 'fakeua'}

    v.visit_by request
    v.ip.should == 'fakeip'
  end
end
