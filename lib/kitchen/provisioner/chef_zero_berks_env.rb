# -*- encoding: utf-8 -*-

require 'kitchen/provisioner/chef_zero'
require 'kitchen/provisioner/sandbox_berks_env'

module Kitchen
  module Provisioner
    # Chef Zero Berkshelf Environment provisioner.
    #
    # @author Mario Santos <mario.rf.santos@gmail.com>
    class ChefZeroBerksEnv < ChefZero
      def create_sandbox
        Kitchen::Provisioner::Base.instance_method(:create_sandbox).bind(self).call
        SandboxBerksEnv.new(config, sandbox_path, instance).populate
        prepare_validation_pem
        prepare_config_rb
      end
    end
  end
end
