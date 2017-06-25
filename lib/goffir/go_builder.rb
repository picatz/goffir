# @author Kent 'picat' Gruber
module GoBuilder
  # Build the required go binary on your system.
  #
  # # @todo Make this check if go exists. Maybe some go installer stuff. Error checking. Magic. More gophers.
  #
  def self.build
    `go build -buildmode=c-shared -o ext/fibanachos/fibanachos.so ext/fibanachos/fibanachos.go`
  end
end
