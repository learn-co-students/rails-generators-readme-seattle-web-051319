require 'rails_helper'

RSpec.describe "authors/index", type: :view do
  before(:each) do
    assign(:authors, [
      Author.create!(
        :name => "Name",
        :genre => "Genre",
        :bio => "Bio"
      ),
      Author.create!(
        :name => "Name",
        :genre => "Genre",
        :bio => "Bio"
      )
    ])
  end

  it "renders a list of authors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
    assert_select "tr>td", :text => "Bio".to_s, :count => 2
  end
end
