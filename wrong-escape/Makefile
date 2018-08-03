OCAMLC ?= ../../install/bin/ocamlc.opt
OTHER=other_module.mli

all: success failure

success: gen.sh main.ml
	./gen.sh 0
	$(OCAMLC) -c $(OTHER)
	$(OCAMLC) -c main.ml

failure: gen.sh main.ml
	./gen.sh 15000
	$(OCAMLC) -c $(OTHER)
	$(OCAMLC) -c main.ml

clean:
	-rm *.cm*
	-rm $(OTHER)
