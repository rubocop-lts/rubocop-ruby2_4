module Rubocop
  module Ruby24
    class Railtie < Rails::Railtie
      railtie_name :rubocop_ruby2_4

      rake_tasks do
        load "rubocop/ruby2_4/tasks.rake" if Rails.env.test? || Rails.env.development?
      end
    end
  end
end
