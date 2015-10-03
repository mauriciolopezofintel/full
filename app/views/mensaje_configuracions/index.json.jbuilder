json.array!(@mensaje_configuracions) do |mensaje_configuracion|
  json.extract! mensaje_configuracion, :id, :cliente, :ticket, :rt, :fecha, :destinatario, :remitente, :compania, :telefono, :ciudadEstado, :municipio, :email, :motivoLlamada, :accionRealizada, :observaciones, :polizaContrato, :direccion, :descripcionEmergencia, :identificarSistema, :referencia, :comentariosExtra, :avisoNombre, :avisoFecha, :notificoNombre, :notificoFechaHora, :rllsOperador, :rllsFechaHora, :tiempoRespuesta, :notificacionLlegadaSitio, :rteOperador, :rteFechaHora, :situacionEmergencia, :duracionEmeregencia, :faltaSuministroGas, :sucursal, :tipoLlamada, :codigo, :horaEnlace, :medioSeEntero, :terminoChat, :razaMascota, :edad, :codigoAcceso, :codigoOrganizador, :fijoMovil, :telefonoOrigen, :audoconferenciaReporta, :paisOrigino, :localidadOrigino, :motivoDenuncia, :tipoDelito, :puestoInvolucrado, :resultadoEstatus, :emailContacto, :marca, :modelo, :serie, :beneficiario, :contactoBeneficiario, :nombreFiado, :puestoFiado, :montoReportar, :enlazadaCorrectamente, :intentosEnlace, :duracionLlamada, :origenCodigoGami, :codigoGami, :tipoEmergencia, :empresaCodigoGami, :nomenclaturaSistema, :personaRecibe, :razonSocial, :rfc, :ticketCliente, :relacionPaciente, :lugarTumor, :institucionAtiende, :medicoTratante, :programaInteres, :club, :handicap, :redConecta, :intensidadSenal, :ubicacionFisica, :ipv4, :macAddress, :hotel, :habitacion, :usuario, :contrasena, :tiempoContrato, :dispositivo, :acuse, :fechaCirugia, :hospital, :tipoCirugia, :especidalidad, :paciente, :cargoPersona, :telefonoMedico, :equipoEspecial, :telefonoPaciente, :procedimiento, :fechaProcedimiento, :equipoDetenido, :fianza, :inclusion, :codigoSeguridad, :numeroControl, :lineaValidacion, :tipoPoliza, :telefonoFiado, :direccionFiado, :lugarFianza, :vendedorFianza, :formaPagoFianza
  json.url mensaje_configuracion_url(mensaje_configuracion, format: :json)
end
