
.PHONY: all libs clean

# read compiler flags
ifneq ($(MAKECMDGOALS),clean)
include ../CalcHEP_src/FlagsForMake 
endif

# files to compile
SSS = $(main) $(wildcard lib/aLib.a) ../sources/micromegas.a  $(wildcard lib/mLib.$(SO)) work/work_aux.a \
    $(CALCHEP)/lib/sqme_aux.$(SO) $(CALCHEP)/lib/model_aux.$(SO)

all: $(main) libs
ifeq (,$(main)) 
	@echo Main program is not specified. Use gmake main='<code of main program>'
else
ifeq (.c,$(suffix $(main)))
	$(CC) $(CFLAGS) -o $(main:.c=)  $(SSS) $(lDL)  -lm
else 
ifeq (.F,$(suffix $(main)))
	$(FC) $(FFLAGS) -o $(main:.F=)  $(SSS) $(lDL)  -lm
else 
	 @echo Only .c, cpp, and .F  main programs  are expected.
endif
endif
endif

libs:
	$(MAKE) -C work
	$(MAKE) -C lib

clean: 
	$(MAKE) -C lib  clean
	$(MAKE) -C work clean 
	rm -f calchep/tmp/* calchep/results/*
	../sources/cleanexe
