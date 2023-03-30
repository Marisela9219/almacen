
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
        Productos
        <small>Nuevo</small>
        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box box-solid">
            <div class="box-body">
                <div class="row">
                    <div class="col-md-12">
                        <?php if($this->session->flashdata("error")):?>
                            <div class="alert alert-danger alert-dismissible">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <p><i class="icon fa fa-ban"></i><?php echo $this->session->flashdata("error"); ?></p>
                                
                             </div>
                        <?php endif;?>
                        <form action="<?php echo base_url();?>mantenimiento/productos/store" method="POST">
                            <div class="form-group <?php echo !empty(form_error('codigo')) ? 'has-error':'';?>">
                                <label for="codigo">Codigo:</label>
                                <input type="text" class="form-control" id="codigo" name="codigo" value="<?php echo set_value('codigo');?>">
                                <?php echo form_error("codigo","<span class='help-block'>","</span>");?>
                            </div>
                            <div class="form-group <?php echo !empty(form_error('nombre')) ? 'has-error':'';?>">
                                <label for="nombre">Nombre:</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" value="<?php echo set_value('nombre');?>">
                                <?php echo form_error("nombre","<span class='help-block'>","</span>");?>
                            </div>
                            <div class="form-group ">
                                <label for="descripcion">Descripcion:</label>
                                <input type="text" class="form-control" id="descripcion" name="descripcion">
                            </div>
                            <div class="form-group ">
                                <label for="lote">lote:</label>
                                <input type="text" class="form-control" id="lote" name="lote">
                            </div>
                            <div class="form-group ">
                                <label for="fecha_vence">fecha_vence:</label>
                                <input type="date" class="form-control" id="fecha_vence" name="fecha_vence">
                            </div>
                            <div class="form-group <?php echo !empty(form_error('precio')) ? 'has-error':'';?>">
                                <label for="precio">Precio:</label>
                                <input type="text" class="form-control" id="precio" name="precio" value="<?php echo set_value('precio');?>">
                                <?php echo form_error("precio","<span class='help-block'>","</span>");?>
                            </div>
                            <div class="form-group <?php echo !empty(form_error('stock')) ? 'has-error':'';?>">
                                <label for="stock">Stock:</label>
                                <input type="text" class="form-control" id="stock" name="stock" value="<?php echo set_value('stock');?>">
                                <?php echo form_error("stock","<span class='help-block'>","</span>");?>
                            </div>
                            <div class="form-group">
                                <label for="almacen">Categoria:</label>
                                <select name="almacen" id="almacen" class="form-control">
                                    <?php foreach($almacenes as $almacen):?>
                                        <option value="<?php echo $almacen->id?>"><?php echo $almacen->nombre;?></option>
                                    <?php endforeach;?>
                                </select>
                            </div>
                             <div class="form-group">
                                <label for="proveedores">Provedores:</label>
                                <select name="proveedores" id="proveedores" class="form-control">
                                    <?php foreach($proveedores as $proveedor):?>
                                        <option value="<?php echo $proveedor->id?>"><?php echo $proveedor->nombre;?></option>
                                    <?php endforeach;?>
                                </select>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-success btn-flat">Guardar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
