directories %w(contracts lib spec)

guard 'rake', :task => 'default' do
  watch(%r{^contracts/})
  watch(%r{^lib/})
  watch(%r{^spec/})
end
