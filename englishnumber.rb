# encoding: utf-8
def englishNumber number
  #  Vogliamo sono numeri compresi tra  0 e 100.
  if number < 0
    return 'Per favore inserisci un numero maggiore o uguale a 0.'
  end
  if number > 100
    return 'Per favore inserisci un numero minore o uguale a 100.'
  end

  numString = ''  #  Questa è la stringa che restituiremo.

  #  "left" è quanto del numero ci rimane da scrivere.
  #  "write" è la parte del numero che stiamo scrivendo in questo momento.
  #  write e left... capito?  :)
  left  = number

  write = left/100          # Quante centinaia (hundreds) restano da scrivere?
  left  = left - write*100  # Sottraiamo queste centinaia

  if write > 0
    return 'one hundred'
  end

  write = left/10          #  Quante decine (tens) restano da scrivere?
  left  = left - write*10  #  Sottraiamo queste decine.

  if write > 0
    if write == 1  #  Uh-oh...
      #  Siccome non possiamo scrivere "tenty-two" al posto di "twelve",
      #  dobbiamo considerare delle eccezioni per i numeri da 11 a 19.
      if    left == 0
        numString = numString + 'ten'
      elsif left == 1
        numString = numString + 'eleven'
      elsif left == 2
        numString = numString + 'twelve'
      elsif left == 3
        numString = numString + 'thirteen'
      elsif left == 4
        numString = numString + 'fourteen'
      elsif left == 5
        numString = numString + 'fifteen'
      elsif left == 6
        numString = numString + 'sixteen'
      elsif left == 7
        numString = numString + 'seventeen'
      elsif left == 8
        numString = numString + 'eighteen'
      elsif left == 9
        numString = numString + 'nineteen'
      end
      #  Siccome abbiamo già considerato le unità,
      #  non abbiamo nient'altro da scrivere.
      left = 0
    elsif write == 2
      numString = numString + 'twenty'
    elsif write == 3
      numString = numString + 'thirty'
    elsif write == 4
      numString = numString + 'forty'
    elsif write == 5
      numString = numString + 'fifty'
    elsif write == 6
      numString = numString + 'sixty'
    elsif write == 7
      numString = numString + 'seventy'
    elsif write == 8
      numString = numString + 'eighty'
    elsif write == 9
      numString = numString + 'ninety'
    end

    if left > 0
      numString = numString + '-'
    end
  end

  write = left  #  Quante unità restano da scrivere?
  left  = 0     #  Sottraiamo tutte queste unità.

  if write > 0
    if    write == 1
      numString = numString + 'one'
    elsif write == 2
      numString = numString + 'two'
    elsif write == 3
      numString = numString + 'three'
    elsif write == 4
      numString = numString + 'four'
    elsif write == 5
      numString = numString + 'five'
    elsif write == 6
      numString = numString + 'six'
    elsif write == 7
      numString = numString + 'seven'
    elsif write == 8
      numString = numString + 'eight'
    elsif write == 9
      numString = numString + 'nine'
    end
  end

  if numString == ''
    #  L'unico caso in cui "numString" è vuota è quando
    #  "number" è 0.
    return 'zero'
  end

  #  Se siamo arrivati fin qui, allora avevamo un numero compreso fra 0 e 100
  #  quindi ora non ci rimane che restituire "numString".
  numString
end

puts englishNumber(  0)
puts englishNumber(  9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber( 99)
puts englishNumber(100)