var openMap =  func() {
    var temp = {};
    temp.dlg = canvas.Window.new([400,400],"dialog");
    temp.canvas = temp.dlg.createCanvas().setColorBackground(1,1,1,0.5);
    temp.root = temp.canvas.createGroup();
    var TestMap = temp.root.createChild("map");
    TestMap.setController("Aircraft position");
    TestMap.setRange(5);
    
    # this will center the map
    TestMap.setTranslation(
        temp.canvas.get("view[0]")/2,
        temp.canvas.get("view[1]")/2
    );
    
    var Styles = {};
    Styles.get = func(type) return Styles[type];
    Styles.APS = {};
    Styles.APS.scale_factor = 0.25;
    
    var r = func(name,vis=1,zindex=nil) return caller(0)[0];
    foreach(var type; [
        r('FLTsink'),
        {name:'APS',vis:1,zindex:nil,scale:0.2}
    ] ) TestMap.addLayer(factory: canvas.SymbolLayer, type_arg: type.name, visible: type.vis, style: Styles.get(type.name), priority: type.zindex,);
}
