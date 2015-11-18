class ChangeDataTypeForMensajeConfiguracion < ActiveRecord::Migration
  def change
    change_column :mensaje_configuracions, :ticket, :string
    change_column :mensaje_configuracions, :compania, :string
    change_column :mensaje_configuracions, :polizaContrato, :string
    change_column :mensaje_configuracions, :descripcionEmergencia, :string
    change_column :mensaje_configuracions, :identificarSistema, :string
    change_column :mensaje_configuracions, :referencia, :string
    change_column :mensaje_configuracions, :comentariosExtra, :string
    change_column :mensaje_configuracions, :avisoNombre, :string
    change_column :mensaje_configuracions, :avisoFecha, :string
    change_column :mensaje_configuracions, :notificoNombre, :string
    change_column :mensaje_configuracions, :notificoFechaHora, :string
    change_column :mensaje_configuracions, :rllsOperador, :string
    change_column :mensaje_configuracions, :rllsFechaHora, :string
    change_column :mensaje_configuracions, :tiempoRespuesta, :string
    change_column :mensaje_configuracions, :notificacionLlegadaSitio, :string
    change_column :mensaje_configuracions, :rteOperador, :string
    change_column :mensaje_configuracions, :rteFechaHora, :string
    change_column :mensaje_configuracions, :situacionEmergencia, :string
    change_column :mensaje_configuracions, :duracionEmeregencia, :string
    change_column :mensaje_configuracions, :faltaSuministroGas, :string
    change_column :mensaje_configuracions, :sucursal, :string
    change_column :mensaje_configuracions, :tipoLlamada, :string
    change_column :mensaje_configuracions, :codigo, :string
    change_column :mensaje_configuracions, :horaEnlace, :string
    change_column :mensaje_configuracions, :medioSeEntero, :string
    change_column :mensaje_configuracions, :terminoChat, :string
    change_column :mensaje_configuracions, :razaMascota, :string
    change_column :mensaje_configuracions, :edad, :string
    change_column :mensaje_configuracions, :codigoAcceso, :string
    change_column :mensaje_configuracions, :codigoOrganizador, :string
    change_column :mensaje_configuracions, :fijoMovil, :string
    change_column :mensaje_configuracions, :telefonoOrigen, :string
    change_column :mensaje_configuracions, :paisOrigino, :string
    change_column :mensaje_configuracions, :localidadOrigino, :string
    change_column :mensaje_configuracions, :motivoDenuncia, :string
    change_column :mensaje_configuracions, :tipoDelito, :string
    change_column :mensaje_configuracions, :puestoInvolucrado, :string
    change_column :mensaje_configuracions, :resultadoEstatus, :string
    change_column :mensaje_configuracions, :emailContacto, :string
    change_column :mensaje_configuracions, :marca, :string
    change_column :mensaje_configuracions, :modelo, :string
    change_column :mensaje_configuracions, :serie, :string
    change_column :mensaje_configuracions, :beneficiario, :string
    change_column :mensaje_configuracions, :contactoBeneficiario, :string
    change_column :mensaje_configuracions, :nombreFiado, :string
    change_column :mensaje_configuracions, :puestoFiado, :string
    change_column :mensaje_configuracions, :montoReportar, :string
    change_column :mensaje_configuracions, :enlazadaCorrectamente, :string
    change_column :mensaje_configuracions, :intentosEnlace, :string
    change_column :mensaje_configuracions, :duracionLlamada, :string
    change_column :mensaje_configuracions, :origenCodigoGami, :string
    change_column :mensaje_configuracions, :codigoGami, :string
    change_column :mensaje_configuracions, :tipoEmergencia, :string
    change_column :mensaje_configuracions, :empresaCodigoGami, :string
    change_column :mensaje_configuracions, :nomenclaturaSistema, :string
    change_column :mensaje_configuracions, :personaRecibe, :string
    change_column :mensaje_configuracions, :razonSocial, :string
    change_column :mensaje_configuracions, :rfc, :string
    change_column :mensaje_configuracions, :ticketCliente, :string
    change_column :mensaje_configuracions, :relacionPaciente, :string
    change_column :mensaje_configuracions, :lugarTumor, :string
    change_column :mensaje_configuracions, :institucionAtiende, :string
    change_column :mensaje_configuracions, :medicoTratante, :string
    change_column :mensaje_configuracions, :programaInteres, :string
    change_column :mensaje_configuracions, :club, :string
    change_column :mensaje_configuracions, :handicap, :string
    change_column :mensaje_configuracions, :redConecta, :string
    change_column :mensaje_configuracions, :intensidadSenal, :string
    change_column :mensaje_configuracions, :ubicacionFisica, :string
    change_column :mensaje_configuracions, :ipv4, :string
    change_column :mensaje_configuracions, :macAddress, :string
    change_column :mensaje_configuracions, :hotel, :string
    change_column :mensaje_configuracions, :habitacion, :string
    change_column :mensaje_configuracions, :usuario, :string
    change_column :mensaje_configuracions, :contrasena, :string
    change_column :mensaje_configuracions, :tiempoContrato, :string
    change_column :mensaje_configuracions, :dispositivo, :string
    change_column :mensaje_configuracions, :acuse, :string
    change_column :mensaje_configuracions, :fechaCirugia, :string
    change_column :mensaje_configuracions, :hospital, :string
    change_column :mensaje_configuracions, :tipoCirugia, :string
    change_column :mensaje_configuracions, :especidalidad, :string
    change_column :mensaje_configuracions, :paciente, :string
    change_column :mensaje_configuracions, :cargoPersona, :string
    change_column :mensaje_configuracions, :telefonoMedico, :string
    change_column :mensaje_configuracions, :equipoEspecial, :string
    change_column :mensaje_configuracions, :telefonoPaciente, :string
    change_column :mensaje_configuracions, :procedimiento, :string
    change_column :mensaje_configuracions, :fechaProcedimiento, :string
    change_column :mensaje_configuracions, :equipoDetenido, :string
    change_column :mensaje_configuracions, :fianza, :string
    change_column :mensaje_configuracions, :inclusion, :string
    change_column :mensaje_configuracions, :codigoSeguridad, :string
    change_column :mensaje_configuracions, :numeroControl, :string
    change_column :mensaje_configuracions, :lineaValidacion, :string
    change_column :mensaje_configuracions, :tipoPoliza, :string
    change_column :mensaje_configuracions, :telefonoFiado, :string
    change_column :mensaje_configuracions, :direccionFiado, :string
    change_column :mensaje_configuracions, :lugarFianza, :string
    change_column :mensaje_configuracions, :vendedorFianza, :string
    change_column :mensaje_configuracions, :formaPagoFianza, :string
    change_column :mensaje_configuracions, :audioconferenciaReporta, :string


  end
end