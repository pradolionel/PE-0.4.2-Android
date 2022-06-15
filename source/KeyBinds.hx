import flixel.FlxG;
import flixel.input.FlxInput;
import flixel.input.actions.FlxAction;
import flixel.input.actions.FlxActionInput;
import flixel.input.actions.FlxActionInputDigital;
import flixel.input.actions.FlxActionManager;
import flixel.input.actions.FlxActionSet;
import flixel.input.gamepad.FlxGamepadButton;
import flixel.input.gamepad.FlxGamepadInputID;
import flixel.input.keyboard.FlxKey;

class KeyBinds
{
    public static function resetBinds():Void
    {
        //prim
        FlxG.save.data.noteUpBind = "W";
        FlxG.save.data.noteDownBind = "S";
        FlxG.save.data.noteLeftBind = "A";
        FlxG.save.data.noteRightBind = "D";

        FlxG.save.data.uiUpBind = "W";
        FlxG.save.data.uiDownBind = "S";
        FlxG.save.data.uiLeftBind = "A";
        FlxG.save.data.uiRightBind = "D";

        FlxG.save.data.acceptBind = "SPACE";
        FlxG.save.data.backBind = "BACKSPACE";
        FlxG.save.data.pauseBind = "ENTER";
        FlxG.save.data.resetBind = "R";
        //alts, though are they necessary?, guess gotta code them
        FlxG.save.data.noteUpALTBind = "UP";
        FlxG.save.data.noteDownALTBind = "DOWN";
        FlxG.save.data.noteLeftALTBind = "LEFT";
        FlxG.save.data.noteRightALTBind = "RIGHT";

        FlxG.save.data.uiUpALTBind = "UP";
        FlxG.save.data.uiDownALTBind = "DOWN";
        FlxG.save.data.uiLeftALTBind = "LEFT";
        FlxG.save.data.uiRightALTBind = "RIGHT";

        FlxG.save.data.altacceptBind = "ENTER";
        FlxG.save.data.altbackBind = "ESCAPE";
        FlxG.save.data.altpauseBind = "ESCAPE";
        FlxG.save.data.altresetBind = "NONE";

        PlayerSettings.player1.controls.loadKeyBinds();
	}

    public static function keyCheck():Void
    {
        //prims
        //notes
        if(FlxG.save.data.noteUpBind == null)
        {
            FlxG.save.data.noteUpBind = "W";
            FlxG.log.add("no note up");
        }
        if(FlxG.save.data.noteDownBind == null)
        {
            FlxG.save.data.noteDownBind = "S";
            FlxG.log.add("no note down");
        }
        if(FlxG.save.data.noteLeftBind == null)
        {
            FlxG.save.data.noteLeftBind = "A";
            FlxG.log.add("no note left");
        }
        if(FlxG.save.data.noteRightBind == null)
        {
            FlxG.save.data.noteRightBind = "D";
            FlxG.log.add("no note right");
        }

        //ui
        if(FlxG.save.data.uiUpBind == null)
        {
            FlxG.save.data.uiUpBind = "W";
            FlxG.log.add("no ui up");
        }
        if(FlxG.save.data.uiDownBind == null)
        {
            FlxG.save.data.uiDownBind = "S";
            FlxG.log.add("no ui down");
        }
        if(FlxG.save.data.uiLeftBind == null)
        {
            FlxG.save.data.uiLeftBind = "A";
            FlxG.log.add("no ui left");
        }
        if(FlxG.save.data.uiRightBind == null)
        {
            FlxG.save.data.uiRightBind = "D";
            FlxG.log.add("no ui right");
        }

        //other
        if(FlxG.save.data.acceptBind == null)
        {
            FlxG.save.data.acceptBind = "SPACE";
            FlxG.log.add("no accept");
        }
        if(FlxG.save.data.backBind == null)
        {
            FlxG.save.data.backBind = "BACKSPACE";
            FlxG.log.add("no back");
        }
        if(FlxG.save.data.pauseBind == null)
        {
            FlxG.save.data.pauseBind = "ENTER";
            FlxG.log.add("no pause");
        }
        if(FlxG.save.data.resetBind == null)
        {
            FlxG.save.data.resetBind = "R";
            FlxG.log.add("no reset");
        }


        //alts
        //notes
        if(FlxG.save.data.noteUpALTBind == null)
        {
            FlxG.save.data.noteUpALTBind = "UP";
            FlxG.log.add("no alt note up");
        }
        if(FlxG.save.data.noteDownALTBind == null)
        {
            FlxG.save.data.noteDownALTBind = "DOWN";
            FlxG.log.add("no alt note down");
        }
        if(FlxG.save.data.noteLeftALTBind == null)
        {
            FlxG.save.data.noteLeftALTBind = "LEFT";
            FlxG.log.add("no alt note left");
        }
        if(FlxG.save.data.noteRightALTBind == null)
        {
            FlxG.save.data.noteRightALTBind = "RIGHT";
            FlxG.log.add("no alt note right");
        }

        //ui
        if(FlxG.save.data.uiUpALTBind == null)
        {
            FlxG.save.data.uiUpALTBind = "UP";
            FlxG.log.add("no alt ui up");
        }
        if(FlxG.save.data.uiDownALTBind == null)
        {
            FlxG.save.data.uiDownALTBind = "DOWN";
            FlxG.log.add("no alt ui down");
        }
        if(FlxG.save.data.uiLeftALTBind == null)
        {
            FlxG.save.data.uiLeftALTBind = "LEFT";
            FlxG.log.add("no alt ui left");
        }
        if(FlxG.save.data.uiRightALTBind == null)
        {
            FlxG.save.data.uiRightALTBind = "RIGHT";
            FlxG.log.add("no alt ui right");
        }

        //other
        if(FlxG.save.data.altacceptBind == null)
        {
            FlxG.save.data.altacceptBind = "ENTER";
            FlxG.log.add("no alt accept");
        }
        if(FlxG.save.data.altbackBind == null)
        {
            FlxG.save.data.altbackBind = "ESCAPE";
            FlxG.log.add("no alt back");
        }
        if(FlxG.save.data.altpauseBind == null)
        {
            FlxG.save.data.altpauseBind = "ESCAPE";
            FlxG.log.add("no alt pause");
        }
        if(FlxG.save.data.altresetBind == null)
        {
            FlxG.save.data.altresetBind = "NONE";
            FlxG.log.add("no alt reset");
        }
    }
}