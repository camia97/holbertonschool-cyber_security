#!/usr/bin/env ruby

class CaesarCipher
  def initialize(shift)
    @shift = shift
  end

  def encrypt(message)
    return message.tr("A-Za-z", ("A".."Z").to_a.rotate(@shift).join + ("a".."z").to_a.rotate(@shift).join)
  end

  def decrypt(message)
    return message.tr("A-Za-z", ("A".."Z").to_a.rotate(-@shift).join + ("a".."z").to_a.rotate(-@shift).join)
  end

  def cipher(message, shift)
    return message.tr("A-Za-z", ("A".."Z").to_a.rotate(shift).join + ("a".."z").to_a.rotate(shift).join)
  end
end