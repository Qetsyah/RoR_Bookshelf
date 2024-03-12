RSpec.shared_context "with logged user" do
  let(:user) { create(:user) }

  before do
    sign_in user
  end
end
