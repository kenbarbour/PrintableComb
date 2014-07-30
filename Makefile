FN=24
DFLAGS = '$$fn=$(FN)'

all: comb.stl

comb.stl: comb.scad
	openscad comb.scad -D ${DFLAGS} -o comb.stl

zip: all Makefile
	zip -r comb.zip *

clean:
	rm -rf *.stl
	rm -rf *.zip
