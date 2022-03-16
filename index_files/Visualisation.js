Raphael.fn.connection = function(obj1, obj2, line, bg) {
    if (obj1.line && obj1.from && obj1.to) {
        line = obj1;
        obj1 = line.from;
        obj2 = line.to;
    }
    var bb1 = obj1.getBBox(),
        bb2 = obj2.getBBox();


    var categoryType = 0;


    var obj1X = bb1.x;
    var obj1Y = bb1.y;
    var obj1H = bb1.height;
    var obj1W = bb1.width;


    var obj2X = bb2.x;
    var obj2Y = bb2.y;
    var obj2H = bb2.height;
    var obj2W = bb2.width;


    var x1 = obj1X;
    var y1 = obj1Y + (obj1H / 2);
    var x2 = obj2X;
    var y2 = obj2Y + (obj2H / 2);

    var fixT = 1;
    if (x1 == x2) {
        x1 = x1 + obj1W;
        x2 = x2 + obj2W;
        categoryType = 1;
        //Draw Arc.... 
    }
    else if (x1 > x2) {
        x2 = x2 + obj2W;
        categoryType = 2;
        fixT = -1;
    }
    else {
        x1 = x1 + obj1W;
        categoryType = 2;
    }


    var triangle = null;
    if (categoryType == 1) {
        //        var diff = Math.abs(y2 - y1) / 4;
        //        var midX = (x1 + x2) / 2;
        //        var midY = (y1 + y2) / 2;


        //        var cos = 0.866;
        //        var sin = 0.500;
        //        var dx = (x2 - x1);
        //        var dy = (y2 - y1);


        //        //Normailze to fixed Size Arrows. 
        //        var length = Math.sqrt(dx * dx + dy * dy);
        //        dx = 8 * (dx / length);
        //        dy = 8 * (dy / length);


        //        var pX1 = (midX + diff) + (dx * cos + dy * -sin);
        //        var pY1 = midY + (dx * sin + dy * cos);


        //        var pX2 = (midX + diff) + (dx * cos + dy * sin);
        //        var pY2 = midY + (dx * -sin + dy * cos);


        //        path = ["M", x1, y1,
        //                                "C", x1 + diff, y1, midX + diff, midY, midX + diff, midY,
        //                                "L", midX + diff, midY,
        //                                "L", pX1, pY1,
        //                                "L", pX2, pY2,
        //                                "L", midX + diff, midY,
        //                                "C", midX + diff, midY, x2 + diff, y2, x2, y2,
        //                                "L", x2, y2];


        //        // For Arrow 
        //        triangle = ["M", midX + diff, midY,
        //                                        "L", pX1, pY1,
        //                                        "L", pX2, pY2,
        //                                        "L", midX + diff, midY,
        //                                        "z"];


    }
    else if (categoryType == 2) {
        var midX = (x1 + x2) / 2;
        var midY = (y1 + y2) / 2;
        var tY2 = y2;
        var tX2;
        if (fixT == 1) {
            //tX2 = x2 - 10; 
            tX2 = midX + 10;
        }
        else {
            // tX2 = x2 + 10;
            tX2 = midX + 10;
            tY2 = y1;
        }


        //        if (bb1.x > bb2.x) {
        //            
        //           // tY2 = y1;
        //            if (fixT == 1) {
        //                tX2 = midX - 10;
        //            }
        //            else {
        //                tX2 = midX + 10;
        //            }
        //        }


        var cos = 0.866;
        var sin = 0.500;
        var dx = (tX2 - midX); //(x2 - x1);
        var dy = (0);


        //Normailze to fixed Size Arrows. 
        var length = Math.sqrt(dx * dx + dy * dy);
        dx = 8 * (dx / length);
        dy = 8 * (dy / length);


        var pX1 = tX2 + (dx * cos + dy * -sin);
        var pY1 = tY2 + (dx * sin + dy * cos);

        var pX2 = tX2 + (dx * cos + dy * sin);
        var pY2 = tY2 + (dx * -sin + dy * cos);


        path = ["M", x1, y1, "L", midX, y1, "L", midX, y2, "L", x2, y2];
        triangle = ["M", tX2, tY2, "L", pX1, pY1, "L", pX2, pY2, "L", tX2, tY2, "z"];

    }


    if (line && line.line) {
        line.bg && line.bg.attr({ path: path });
        line.line.attr({ path: path });
        line.tri.attr({ path: triangle });
    }
    else {
        var color = typeof line == "string" ? line : "#000";
        if (fixT == 1) {
        return {
            bg: bg && bg.split && this.path(path).attr({ stroke: bg.split("|")[0], "stroke-width": bg.split("|")[1] || 3 }),
            line: this.path(path).attr({ stroke: color }),
            tri: this.path(triangle).attr({ stroke: color, "fill": "#000" }),
            from: obj1,
            to: obj2
        };
        }
        else {
            return {
                bg: bg && bg.split && this.path(path).attr({ stroke: bg.split("|")[0], "stroke-width": bg.split("|")[1] || 3 }),
                line: this.path(path).attr({ stroke: color }),
                tri: this.path(triangle).attr({ stroke: color, "fill": "#000" }).rotate(180),
                from: obj1,
                to: obj2
            };
        }

    }



};

