#
# SinkrateVisualizer addon
#
# @author Benedikt Hallinger, 2021

var main = func( addon ) {
    var root = addon.basePath;
    var myAddonId  = addon.id;
    var mySettingsRootPath = "/addons/by-id/" ~ myAddonId;
    
    print("Addon SinkrateVisualizer loading...");
    #io.load_nasal(root~"/srv.lcontroller", "canvas");
    canvas.MapStructure.loadFile(root~"/Nasal/canvas/map/FLTsink.lcontroller", "FLTsink");
    canvas.MapStructure.loadFile(root~"/Nasal/canvas/map/FLTsink.symbol", "FLTsink");
    io.load_nasal(root~"/sinkratevisualizer.nas", "SinkrateVisualizer");
    
    SinkrateVisualizer.openMap();
}
