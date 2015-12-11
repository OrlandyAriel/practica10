class CitasBibliograficas
  
  attr_accessor :m_lista
  def initialize(a_lista)
    @m_lista = a_lista
   
  end
  
  #devuelve en forma de string todo el contenido de la lista
  def to_s
    t_resultado = ""
    @m_lista.each do |elemento|
      t_resultado += elemento.to_s
    end
    t_resultado
  end
  
end