def spanish_number numero

  if numero < 0
    return 'menos ' + (spanish_number (-1)*numero)
  end
  
if numero == 0
    return 'cero'
  end

  if numero == 1000 
    return 'mil' 
  end

#if numero >1000 & numero
  

num_string = ''

unos = ['uno', 'dos', 'tres', 'cuatro', 'cinco', 'seis', 'siete', 'ocho', 'nueve']
diezes = ['diez', 'veinte', 'treinta', 'cuarenta', 'cincuenta', 'sesenta', 'setenta', 'ochenta', 'noventa']
teenager = ['once', 'doce', 'trece', 'catorce', 'quince', 'dieciseis', 'diecisiete', 'dieciocho', 'diecinueve']
cientos = ['ciento', 'doscientos', 'trescientos', 'cuatrocientos', 'quinientos', 'seiscientos', 'sietecientos', 'ochocientos', 'nuevecientos']




if numero < 1000
  c = numero/100%10   #cientos
  d = numero/10%10 #diezes
  u = numero%10    #unos

  #if c==1 && d=0 && u=0
   # num_string = 'cien'
  #end

 



  if c>0 && c<10
    num_string = cientos[c-1] + ' '+ num_string


  end

  if c==1 && d==0 && u==0
  num_string =  'cien' # muss ggf. korrigiert werden wenn mil dazukommen
  end




   

  if d==1 && u>0
    num_string = num_string + teenager[u-1]
  else
    if d>0
      num_string = num_string + diezes[d-1]
    end
    if u>0 && d>1
      num_string = num_string + ' y ' + unos[u-1]
     elsif u>0 && d<1
      num_string = num_string + unos[u-1]   
    end

   end
    return num_string
   end 
  
#  if m==1
# num_string = 'mil '+ num_string

#elsif m>1 && m <10
 #num_string = unos[m-1] + ' mil ' + num_string

#end




 valor = ['', 'mil', 'millones', 'millares']
  
 v=0
 while numero>0
 n = numero%1000
   if n>0
      num_string = (spanish_number n) +' '  + valor[v] +' '+ num_string
   end
    v = v+1
    numero = numero/1000
  end

  return num_string
end

puts spanish_number 198
puts spanish_number 100
puts spanish_number 72
puts spanish_number 1679
puts spanish_number 3619
puts spanish_number 4
puts spanish_number 798
puts spanish_number 15567
puts spanish_number 1000
puts spanish_number 121450
puts spanish_number 8761570
puts spanish_number 91760
puts spanish_number -7865480



