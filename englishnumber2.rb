# encoding: utf-8
def englishNumber number
  if number < 0  #  No numeri negativi.
    return 'Per favore inserisci un numero che non sia negativo.'
  end
  if number == 0
    return 'zero'
  end

  #  Nessun caso particolare!  Nessun return!

  numString = ''  #  Questa è la stringa che restituiremo.

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  
  left  = number
  write = left/100          # Quante centinaia (hundreds) restano?
  left  = left - write*100  # Sottraiamo queste centinaia.

  if write > 0
    #  Ed ora un espediente molto astuto:
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'
    # Si chiama "ricorsione". Che cosa ho appena fatto?
    # Ho detto a questo metodo di chiamare se stesso, ma con "write"  
    # al posto di "number". Ricorda che "write" è (al momento) il
    # numero di centinaia che dobbiamo scrivere.  Dopo aver aggiunto  
    # "hundreds" a "numString", aggiungiamo la stringa 
    # ' hundred' dopo di essa. Così, per esempio, se inizialmente avessimo 
    #  chiamato englishNumber con 1999 (quindi "number" = 1999), 
    #  allora a questo punto "write" sarebbe pari a 19, e "left"  
    #  sarebbe pari a 99. 
    # 
    # La cosa più pigra, a questo punto, è fare in modo che englishNumber
    # scriva il 'nineteen' per noi, dopodiché noi scriviamo ' hundred',
    # quindi e tutto il resto di englishNumber scriverà 'ninety-nine'.

    if left > 0
      #  Così non scriviamo 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/10          #  Quante decine (tens) ci rimangono da scrivere?
  left  = left - write*10  #  Sottraiamo tutte queste decine.

  if write > 0
    if ((write == 1) and (left > 0))
      #  Siccome non possiamo scrivere "tenty-two" al posto di "twelve",
      #  dobbiamo considerare i numeri da 11 a 19 dei casi particolari.
      numString = numString + teenagers[left-1]
      #  Il "-1" è perché teenagers[3] è 'fourteen', non 'thirteen'.

      #  Siccome le unità sono già considerate nei casi particolari,
      #  non abbiamo nient'altro da scrivere.
      left = 0
    else
      numString = numString + tensPlace[write-1]
      #  Il "-1" è perché tensPlace[3] è 'forty', non 'thirty'.
    end

    if left > 0
      #  Così non scriviamo 'sixtyfour'...
      numString = numString + '-'
    end
  end

  write = left  # Quante unità (ones) restano da scrivere?
  left  = 0     #  Sottraiamo queste unità.

  if write > 0
    numString = numString + onesPlace[write-1]
    #  Il "-1" è perché onesPlace[3] è 'four', non 'three'.
  end

  #  Ora non ci resta che restituire "numString"...
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
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(3211)
puts englishNumber(999999)