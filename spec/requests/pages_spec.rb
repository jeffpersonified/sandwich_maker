require 'spec_helper'

describe "Pages" do
  subject { page }

  describe "home page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'SandwichMe') }
    it { should have_selector('h2', text: 'Easily order your next lunch.') }
    it { should have_selector('a', text: 'Choose sandwich')}

    # test link
  end
end

