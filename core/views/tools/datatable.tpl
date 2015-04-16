<div class="col-lg-12">

    {include file='tools/datatable-search.tpl'}

   <!-- Datatable-->
   <div class="ibox float-e-margins">
        <div class="ibox-content">
            <!-- Add / Actions -->
              <div class="configuration-actions">
                <button class="btnC btnSuccess" id="modalAdd">{t}Add {$objectName}{/t}</button>
              </div>
              <div class="btn-group" id="selected_option" style="display: none; margin-left:75px">
                <div class="btn-group btn-group-sm">
                  <button type="button" class="btnC btnDefault dropdown-toggle" data-toggle="dropdown">
                    {t}Actions{/t}
                    <span class="caret"></span>
                  </button>
                  <ul name="action-bar" class="dropdown-menu">
                    {if $isDisableable}
                        <li><a href="#" id="modalEnable">{t}Enable{/t}</a></li>
                        <li><a href="#" id="modalDisable">{t}Disable{/t}</a></li>
                    {/if}
                    <li><a href="#" id="modalDelete">{t}Delete{/t}</a></li>
                    <li><a href="#" id="modalDuplicate">{t}Duplicate{/t}</a></li>
                    <li><a href="#" id="modalMassiveChange">{t}Massive change{/t}</a></li>
                  </ul>
                </div>
                <div class="btn-group btn-group-sm hidden" id="addToGroup">
                  <button type="button" class="btn btnDefault dropdown-toggle" data-toggle="dropdown">
                    {t}Add to{/t}
                    <span class="caret"></span>
                  </button>
                  <ul class="dropdown-menu">
                    {if isset($datatableParameters.groupname) }<li><a href="#">{$datatableParameters.groupname}</a></li>{/if}
                    {if isset($datatableParameters.hasCategory) }<li><a href="#">{t}Category{/t}</a></li>{/if}
                    {if !isset($datatableParameters.addToHook) }{$datatableParameters.addToHook = array()}{/if}
                    {hook name='displayAppendAddTo' container='[hook]' params=$datatableParameters.addToHook}
                  </ul>
                </div>
              </div>

            <table class="table table-striped table-bordered table-hover centreon_table" id="datatable{$object}" ></table>
        </div>
   </div>
</div>

