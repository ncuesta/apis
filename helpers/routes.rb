helpers do
  def extract(object, attribute)
    object.respond_to?(attribute) ? object.send(attribute) : object
  end

  ### Alumnos

  def alumno_path(alumno)
    documento = extract(alumno, :documento)
    "/alumnos/#{documento}"
  end

  def alumno_url(alumno)
    url alumno_path(alumno)
  end

  def regularidades_alumno_path(alumno)
    documento = extract(alumno, :documento)
    "/alumnos/#{documento}/regularidades"
  end

  def regularidades_alumno_url(alumno)
    url regularidades_alumno_path(alumno)
  end

  ### Unidades Académicas

  def unidad_academica_path(unidad_academica)
    codigo = extract(unidad_academica, :codigo)
    "/unidades/#{codigo}"
  end

  def unidad_academica_url(unidad_academica)
    url unidad_academica_path(unidad_academica)
  end

  ### Carreras

  def carreras_path(unidad_academica)
    codigo_unidad  = extract(unidad_academica, :codigo)
    "/unidades/#{codigo_unidad}/carreras"
  end

  def carreras_url(unidad_academica)
    url carreras_path(unidad_academica)
  end

  def carrera_path(unidad_academica, carrera)
    codigo_unidad  = extract(unidad_academica, :codigo)
    codigo_carrera = extract(carrera, :codigo)
    "/unidades/#{codigo_unidad}/carreras/#{codigo_carrera}"
  end

  def carrera_url(unidad_academica, carrera)
    url carrera_path(unidad_academica, carrera)
  end

  ### Becas

  def beca_path(beca)
    codigo = extract(beca, :codigo)
    "/becas/#{codigo}"
  end

  def beca_url(beca)
    url beca_path(beca)
  end

  def becas_asignadas_path(persona)
    documento = extract(persona, :documento)
    "/personas/#{documento}/becas"
  end

  def becas_asignadas_url(persona)
    url becas_asignadas_path(persona)
  end
end
