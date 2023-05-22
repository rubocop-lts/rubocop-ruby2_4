module Rubocop
  module Ruby24
    class Railtie < Rails::Railtie
      railtie_name :rubocop_ruby2_4

      if Rails.env.test? || Rails.env.development?
        rake_tasks do
          Rubocop::Ruby24.install_tasks
        end
      end
    end
  end
end
