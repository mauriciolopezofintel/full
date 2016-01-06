class Form2sController < ApplicationController
  before_action :set_form2, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @form2s = Form2.all
    dashboard_panel
  end

  def show
    dashboard_panel
  end

  def new
    @form2 = Form2.new
    dashboard_panel
  end

  def edit
  end

  def create
    @form2 = Form2.new(form2_params)
    @cliente = Cliente.find(params[:cliente_id])
    @clientes = Cliente.all #Aqui en el futuro deberé solamente traer los clientes a los que está asociado el operador
    logger.debug @clientes.count
    @direccion =nil
    @horario =nil
    @contacto=nil

    direcciones = Direccion.where(:cliente_id => params[:cliente_id], :matriz => true)
    if (direcciones.size > 0)
      @direccion = direcciones[0]
    end

    @horario = Horario.find(@cliente.datosgenerale.horario_id)
    @contacto = Contacto.find(@cliente.datosgenerale.contacto1_id)
    @sucursales = Sucursal.where(:cliente_id => params[:cliente_id])

    respond_to do |format|
      if @form2.save
        #format.html { redirect_to captures_path, notice: 'El registro ha sido creado exitosamente' }
        logger.debug @clientes.count
        format.html { redirect_to({ controller:"captures", action: 'index', id:@cliente.id }, notice: "El registro ha sido creado exitosamente") }
      else
        format.html { render action: 'new', :layout => "layout_2" }
        format.json { render json: @form2.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @form2.update(form2_params)
    dashboard_panel
  end

  def destroy
    @form2.destroy
    dashboard_panel
  end

  private
    def set_form2
      @form2 = Form2.find(params[:id])
    end

  def form2_params
    fields=Hash.new
    fieldsDelete = []
    params[:form2].each_with_index { |p, i|
      if !(/(\di)/ =~ p.to_s).nil?
        fieldsDelete.push p[0]
        key=p[0].slice(0,p[0].length-4)
        if fields[key.to_sym].nil?
          fields[key.to_sym] = p[1]
        else
          fields[key.to_sym] = fields[key.to_sym] << "-" << p[1]
        end

      end
    }
    fields.each_pair{|k,v|
      r = v.split("-").reverse!
      params[:form2][k] = r[0] << "-" << r[1] << "-" << r[2]
    }
    fieldsDelete.each{|d|
      params[:form2].delete d
    }
    params[:form2][:usuario_id] = current_user.id
    params.require(:form2).permit(:cliente_id, :usuario_id, :field1, :field2, :field3, :field4, :field5, :field6, :field7, :field8, :field9, :field10, :field11, :field12, :field13, :field15, :field16, :field17, :field18, :field19, :field20)
  end

  def dashboard_panel
    render :layout => "layout_3"
  end
end