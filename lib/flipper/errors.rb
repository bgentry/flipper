module Flipper
  # Top level error that all other errors inherit from.
  class Error < StandardError; end

  # Raised when gate can not be found for a thing.
  class GateNotFound < Error
    def initialize(thing)
      super "Could not find gate for #{thing.inspect}"
    end
  end

  # Raised when attempting to declare a group name that has already been used.
  class DuplicateGroup < Error; end

  # Raised when attempting to access a group that is not registered.
  class GroupNotRegistered < Error; end
end
