all: build test

build:
	ponyc -d .

test:
	./_tests --ponyminthreads 3 --sequential
