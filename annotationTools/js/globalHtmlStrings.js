/**
 * Created by zaoyang on 2/7/17.
 */
var enterObjectNameHtml = "<b>Use the drop down menu to select the right part: </b><br />";
var doneInputButtonHtml = '<input type="button" value="Done" title="Press this button after you have provided all the information you want about the object." onclick="main_handler.SubmitQuery();" tabindex="0" />';
var doneEditInputButtonHtml = '<input type="button" value="Done" title="Press this button when you are done editing." onclick="main_handler.SubmitEditLabel();" tabindex="0" />'


var pointOrLineChoices = 'line,horizon line';
var addPartsHtml = '<input type="button" value="Add parts" title="Press this button if you want to start adding parts" onclick="main_handler.StartAddParts();" tabindex="0" />';
var stopPartsHtml = '<input type="button" value="Stop parts" title="Press this button if you want to stop adding parts" onclick="main_handler.StopAddParts();" tabindex="0" />';


var colors = ['red', 'yellow', 'blue', 'purple', 'orange', 'green', 'white', 'black', 'pink', 'beige', 'brown', 'grey'];

var basicSelections = {
    "wallColor" : colors,
    "window" : ['small', 'medium', 'large', 'landscape', 'floor_to_ceiling'],
    "floor" : ['mosaic', 'tile', 'concrete', 'laminate', 'carpet'],
    "wallMaterial" : ['granite', 'tile', 'wood', 'marble', 'painted', 'wallpaper', 'brick'],
    "ceiling" : ['normal', 'tall'],
    "fireplace" : ['stone', 'concrete', 'brick'],
    "entertainment center" : [],
    "view" : ['building', 'water', 'green'],
    "crown molding" : [],
    "baseboard" : [],
    "loft" : [],
    "countertop" : ['wood', 'stone', 'plastic'],
    "lighting": ['chandeliers', 'pendants', 'recessed_lighting', 'wall_lighting', 'utility_lighting'],
    "door": ['open','closed']
};


var bathroom = {
    "vanity": ['small', 'medium', 'large', 'wood', 'concrete', 'double vanity', 'just_a_sink'],
    "sink" : [],
    "shower": ['curtain', 'window_door', 'two_showers_together'],
    "color": [],
    "jacuzzi": [],
    "bath_tub": [],
}

var bedroom = {
    "baseboard": [''],
    "chandelier": [''],
    "big_closet": ['']
}

var living_room = {
}

var dining = {
    "entertainment_set": [''],
    "balcony": [''],
    "patio": ['']
}

var kitchen = {
    "island": [],
    "cabinet_color": colors,
    "cabinet_door": ['glass_door', 'wood_door'],
    "kitchen": []
}
