
describe 'Smoke Test' do
  before(:example) do
    puts "before suite"
  end

  after(:example) do
    puts "after suite"
  end

  it "WSB-1234; 10 cannot be greater than 19", :story => ["Some story"]  do
    expect(10).to be > 19
  end

  it "4 must not be equal to 5" do |example|
    expect(5).to be eql(4)
  end
end
