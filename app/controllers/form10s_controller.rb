class Form10sController < ApplicationController
  before_action :set_form10, only: [:show, :edit, :update, :destroy]
  before_action :set_fields, only: [:show, :edit]

  respond_to :html

  def index
    @form10s = Form10.all
    dashofintel
  end

  def show
    @nameForm = @form10.cliente.forms.order(:id)[9].name
    @clientes = Cliente.all
    dashofintel
  end

  def new
    @form10 = Form10.new
    dashofintel
  end

  def edit
    @clientes = Cliente.all
    @nameForm = @form10.cliente.forms.order(:id)[9].name
    dashofintel
  end

  def create
    @form10 = Form10.new(form10_params)
    @cliente = Cliente.find(params[:cliente_id])
    @clientes = Cliente.all
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
      if @form10.save
        format.html { redirect_to({ controller:"captures", action: 'index', id:@cliente.id }, notice: "El registro ha sido creado exitosamente") }
      else
        format.html { render action: 'new', :layout => "layout_2" }
        format.json { render json: @form10.errors, status: :unprocessable_entity }
      end
    end


  end

  def update
    respond_to do |format|
      if @form10.update(form10_params)
        format.html { redirect_to({controller: "captures" , action: 'index', id:@form10.cliente_id }, notice: "El registro ha sido actualizado exitosamente") }
        format.json { head :no_content }
      else
        format.html { render action: 'edit', :layout => "layout_3" }
        format.json { render json: @form10.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @form10.destroy
    respond_to do |format|
      format.html { redirect_to({controller: "captures" , action: 'index', id:@form10.cliente_id }, notice: "El registro ha sido eliminado exitosamente") }
      format.json { head :no_content }
    end
  end

  private
  def set_form10
    @form10 = Form10.find(params[:id])
  end

  def set_fields
    @fields
    if @form10.cliente.forms.count > 0
      @fields = @form10.cliente.forms.order(:id)[9].fields
    end
  end
  def form10_params
    fields=Hash.new
    fieldsDelete = []
    params[:form10].each_with_index { |p, i|
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
      params[:form10][k] = r[0] << "-" << r[1] << "-" << r[2]
    }
    fieldsDelete.each{|d|
      params[:form10].delete d
    }
    params[:form10][:usuario_id] = current_user.id
    if params[:action] == "create"
      params[:form10][:cliente_id] = params[:cliente_id]
    end

    params.require(:form10).permit(:cliente_id, :usuario_id, :field1, :field2, :field3, :field4, :field5, :field6, :field7, :field8, :field9, :field10, :field11, :field12, :field13, :field15, :field16, :field17, :field18, :field19, :field20)
  end
  def dashofintel
    render :layout => "layout_3"
  end
end
