MAKEFLAGS += --no-builtin-rules
.SUFFIXES:
.POSIX:
.DELETE_ON_ERROR:
.ONESHELL:


runio.exe : runio.f.xml help.f.xml
	forthml $< --build $@
