all:

.PHONY: clean

clean:
	rm -rf _site/
	(cd assets/latex/ && make clean)

