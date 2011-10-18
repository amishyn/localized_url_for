describe 'dummy' do
  it 'should not htrow error' do
    Rails.application.routes.url_helpers.index_path.should == '/en/posts'
  end
end