RSpec::Matchers.define :each_have_key do |expected_key|
  match do |items|
    items.each do |item|
      return false unless item.key?(expected_key)
    end

    return true
  end

  failure_message do
    "expected each item to #{description}"
  end
  failure_message_when_negated do
    "expected each item not to #{description}"
  end
  description do
    "have the key :#{expected_key}"
  end
end
