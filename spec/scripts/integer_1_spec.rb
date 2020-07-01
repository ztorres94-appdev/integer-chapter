
describe "integer_math.rb" do
  it "should output '1'", points: 1 do

    expect { require_relative '../../integer_math' }.to output("1\n").to_stdout

  end
end

describe "integer_odd.rb" do
  it "should output 'true' if the entered number is odd", points: 1 do
    allow_any_instance_of(Object).to receive(:gets).and_return("13")

    expect { require_relative '../../integer_odd' }.to output(/true/i).to_stdout
  end
end
