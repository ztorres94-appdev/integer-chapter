
describe "integer_math.rb" do
  it "should output '1'", points: 1 do
    math_file = "integer_math.rb"
    file_contents = File.read(math_file)
    File.foreach(math_file).with_index do |line, line_num|
      if line.include?("p") || line.include?("puts")
        expect(line).to_not match(/1/i),
          "Expected 'integer_math.rb' to NOT literally print '1', but did anyway."
      end
    end
    output = with_captured_stdout { require_relative('../../integer_math')} 
    output = "empty" if output.empty? 
    expect(output.match?(/1\n/i)).to be(true),
      "Expected integer_math.rb output to be '1\\n', but was #{output}."

  end
end

describe "integer_odd.rb" do
  it "should output 'true' if the entered number is odd", points: 1 do

    allow_any_instance_of(Object).to receive(:gets).and_return("13")

    output = with_captured_stdout { require_relative('../../integer_odd')} 
    output = "empty" if output.empty? 
    expect(output.match?(/true\n/i)).to be(true),
      "Expected integer_odd.rb output to be 'Enter an odd number:\\ntrue\n', but was #{output}."

  end
end

def with_captured_stdout
  original_stdout = $stdout  # capture previous value of $stdout
  $stdout = StringIO.new     # assign a string buffer to $stdout
  yield                      # perform the body of the user code
  $stdout.string             # return the contents of the string buffer
ensure
  $stdout = original_stdout  # restore $stdout to its previous value
end
