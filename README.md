Natural Earth scribe base map
============================

Scribe Mapserver projet for Naturel Earth data.  This map is work in progress ...

## Requires
 
 * Mapserver
 * Python 2.7

## Instruction

Run makefile for automatic download costumize your mapfile and have fun!  The last command will build a multilevel mapfile(naturalearth_base.map) base on scribe files find in ./editor/groups/ directory.  tmp file will be placed in ./editor/levels/ directory.
    
    make
    make clean
    cd editor
    python2.7 scribe.py -n ../../naturalearth_base -o ./levels/

## testing

http://localhost:8080/cgi-bin/mapserv?map=/your_path/naturalearth_base.map&LAYERS=default&template=openlayers

![alt text](https://github.com/smercier/naturalearth_base/blob/master/img/ne_scribe_map.png?raw=true "ne map")
