
describe "basic_math.rb" do
  it "should output ", points: 1 do

    expect { require_relative '../../APP/basic_math' }.to output("1\n").to_stdout

  end
end
