describe "integer_odd.rb" do
  it "should output 'false' if the entered number is not odd", points: 1 do
    # Un-require integer_odd.rb
    integer_odd = $".select{|r| r.include? 'integer_odd.rb'}
    $".delete(integer_odd.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("12")

    expect { require_relative '../../integer_odd' }.to output(/false/i).to_stdout
  end
end
