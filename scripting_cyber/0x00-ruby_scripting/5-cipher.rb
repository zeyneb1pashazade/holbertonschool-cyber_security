class CaesarCipher
  def initialize(shift)
    @shift = shift
  end

  def encrypt(message)
    cipher(message, @shift)
  end

  def decrypt(message)
    # Decryption is just reversing the shift
    cipher(message, -@shift)
  end

  private

  def cipher(message, shift)
    # Map over every character block in the string
    message.chars.map do |char|
      if char.match?(/[A-Za-z]/)
        # Determine case boundaries using ASCII base numbers
        ascii_base = char.match?(/[A-Z]/) ? 65 : 97
        
        # Apply shift with modulo 26 to handle alphabetical wraparound safely
        (((char.ord - ascii_base) + shift) % 26 + ascii_base).chr
      else
        char # Keep punctuation, spaces, and numbers completely untouched
      end
    end.join
  end
end
