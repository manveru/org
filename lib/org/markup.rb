module Org
  class Markup
    attr_accessor :string

    def initialize(file = nil)
      self.string = File.read(file) if file
    end

    def apply(string = @string)
      self.string = string

      parent = RootToken.new(:root, nil)
      scanner = StringScanner.new(self.string)
      state = State.new(@scope, parent, scanner)

      until scanner.eos?
        pos = scanner.pos
        state.step
        raise("Didn't move: %p" % scanner) if pos == scanner.pos
      end

      return parent
    end

    def scope(name, options = {}, &block)
      @scope = Scope.new(name, options)
      yield(@scope)
    end

    def string=(string)
      @string = string.gsub(/\r\n|\r/, "\n")
    end
  end
end
