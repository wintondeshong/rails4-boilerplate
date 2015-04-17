# RSpec is only loaded in test environments
if Rails.env.test?

  namespace :spec do
    desc 'Run all specs in spec directory (exluding request/integration specs)'
    RSpec::Core::RakeTask.new(:development) do |task|
      file_list = FileList['spec/**/*_spec.rb']

      %w(features requests integration).each do |exclude|
        file_list = file_list.exclude("spec/#{exclude}/**/*.rb")
      end

      task.pattern = file_list
    end
  end

end
