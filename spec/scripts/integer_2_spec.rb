describe "integer_odd.rb" do
  it "should output 'false' if the entered number is not odd", points: 1 do
    # Un-require integer_odd.rb
    integer_odd = $".select{|r| r.include? 'integer_odd.rb'}
    $".delete(integer_odd.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("12")

    expect { require_relative '../../integer_odd' }.to output(/false/i).to_stdout
  end
end

describe "integer_birth_year.rb" do
  it "should output'Wow, you were born in 1940. You're old!' if the input is 80.", points: 1 do
    
    allow_any_instance_of(Object).to receive(:gets).and_return("80")

    expect { require_relative '../../integer_birth_year' }.to output(/Wow, you were born in 1940. You're old!/i).to_stdout
  end
end

describe "integer_birth_year.rb" do
  it "should output'Wow, you were born in 1940. You're old!' if the input is 80.", points: 1 do
    # Un-require integer_birth_year.rb
    integer_birth_year = $".select{|r| r.include? 'integer_birth_year.rb'}
    $".delete(integer_birth_year.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("20")

    expect { require_relative '../../integer_birth_year' }.to output(/Wow, you were born in 2000. You're old!/i).to_stdout
  end
end
