describe 'dummy' do
  it 'should not throw error' do
    Rails.application.routes.url_helpers.index_path.should == '/'
  end
end