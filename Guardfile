# More info at https://github.com/guard/guard#readme

directories %w(lib spec) \
  .select{|d| Dir.exists?(d) ? d : UI.warning("Directory #{d} does not exist")}


guard :rspec, cmd: "bundle exec rspec --color --format doc" do
  watch(%r{^spec/.+_spec\.rb$}) { "spec" }
  watch(%r{^lib/(.+)\.rb$}) { "spec" }
  watch('spec/spec_helper.rb') { "spec" }
end