//var tX = 16;
//var tY = 58;

//window.onload = function() {
//    var dragger = function() {
//        this.ox = this.type == "image" ? this.attr("x") : this.attr("cx");
//        this.oy = this.type == "image" ? this.attr("y") : this.attr("cy");
//        if (this.type != "text") this.animate({ "fill-opacity": .2 }, 500);
//        this.pair.ox = this.pair.type == "image" ? this.pair.attr("x") : this.pair.attr("cx");
//        this.pair.oy = this.pair.type == "image" ? this.pair.attr("y") : this.pair.attr("cy");
//        if (this.pair.type != "text") this.pair.animate({ "fill-opacity": .2 }, 500);
//    },
//move = function(dx, dy) {
//    var att = this.type == "image" ? { x: this.ox + dx, y: this.oy + dy} : { x: this.ox + dx + tX, y: this.oy + dy + tY }; this.attr(att);
//    att = this.pair.type == "image" ? { x: this.ox + dx, y: this.oy + dy} : { x: this.ox + dx + tX, y: this.oy + dy + tY };
//    this.pair.attr(att);
//    for (i = connections.length; i--; ) {
//        r.connection(connections[i]);
//    }
//    r.safari();
//},
//up = function() {
//    if (this.type != "text") this.animate({ "fill-opacity": 0 }, 500);
//    if (this.pair.type != "text") this.pair.animate({ "fill-opacity": 0 }, 500);
//},
//ss = function() {
//    alert(this.attr("ic"));
//}
//,



//r = Raphael("holder"),
//connections = [];

//    shapes = CreateImages(r);
//    if ('<% =GetZ() %>' == 'True') {

//        shapes[0].show();
//    }


//    texts = CreateTexts(r);
//    color = "#06ABE3";
//    for (i = 0, ii = shapes.length; i < ii; i++) {
//        tempS = shapes[i].attr({ fill: color, stroke: color, "fill-opacity": 0, "stroke-width": 0, cursor: "move" });
//        tempT = texts[i].attr({ cursor: "hand" });
//        shapes[i].drag(move, dragger, up);

//        tempS.pair = tempT; tempT.pair = tempS;
//    }
//    CreateConnections(connections, r, shapes);

//    alert('texta');
//    if ('<% =GetZ() %>' == 'True') {
//        alert('text');
//        var t = r.text(10, 10, "AAAA").attr({ font: "12px Fontin-Sans, Arial, sans- serif", fill: "#000" });
//    }
//    r.text(10, 10, "AAAA")
//    r.safari();
//};