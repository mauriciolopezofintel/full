class CreateMensajeConfiguracions < ActiveRecord::Migration
  def change
    create_table :mensaje_configuracions do |t|
      t.boolean :cliente
      t.boolean :ticket
      t.boolean :rt
      t.boolean :fecha
      t.boolean :destinatario
      t.boolean :remitente
      t.boolean :compania
      t.boolean :telefono
      t.boolean :ciudadEstado
      t.boolean :municipio
      t.boolean :email
      t.boolean :motivoLlamada
      t.boolean :accionRealizada
      t.boolean :observaciones
      t.boolean :polizaContrato
      t.boolean :direccion
      t.boolean :descripcionEmergencia
      t.boolean :identificarSistema
      t.boolean :referencia
      t.boolean :comentariosExtra
      t.boolean :avisoNombre
      t.boolean :avisoFecha
      t.boolean :notificoNombre
      t.boolean :notificoFechaHora
      t.boolean :rllsOperador
      t.boolean :rllsFechaHora
      t.boolean :tiempoRespuesta
      t.boolean :notificacionLlegadaSitio
      t.boolean :rteOperador
      t.boolean :rteFechaHora
      t.boolean :situacionEmergencia
      t.boolean :duracionEmeregencia
      t.boolean :faltaSuministroGas
      t.boolean :sucursal
      t.boolean :tipoLlamada
      t.boolean :codigo
      t.boolean :horaEnlace
      t.boolean :medioSeEntero
      t.boolean :terminoChat
      t.boolean :razaMascota
      t.boolean :edad
      t.boolean :codigoAcceso
      t.boolean :codigoOrganizador
      t.boolean :fijoMovil
      t.boolean :telefonoOrigen
      t.boolean :audoconferenciaReporta
      t.boolean :paisOrigino
      t.boolean :localidadOrigino
      t.boolean :motivoDenuncia
      t.boolean :tipoDelito
      t.boolean :puestoInvolucrado
      t.boolean :resultadoEstatus
      t.boolean :emailContacto
      t.boolean :marca
      t.boolean :modelo
      t.boolean :serie
      t.boolean :beneficiario
      t.boolean :contactoBeneficiario
      t.boolean :nombreFiado
      t.boolean :puestoFiado
      t.boolean :montoReportar
      t.boolean :enlazadaCorrectamente
      t.boolean :intentosEnlace
      t.boolean :duracionLlamada
      t.boolean :origenCodigoGami
      t.boolean :codigoGami
      t.boolean :tipoEmergencia
      t.boolean :empresaCodigoGami
      t.boolean :nomenclaturaSistema
      t.boolean :personaRecibe
      t.boolean :razonSocial
      t.boolean :rfc
      t.boolean :ticketCliente
      t.boolean :relacionPaciente
      t.boolean :lugarTumor
      t.boolean :institucionAtiende
      t.boolean :medicoTratante
      t.boolean :programaInteres
      t.boolean :club
      t.boolean :handicap
      t.boolean :redConecta
      t.boolean :intensidadSenal
      t.boolean :ubicacionFisica
      t.boolean :ipv4
      t.boolean :macAddress
      t.boolean :hotel
      t.boolean :habitacion
      t.boolean :usuario
      t.boolean :contrasena
      t.boolean :tiempoContrato
      t.boolean :dispositivo
      t.boolean :acuse
      t.boolean :fechaCirugia
      t.boolean :hospital
      t.boolean :tipoCirugia
      t.boolean :especidalidad
      t.boolean :paciente
      t.boolean :cargoPersona
      t.boolean :telefonoMedico
      t.boolean :equipoEspecial
      t.boolean :telefonoPaciente
      t.boolean :procedimiento
      t.boolean :fechaProcedimiento
      t.boolean :equipoDetenido
      t.boolean :fianza
      t.boolean :inclusion
      t.boolean :codigoSeguridad
      t.boolean :numeroControl
      t.boolean :lineaValidacion
      t.boolean :tipoPoliza
      t.boolean :telefonoFiado
      t.boolean :direccionFiado
      t.boolean :lugarFianza
      t.boolean :vendedorFianza
      t.boolean :formaPagoFianza

      t.timestamps
    end
  end
end