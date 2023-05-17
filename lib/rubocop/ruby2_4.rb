# frozen_string_literal: true

# external libs
require "version_gem"

# this gem
require_relative "ruby2_4/version"
# :nocov:
require_relative "ruby2_4/railtie" if defined?(Rails::Railtie)
# :nocov:

module Rubocop
  # Namespace of this library
  module Ruby24
    module_function def install_tasks
      load "rubocop/ruby2_4/tasks.rake"
    end
  end
end

Rubocop::Ruby24::Version.class_eval do
  extend VersionGem::Basic
end
