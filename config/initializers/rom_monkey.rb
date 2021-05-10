module ROM
  module Rails
    class Railtie < ::Rails::Railtie
      alias_method :create_container!, :create_container
      def create_container
        begin
          create_container!
        rescue => exception
          puts "Container failed to initialize because of #{exception.inspect}"
          puts "This message comes from the monkey patch in #{__FILE__}, if you are using rake, then this is fine"
        end
      end
    end
  end
end