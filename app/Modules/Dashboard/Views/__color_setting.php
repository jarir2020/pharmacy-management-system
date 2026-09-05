<?php
    $user_type = 1;
    
    include('google_fonts.php');
?>

    <!--/.Content Header (Page header)-->

                <div class="card mb-4">
                    <div class="card-header">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h6 class="fs-17 font-weight-600 mb-0">Theme Presets</h6>
                            </div>
                        </div>
                    </div>

                    <div class="card-body">
                        <p class="text-muted mb-3">Click a preset to apply its colors, fonts, and menu settings. Then click "Update" to save.</p>
                        <div class="row" id="themePresets">
                            <div class="col-md-2 mb-3">
                                <div class="theme-preset-card" data-preset="default" style="border: 2px solid #e0e0e0; border-radius: 8px; padding: 10px; cursor: pointer; transition: all .2s;">
                                    <div style="height: 60px; background: #bad6d8; border-radius: 4px; margin-bottom: 8px;"></div>
                                    <div style="display: flex; gap: 4px; margin-bottom: 8px;">
                                        <div style="flex: 1; height: 18px; background: #1864cd; border-radius: 2px;"></div>
                                        <div style="flex: 1; height: 18px; background: #3fb7de; border-radius: 2px;"></div>
                                    </div>
                                    <div style="text-align: center; font-weight: 600; font-size: 13px;">Default (Cyan)</div>
                                </div>
                            </div>

                            <div class="col-md-2 mb-3">
                                <div class="theme-preset-card" data-preset="green" style="border: 2px solid #e0e0e0; border-radius: 8px; padding: 10px; cursor: pointer; transition: all .2s;">
                                    <div style="height: 60px; background: #f4f6f9; border-radius: 4px; margin-bottom: 8px; border: 1px solid #ddd;"></div>
                                    <div style="display: flex; gap: 4px; margin-bottom: 8px;">
                                        <div style="flex: 1; height: 18px; background: #1e7e34; border-radius: 2px;"></div>
                                        <div style="flex: 1; height: 18px; background: #28a745; border-radius: 2px;"></div>
                                    </div>
                                    <div style="text-align: center; font-weight: 600; font-size: 13px;">Forest Green</div>
                                </div>
                            </div>

                            <div class="col-md-2 mb-3">
                                <div class="theme-preset-card" data-preset="blue" style="border: 2px solid #e0e0e0; border-radius: 8px; padding: 10px; cursor: pointer; transition: all .2s;">
                                    <div style="height: 60px; background: #f0f4f8; border-radius: 4px; margin-bottom: 8px; border: 1px solid #ddd;"></div>
                                    <div style="display: flex; gap: 4px; margin-bottom: 8px;">
                                        <div style="flex: 1; height: 18px; background: #1a3a5c; border-radius: 2px;"></div>
                                        <div style="flex: 1; height: 18px; background: #4a90e2; border-radius: 2px;"></div>
                                    </div>
                                    <div style="text-align: center; font-weight: 600; font-size: 13px;">Navy Blue</div>
                                </div>
                            </div>

                            <div class="col-md-2 mb-3">
                                <div class="theme-preset-card" data-preset="purple" style="border: 2px solid #e0e0e0; border-radius: 8px; padding: 10px; cursor: pointer; transition: all .2s;">
                                    <div style="height: 60px; background: #f5f0fa; border-radius: 4px; margin-bottom: 8px; border: 1px solid #ddd;"></div>
                                    <div style="display: flex; gap: 4px; margin-bottom: 8px;">
                                        <div style="flex: 1; height: 18px; background: #4a148c; border-radius: 2px;"></div>
                                        <div style="flex: 1; height: 18px; background: #9c27b0; border-radius: 2px;"></div>
                                    </div>
                                    <div style="text-align: center; font-weight: 600; font-size: 13px;">Royal Purple</div>
                                </div>
                            </div>

                            <div class="col-md-2 mb-3">
                                <div class="theme-preset-card" data-preset="sunset" style="border: 2px solid #e0e0e0; border-radius: 8px; padding: 10px; cursor: pointer; transition: all .2s;">
                                    <div style="height: 60px; background: #fff5f0; border-radius: 4px; margin-bottom: 8px; border: 1px solid #ddd;"></div>
                                    <div style="display: flex; gap: 4px; margin-bottom: 8px;">
                                        <div style="flex: 1; height: 18px; background: #c0392b; border-radius: 2px;"></div>
                                        <div style="flex: 1; height: 18px; background: #e67e22; border-radius: 2px;"></div>
                                    </div>
                                    <div style="text-align: center; font-weight: 600; font-size: 13px;">Sunset Orange</div>
                                </div>
                            </div>

                            <div class="col-md-2 mb-3">
                                <div class="theme-preset-card" data-preset="midnight" style="border: 2px solid #e0e0e0; border-radius: 8px; padding: 10px; cursor: pointer; transition: all .2s;">
                                    <div style="height: 60px; background: #0d1117; border-radius: 4px; margin-bottom: 8px;"></div>
                                    <div style="display: flex; gap: 4px; margin-bottom: 8px;">
                                        <div style="flex: 1; height: 18px; background: #161b22; border-radius: 2px;"></div>
                                        <div style="flex: 1; height: 18px; background: #58d68d; border-radius: 2px;"></div>
                                    </div>
                                    <div style="text-align: center; font-weight: 600; font-size: 13px;">Midnight Dark</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card mb-4">
                    <div class="card-header">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h6 class="fs-17 font-weight-600 mb-0">Color & Font Setting </h6>
                            </div>
                        </div>
                    </div>

                    <div class="card-body">

                        <?php echo form_open_multipart('dashboard/update_panel_setting');?>
                            <div class="card-body">
                                
                                <div class="row">

                                    <div class="col-md-2 pr-md-1">
                                        <div class="form-group">
                                            <label class="lebel font-weight-600">Font One</label>
                                            <select class="form-control " name="fontone">
                                                <option value="">--Select font--</option>
                                                <?php
                                                    foreach($google_fonts as $key => $va){

                                                ?>
                                                    <option value="<?php echo $key?>" <?php echo($key==@$setting->font_one?'selected':'')?>><?php echo esc($key)?></option>
                                                <?php }?>

                                            </select>
                                            <input type="hidden" name="id" value="<?php echo esc(@$setting->id)?>">
                                        </div>
                                    </div>

                                    
                                    <div class="col-md-2 pl-md-1">
                                        <div class="form-group">
                                            <label class="font-weight-600">Font Two</label>
                                            <select class="form-control"  name="fonttwo">
                                                <option value="">--Select font--</option>
                                                <?php foreach($google_fonts as $key => $va){?>
                                                    <option value="<?php echo $key?>" <?php echo($key==@$setting->font_two?'selected':'')?>><?php echo esc($key)?></option>
                                                <?php }?>
                                            </select>
                                        </div>
                                    </div>



                                    <div class="col-md-2 pr-md-1">
                                        <div class="form-group">
                                            <label class="font-weight-600">Body background color</label>
                                            <input type="color" id="basecolor"  pattern="^#+([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$" value="<?php echo esc(@$setting->color_code)?>" class="form-control"> 
                                        </div>
                                    </div>

                                    <div class="col-md-2 pl-md-1">
                                        <div class="form-group">
                                            <label class="font-weight-600">Color hex code<span class="text-danger">*</span></label>
                                            <input type="text" name="color_code" pattern="^#+([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$" value="<?php echo esc(@$setting->color_code)?>" id="basecolor_hexcolor" class="form-control">
                                        </div>
                                    </div>


                                    <div class="col-md-2 pr-md-1">
                                        <div class="form-group">
                                            <label class="font-weight-600">Body Font Size</label>
                                            <input type="text" name="body_font_size" value="<?php echo esc(@$setting->body_font_size)?>"  placeholder="14" class="form-control"> px
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-2 pl-md-1">
                                        <div class="form-group">
                                            <label class="font-weight-600">Line Hight</label>
                                            <input type="text" name="body_line_hight" value="<?php echo esc(@$setting->body_line_hight)?>" placeholder="1.5" class="form-control">
                                        </div>
                                    </div>

                                           <div class="col-md-2 pr-md-1">
                                            <div class="form-group">
                                                <label class="font-weight-600">Text Color</label>
                                                <input type="color" id="content_text_color"  pattern="^#+([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$" value="<?php echo esc(@$setting->content_text_color)?>" class="form-control"> 
                                            </div>
                                        </div>

                                        <div class="col-md-2 pl-md-1">
                                            <div class="form-group">
                                                <label class="font-weight-600">Color hex code<span class="text-danger">*</span></label>
                                                <input type="text" name="content_text_color" pattern="^#+([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$" value="<?php echo esc(@$setting->content_text_color)?>" id="content_text_color_hexcolor" class="form-control">
                                            </div>
                                        </div>

                                 <div class="col-md-2 pr-md-1">
                                            <div class="form-group">
                                                <label class="font-weight-600">Logo Text Color</label>
                                                <input type="color" id="logo_text_color"  pattern="^#+([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$" value="<?php echo esc(@$setting->logo_text_color)?>" class="form-control"> 
                                            </div>
                                        </div>

                                        <div class="col-md-2 pl-md-1">
                                            <div class="form-group">
                                                <label class="font-weight-600">Color hex code<span class="text-danger">*</span></label>
                                                <input type="text" name="logo_text_color" pattern="^#+([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$" value="<?php echo esc(@$setting->logo_text_color)?>" id="logo_text_color_hexcolor" class="form-control">
                                            </div>
                                        </div>
                                </div>



                                <fieldset>

                                    <legend> Menu </legend><hr>

                                    <div class="row">

                                        <div class="col-md-2 pr-md-1">
                                            <div class="form-group">
                                                <label class="font-weight-600">Menu bg color</label>
                                                <input type="color" id="menubg_color"  pattern="^#+([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$" value="<?php echo esc(@$setting->menubg_color)?>" class="form-control"> 
                                            </div>
                                        </div>

                                        <div class="col-md-2 pl-md-1">
                                            <div class="form-group">
                                                <label class="font-weight-600">Color hex code<span class="text-danger">*</span></label>
                                                <input type="text" name="menubg_color" pattern="^#+([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$" value="<?php echo esc(@$setting->menubg_color)?>" id="menubg_color_hexcolor" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-md-2 pr-md-1">
                                            <div class="form-group">
                                                <label class="font-weight-600">Menu hover color</label>
                                                <input type="color" id="menu_hover_color"  pattern="^#+([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$" value="<?php echo esc(@$setting->menu_hover_color)?>" class="form-control"> 
                                            </div>
                                        </div>

                                        <div class="col-md-2 pl-md-1">
                                            <div class="form-group">
                                                <label class="font-weight-600">Color hex code<span class="text-danger">*</span></label>
                                                <input type="text" name="menu_hover_color" pattern="^#+([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$" value="<?php echo esc(@$setting->menu_hover_color)?>" id="menu_hover_color_hexcolor" class="form-control">
                                            </div>
                                        </div>
                                    

                                        <div class="col-md-2 pr-md-1">
                                            <div class="form-group">
                                                <label class="font-weight-600">Menu Font color</label>
                                                <input type="color" id="menu_font_color"  pattern="^#+([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$" value="<?php echo esc(@$setting->menu_font_color)?>" class="form-control"> 
                                            </div>
                                        </div>

                                        <div class="col-md-2 pl-md-1">
                                            <div class="form-group">
                                                <label class="font-weight-600">Color hex code<span class="text-danger">*</span></label>
                                                <input type="text" name="menu_font_color" pattern="^#+([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$" value="<?php echo esc(@$setting->menu_font_color)?>" id="menu_font_color_hexcolor" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-md-2 pr-md-1">
                                            <div class="form-group">
                                                <label class="font-weight-600">Menu Font Size</label>
                                                <input type="text" name="menu_font_size" value="<?php echo esc(@$setting->menu_font_size)?>"  placeholder="14" class="form-control"> px
                                            </div>
                                        </div>

                                         <div class="col-md-2 pr-md-1">
                                            <div class="form-group">
                                                <label class="font-weight-600">Active menu color</label>
                                                <input type="color" id="active_menu_color"  pattern="^#+([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$" value="<?php echo esc(@$setting->active_menu_color)?>" class="form-control"> 
                                            </div>
                                        </div>

                                         <div class="col-md-2 pl-md-1">
                                            <div class="form-group">
                                                <label class="font-weight-600">Color hex code<span class="text-danger">*</span></label>
                                                <input type="text" name="active_menu_color" pattern="^#+([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$" value="<?php echo esc(@$setting->active_menu_color)?>" id="active_menu_color_hexcolor" class="form-control">
                                            </div>
                                        </div>

                                              <div class="col-md-2 pr-md-1">
                                            <div class="form-group">
                                                <label class="font-weight-600">Active menu bg color</label>
                                                <input type="color" id="active_menu_bgcolor"  pattern="^#+([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$" value="<?php echo esc(@$setting->active_menu_bgcolor)?>" class="form-control"> 
                                            </div>
                                        </div>

                                         <div class="col-md-2 pl-md-1">
                                            <div class="form-group">
                                                <label class="font-weight-600">Color hex code<span class="text-danger">*</span></label>
                                                <input type="text" name="active_menu_bgcolor" pattern="^#+([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$" value="<?php echo esc(@$setting->active_menu_bgcolor)?>" id="active_menu_bgcolor_hexcolor" class="form-control">
                                            </div>
                                        </div>
                                        
                                    </div>

                                </fieldset>
                                

                                <div class="row">
                                    <div class="col-md-6 ">
                                        <div class="form-group">
                                            <div class="radio radio-success radio-inline">
                                                <input type="radio" id="inlineRadio1" value="1" <?php echo (@$setting->active_status=='1'?'checked':'')?> name="active_status" >
                                                <label for="inlineRadio1"> Active </label>
                                            </div>

                                            <div class="radio radio-inline radio-warning">
                                                <input type="radio" id="inlineRadio2" value="0" <?php echo (@$setting->active_status=='0'?'checked':'')?> name="active_status">
                                                <label for="inlineRadio2"> Inactive </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="alert alert-warning">
                                            <strong> <i class="fas fa-exclamation-triangle"></i></strong>
                                            Note : Color, Font, Menu settings will be applied at active theme only
                                        </div>
                                    </div>
                                </div>

                            </div>




                            <div class="card-footer ">
                                <button type="submit" class="btn btn-fill btn-success"><?php echo lan('update')?></button>
                            </div>

                        <?php echo form_close();?>


                    </div>
                </div>

                <style>
                .theme-preset-card:hover {
                    border-color: #37a000 !important;
                    transform: translateY(-2px);
                    box-shadow: 0 4px 12px rgba(0,0,0,.1);
                }
                .theme-preset-card.active {
                    border-color: #37a000 !important;
                    box-shadow: 0 0 0 3px rgba(55, 160, 0, .2);
                }
                </style>

                <script>
                (function(){
                    var presets = {
                        default: {
                            color_code: '#bad6d8',
                            content_text_color: '#181616',
                            font_one: 'Poppins',
                            font_two: 'Roboto',
                            body_font_size: '14',
                            body_line_hight: '1.5',
                            menu_font_size: '13',
                            menu_line_hight: '1.5',
                            menubg_color: '#1864cd',
                            menu_hover_color: '#ffa53d',
                            menu_font_color: '#f3f2ec',
                            active_menu_color: '#f5f5f5',
                            active_menu_bgcolor: '#3fb7de',
                            logo_text_color: '#fafcf8'
                        },
                        green: {
                            color_code: '#f4f6f9',
                            content_text_color: '#212529',
                            font_one: 'Lato',
                            font_two: 'Open+Sans',
                            body_font_size: '14',
                            body_line_hight: '1.5',
                            menu_font_size: '14',
                            menu_line_hight: '1.5',
                            menubg_color: '#1e7e34',
                            menu_hover_color: '#90ee90',
                            menu_font_color: '#ffffff',
                            active_menu_color: '#ffffff',
                            active_menu_bgcolor: '#28a745',
                            logo_text_color: '#ffffff'
                        },
                        blue: {
                            color_code: '#f0f4f8',
                            content_text_color: '#1a3a5c',
                            font_one: 'Montserrat',
                            font_two: 'Source+Sans+Pro',
                            body_font_size: '14',
                            body_line_hight: '1.6',
                            menu_font_size: '14',
                            menu_line_hight: '1.6',
                            menubg_color: '#1a3a5c',
                            menu_hover_color: '#87ceeb',
                            menu_font_color: '#ffffff',
                            active_menu_color: '#ffffff',
                            active_menu_bgcolor: '#4a90e2',
                            logo_text_color: '#ffffff'
                        },
                        purple: {
                            color_code: '#f5f0fa',
                            content_text_color: '#2c2c54',
                            font_one: 'Nunito',
                            font_two: 'Quicksand',
                            body_font_size: '15',
                            body_line_hight: '1.6',
                            menu_font_size: '14',
                            menu_line_hight: '1.5',
                            menubg_color: '#4a148c',
                            menu_hover_color: '#ce93d8',
                            menu_font_color: '#f3e5f5',
                            active_menu_color: '#ffffff',
                            active_menu_bgcolor: '#9c27b0',
                            logo_text_color: '#ffffff'
                        },
                        sunset: {
                            color_code: '#fff5f0',
                            content_text_color: '#2c3e50',
                            font_one: 'Raleway',
                            font_two: 'Ubuntu',
                            body_font_size: '14',
                            body_line_hight: '1.5',
                            menu_font_size: '14',
                            menu_line_hight: '1.5',
                            menubg_color: '#c0392b',
                            menu_hover_color: '#f1c40f',
                            menu_font_color: '#ffffff',
                            active_menu_color: '#ffffff',
                            active_menu_bgcolor: '#e67e22',
                            logo_text_color: '#ffffff'
                        },
                        midnight: {
                            color_code: '#0d1117',
                            content_text_color: '#c9d1d9',
                            font_one: 'Inter',
                            font_two: 'JetBrains+Mono',
                            body_font_size: '14',
                            body_line_hight: '1.6',
                            menu_font_size: '14',
                            menu_line_hight: '1.6',
                            menubg_color: '#161b22',
                            menu_hover_color: '#58d68d',
                            menu_font_color: '#c9d1d9',
                            active_menu_color: '#ffffff',
                            active_menu_bgcolor: '#58d68d',
                            logo_text_color: '#58d68d'
                        }
                    };

                    var fieldMap = {
                        color_code: { picker: 'basecolor', hex: 'basecolor_hexcolor' },
                        content_text_color: { picker: 'content_text_color', hex: 'content_text_color_hexcolor' },
                        logo_text_color: { picker: 'logo_text_color', hex: 'logo_text_color_hexcolor' },
                        menubg_color: { picker: 'menubg_color', hex: 'menubg_color_hexcolor' },
                        menu_hover_color: { picker: 'menu_hover_color', hex: 'menu_hover_color_hexcolor' },
                        menu_font_color: { picker: 'menu_font_color', hex: 'menu_font_color_hexcolor' },
                        active_menu_color: { picker: 'active_menu_color', hex: 'active_menu_color_hexcolor' },
                        active_menu_bgcolor: { picker: 'active_menu_bgcolor', hex: 'active_menu_bgcolor_hexcolor' }
                    };

                    function setVal(name, val) {
                        var inputs = document.getElementsByName(name);
                        for (var i = 0; i < inputs.length; i++) {
                            inputs[i].value = val;
                        }
                    }

                    function applyPreset(name) {
                        var p = presets[name];
                        if (!p) return;

                        // Color/text settings with both color picker and hex input
                        for (var key in fieldMap) {
                            if (p[key] && p[key][0] === '#') {
                                setVal(key, p[key]);
                                var picker = document.getElementById(fieldMap[key].picker);
                                if (picker) picker.value = p[key];
                                var hex = document.getElementById(fieldMap[key].hex);
                                if (hex) hex.value = p[key];
                            } else if (p[key]) {
                                setVal(key, p[key]);
                            }
                        }

                        // Plain text fields
                        setVal('body_font_size', p.body_font_size);
                        setVal('body_line_hight', p.body_line_hight);
                        setVal('menu_font_size', p.menu_font_size);
                        setVal('menu_line_hight', p.menu_line_hight);

                        // Font selects
                        var fontOne = document.getElementsByName('fontone')[0];
                        var fontTwo = document.getElementsByName('fonttwo')[0];
                        if (fontOne) {
                            for (var i = 0; i < fontOne.options.length; i++) {
                                if (fontOne.options[i].value === p.font_one) {
                                    fontOne.selectedIndex = i;
                                    break;
                                }
                            }
                        }
                        if (fontTwo) {
                            for (var j = 0; j < fontTwo.options.length; j++) {
                                if (fontTwo.options[j].value === p.font_two) {
                                    fontTwo.selectedIndex = j;
                                    break;
                                }
                            }
                        }

                        // Auto-activate
                        var activeRadio = document.querySelector('input[name="active_status"][value="1"]');
                        if (activeRadio) activeRadio.checked = true;

                        // Highlight selected
                        document.querySelectorAll('.theme-preset-card').forEach(function(card){
                            card.classList.remove('active');
                        });
                        var selected = document.querySelector('[data-preset="'+name+'"]');
                        if (selected) selected.classList.add('active');
                    }

                    document.querySelectorAll('.theme-preset-card').forEach(function(card){
                        card.addEventListener('click', function(){
                            applyPreset(this.getAttribute('data-preset'));
                        });
                    });
                })();
                </script>
           


        