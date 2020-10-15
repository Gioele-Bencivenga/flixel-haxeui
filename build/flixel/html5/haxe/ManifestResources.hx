package;


import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		data = '{"name":null,"assets":"aoy4:pathy22:assets%2Fmain-view.xmly4:sizei125y4:typey4:TEXTy2:idR1y7:preloadtgoR2i2114R3y5:MUSICR5y26:flixel%2Fsounds%2Fbeep.mp3y9:pathGroupaR8y26:flixel%2Fsounds%2Fbeep.ogghR6tgoR2i39706R3R7R5y28:flixel%2Fsounds%2Fflixel.mp3R9aR11y28:flixel%2Fsounds%2Fflixel.ogghR6tgoR2i5794R3y5:SOUNDR5R10R9aR8R10hgoR2i33629R3R13R5R12R9aR11R12hgoR2i15744R3y4:FONTy9:classNamey35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfR6tgoR2i29724R3R14R15y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfR6tgoR0y33:flixel%2Fimages%2Fui%2Fbutton.pngR2i519R3y5:IMAGER5R20R6tgoR0y36:flixel%2Fimages%2Flogo%2Fdefault.pngR2i3280R3R21R5R22R6tgoR0y46:haxeui-flixel%2Fstyles%2Fdefault%2Fbuttons.cssR2i662R3R4R5R23R6tgoR0y49:haxeui-flixel%2Fstyles%2Fdefault%2Fcheckboxes.cssR2i840R3R4R5R24R6tgoR0y46:haxeui-flixel%2Fstyles%2Fdefault%2Fdialogs.cssR2i729R3R4R5R25R6tgoR0y48:haxeui-flixel%2Fstyles%2Fdefault%2Fdropdowns.cssR2i1028R3R4R5R26R6tgoR0y45:haxeui-flixel%2Fstyles%2Fdefault%2Fframes.cssR2i379R3R4R5R27R6tgoR0y51:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Fbox.pngR2i912R3R21R5R28R6tgoR0y54:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Fbutton.pngR2i247R3R21R5R29R6tgoR0y60:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Fbutton_arrow.pngR2i292R3R21R5R30R6tgoR0y65:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Fbutton_arrow_down.pngR2i272R3R21R5R31R6tgoR0y64:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Fbutton_no_border.pngR2i251R3R21R5R32R6tgoR0y56:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Fcheckbox.pngR2i164R3R21R5R33R6tgoR0y58:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Fdown_arrow.pngR2i124R3R21R5R34R6tgoR0y65:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Fdown_arrow_square.pngR2i133R3R21R5R35R6tgoR0y56:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Fdropdown.pngR2i273R3R21R5R36R6tgoR0y53:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Fframe.pngR2i130R3R21R5R37R6tgoR0y63:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Fhaxeflixel_tiny.pngR2i6016R3R21R5R38R6tgoR0y58:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Finset_thin.pngR2i209R3R21R5R39R6tgoR0y68:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Finset_thin_no_border.pngR2i198R3R21R5R40R6tgoR0y58:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Fleft_arrow.pngR2i140R3R21R5R41R6tgoR0y57:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Foptionbox.pngR2i217R3R21R5R42R6tgoR0y59:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Fright_arrow.pngR2i140R3R21R5R43R6tgoR0y66:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Fright_arrow_square.pngR2i139R3R21R5R44R6tgoR0y54:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Ftabbar.pngR2i234R3R21R5R45R6tgoR0y57:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Ftabbar_bg.pngR2i132R3R21R5R46R6tgoR0y58:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Ftabview_bg.pngR2i179R3R21R5R47R6tgoR0y56:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Fup_arrow.pngR2i131R3R21R5R48R6tgoR0y62:haxeui-flixel%2Fstyles%2Fdefault%2Fimages%2Fup_down_arrows.pngR2i152R3R21R5R49R6tgoR0y48:haxeui-flixel%2Fstyles%2Fdefault%2Flistviews.cssR2i157R3R4R5R50R6tgoR0y43:haxeui-flixel%2Fstyles%2Fdefault%2Fmain.cssR2i32R3R4R5R51R6tgoR0y52:haxeui-flixel%2Fstyles%2Fdefault%2Fpropertygrids.cssR2i1411R3R4R5R52R6tgoR0y45:haxeui-flixel%2Fstyles%2Fdefault%2Franges.cssR2i2077R3R4R5R53R6tgoR0y46:haxeui-flixel%2Fstyles%2Fdefault%2Fscrolls.cssR2i2679R3R4R5R54R6tgoR0y47:haxeui-flixel%2Fstyles%2Fdefault%2Fsteppers.cssR2i718R3R4R5R55R6tgoR0y49:haxeui-flixel%2Fstyles%2Fdefault%2Ftableviews.cssR2i175R3R4R5R56R6tgoR0y43:haxeui-flixel%2Fstyles%2Fdefault%2Ftabs.cssR2i1615R3R4R5R57R6tgoR0y49:haxeui-flixel%2Fstyles%2Fdefault%2Ftextfields.cssR2i453R3R4R5R58R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_main_view_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_buttons_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_checkboxes_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_dialogs_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_dropdowns_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_frames_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_button_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_button_arrow_down_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_button_no_border_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_checkbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_down_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_down_arrow_square_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_dropdown_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_frame_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_haxeflixel_tiny_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_inset_thin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_inset_thin_no_border_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_left_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_optionbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_right_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_right_arrow_square_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_tabbar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_tabbar_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_tabview_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_up_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_up_down_arrows_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_listviews_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_main_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_propertygrids_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_ranges_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_scrolls_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_steppers_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_tableviews_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_tabs_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_textfields_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:file("assets/main-view.xml") @:noCompletion #if display private #end class __ASSET__assets_main_view_xml extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,8,1/assets/sounds/beep.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,8,1/assets/sounds/flixel.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,8,1/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,8,1/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("build/flixel/html5/obj/webfont/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("build/flixel/html5/obj/webfont/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,8,1/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,8,1/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/buttons.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_buttons_css extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/checkboxes.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_checkboxes_css extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/dialogs.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_dialogs_css extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/dropdowns.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_dropdowns_css extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/frames.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_frames_css extends haxe.io.Bytes {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/box.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_box_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/button.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/button_arrow.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_button_arrow_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/button_arrow_down.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_button_arrow_down_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/button_no_border.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_button_no_border_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/checkbox.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_checkbox_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/down_arrow.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_down_arrow_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/down_arrow_square.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_down_arrow_square_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/dropdown.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_dropdown_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/frame.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_frame_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/haxeflixel_tiny.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_haxeflixel_tiny_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/inset_thin.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_inset_thin_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/inset_thin_no_border.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_inset_thin_no_border_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/left_arrow.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_left_arrow_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/optionbox.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_optionbox_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/right_arrow.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_right_arrow_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/right_arrow_square.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_right_arrow_square_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/tabbar.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_tabbar_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/tabbar_bg.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_tabbar_bg_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/tabview_bg.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_tabview_bg_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/up_arrow.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_up_arrow_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/images/up_down_arrows.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_images_up_down_arrows_png extends lime.graphics.Image {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/listviews.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_listviews_css extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/main.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_main_css extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/propertygrids.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_propertygrids_css extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/ranges.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_ranges_css extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/scrolls.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_scrolls_css extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/steppers.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_steppers_css extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/tableviews.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_tableviews_css extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/tabs.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_tabs_css extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/textfields.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_textfields_css extends haxe.io.Bytes {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -640; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat"; #else ascender = 968; descender = -251; height = 1219; numGlyphs = 263; underlinePosition = -150; underlineThickness = 50; unitsPerEM = 1000; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end
