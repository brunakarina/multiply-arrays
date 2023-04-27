class Arrays
  def self.multiplica_antecessor_predecessor(array)
    novo_array = [] # cria um array para armazenar o resultado
    array.each_with_index do |valor, index|
      if index == 0 # checa se o loop esta na primeira posicao do array
        novo_array << valor * array[index+1] #se o loop estiver na primeira posicao entao multiplica o valor atual + proximo index
      elsif index == array.size() -1 # checa se o loop esta na ultima posicao do array
        novo_array << valor * array[index-1] #se o loop estiver na ultima posicao entao multiplica o valor atual + index anterior
      else #cai aqui se o loop n estiver na primeira e nem na ultima posicao
        novo_array <<  array[index-1] *  array[index +1] #multiplica a posicao anterior com a proxima
      end
    end
    novo_array #retorna o resultado
  end
end
