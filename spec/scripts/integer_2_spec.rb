describe "integer_odd.rb" do
  it "should output 'false' if the entered number is not odd", points: 1 do
    allow_any_instance_of(Object).to receive(:gets).and_return("12")

    expect { require_relative '../../integer_odd' }.to output(/false/i).to_stdout
  end
end
