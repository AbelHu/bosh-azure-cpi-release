require_relative 'helpers'

require 'timeout'

module Bosh::AzureCloud
  class ResourceWait
    include Helpers

    def initialize(vm_manager)
      @vm_manager = vm_manager
    end

    def wait_for(vm_id, desired_status, timeout_in_minutes = 5)
      begin
        timeout(60 * timeout_in_minutes) {
          loop do
            status = @vm_manager.find(vm_id).status
            break if (status == desired_status)
          end
        }
      rescue Timeout::Error => ex

      end

    end
  end
end