# Environment Handling
# --------------------

require "dotenv"

Dotenv.load

spec_paths = %w{spec/controllers spec/helpers spec/models spec/routing spec/views}

if ENV['EXCLUDE_INTEGRATION_TESTS'] == 'true'
  puts "[Guardfile] Integration Tests: Excluded"
else
  puts "[Guardfile] Integration Tests: Included"
  spec_paths << "spec/features"
end


# Standard Guardfile
# ------------------

## Uncomment and set this to only include directories you want to watch
directories %w(app lib config spec)

## Uncomment to clear the screen before every task
# clearing :on

guard :bundler do
  watch "Gemfile"
end

guard :rspec, cmd: 'bin/rspec', spec_paths: spec_paths do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^spec/support_helpers/.+_helper\.rb$}) { "spec" }
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }

  # Rails
  watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/(.*)(\.erb|\.haml)$})                 { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
  watch(%r{^app/admin/(.+)\.rb$})                     { |m| "spec/controllers/admin/#{m[1]}_controller_spec.rb" }
  watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }
  watch(%r{^extras/(.+)\.rb$})                        { "spec" }
  watch('config/routes.rb')                           { "spec/routing" }

  # Capybara features specs
  watch(%r{^app/views/(.+)/(.+)\.haml$}) { |m| "spec/features" }
end

guard :spork, :rspec_env => { 'RAILS_ENV' => 'test' } do
  watch('config/application.rb')
  watch('config/environment.rb')
  watch('config/environments/test.rb')
  watch(%r{^config/initializers/.+\.rb$})
  watch('Gemfile.lock')
  watch('spec/spec_helper.rb') { :rspec }
end
