class ReferenciaBase
  include Comparable
  
  attr_reader :m_titulo, :m_anio, :m_autores

  def <=>(other)
    return nil if other.nil? #Si el valor con el que se compara es nil, saldrá y retornara que lo es
    t_comparaciones=self.m_autores <=> other.m_autores
    if(t_comparaciones == 0)
      t_comparaciones=self.m_anio <=> other.m_anio
      if (t_comparaciones == 0)
        t_comparaciones=self.m_anio <=> other.m_titulo
        if(t_comparaciones == 0)
          t_comparaciones
        end
      end
    end
    t_comparaciones
  end

  def initialize(a_autores, a_titulo, a_anio)
    @m_autores,@m_titulo,@m_anio = a_autores,a_titulo,a_anio
  end

end