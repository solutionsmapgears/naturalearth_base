


all: 10m 50m 110m 110m_cultural.zip 110m_physical.zip 50m_physical.zip 50m_cultural.zip NE2_50M_SR_W.zip 10m_cultural.zip 10m_physical.zip sp


sp:
	for shp in data/110m/*.shp data/50m/*.shp data/10m/*.shp; \
	do \
		shptree $$shp; \
		touch $$shp; \
	done

110m_physical.zip:
	wget http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/physical/110m_physical.zip
	unzip -o 110m_physical.zip -d ./data/110m
	touch $@

110m_cultural.zip:
	wget http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/110m_cultural.zip
	unzip -o 110m_cultural.zip -d ./data/110m
	touch $@

110m:
	mkdir ./data/110m
	touch $@

50m_physical.zip:
	wget http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/50m/physical/50m_physical.zip
	unzip-o  50m_physical.zip -d ./data/50m
	touch $@

50m_cultural.zip:
	wget http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/50m/cultural/50m_cultural.zip
	unzip -o 50m_cultural.zip -d ./data/50m
	touch $@

NE2_50M_SR_W.zip:
	wget http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/50m/raster/NE2_50M_SR_W.zip
	unzip -o NE2_50M_SR_W.zip -d ./data/50m
	touch $@

50m:
	mkdir ./data/50m
	touch $@

10m_physical.zip:
	wget http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/physical/10m_physical.zip
	unzip -o 10m_physical.zip -d ./data/10m
	touch $@

10m_cultural.zip:
	wget http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/10m_cultural.zip
	unzip -o 10m_cultural.zip -d ./data/10m
	touch $@

10m:
	mkdir data
	mkdir ./data/10m
	touch $@

shptree:
	shptree ./10m/*.shp
	shptree ./50m/*.shp
	shptree ./110m/*.shp

clean:
	rm *.zip
