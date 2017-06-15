<div id="signature-pad" class="m-signature-pad" style='z-index:-1;'>
    <div id='contenedorcanvas' class="m-signature-pad--body">
      <canvas></canvas>
    </div>
    <div class="m-signature-pad--footer">
      <div class="description"><h3>Aceptación de los Terminos del Servicio</h3>
      	<p>Confirmo que he leido y acepto los terminos del servicio</p>
      </div>
      <div class="left">
        <button type="button" class="button clear" data-action="clear">Limpiar</button>
      </div>
      <div class="right">
        <button type="button" class="button save" data-action="save-png">Guardar</button>
        <button type="button" class="button save" data-action="save-svg">Save as SVG</button>
      </div>
    </div>
</div>

{!!Html::script("js/signature/signature_pad.js")!!}
{!!Html::script("js/signature/app.js")!!}