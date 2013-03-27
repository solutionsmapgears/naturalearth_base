Natural Earth scribe base map
============================

Basemap scribe Mapserver projet for Naturel Earth data.  This map is not 

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

http://localhost:8080/cgi-bin/mapserv?map=/your_path/natural_earth.map&LAYERS=default&template=openlayers

![Image](../blob/master/public_html/img/ne_scribe_map.png?raw=true)

