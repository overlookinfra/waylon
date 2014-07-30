require 'waylon/server'

class Waylon
  class View
    attr_reader :name
    attr_accessor :servers

    def self.from_hash(name, servers)
      o = new(name)
      servers.each_pair do |url, values|
        o.servers << Waylon::Server.from_hash(url, values)
      end
      o
    end

    def initialize(name)
      @name = name
      @servers = []
    end
  end
end
