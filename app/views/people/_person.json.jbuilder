json.extract! person, :id, :nombre, :apellido, :cedula, :correoElectronico, :telefono, :direccion, :created_at, :updated_at
json.url person_url(person, format: :json)
