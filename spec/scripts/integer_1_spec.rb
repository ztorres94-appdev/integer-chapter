
describe "integer_math.rb" do
  it "should output '1'", points: 1 do
    math_file = "integer_math.rb"
    file_contents = File.read(math_file)
    File.foreach(math_file).with_index do |line, line_num|
      if line.include?("p") || line.include?("puts")
        expect(line).to_not match(/1/),
          "Expected 'integer_math.rb' to NOT literally print '1', but did anyway."
      end
    end
    expect { require_relative '../../integer_math' }.to output("1\n").to_stdout

  end
end

describe "integer_odd.rb" do
  it "should output 'true' if the entered number is odd", points: 1 do

    allow_any_instance_of(Object).to receive(:gets).and_return("13")

    expect { require_relative '../../integer_odd' }.to output(/true/i).to_stdout
  end
end
