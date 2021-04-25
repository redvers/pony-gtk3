all:
	ponyc -d .
#	ponyc --docs-public --pass=docs gtk3 --output build
#	rm -rf docs
#	mv build/gtk3-docs/docs .


clean:
	rm -f gtk3/*


