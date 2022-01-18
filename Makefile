
# Determine the OS of the user: OSX or Linux
OS:= $(shell uname -s | tr A-Z a-z)

# Find all source files, create a list of corresponding object files

ifeq ($(OS),darwin)
	FCFLAGS = -dynamiclib -fallow-argument-mismatch
	NATDYLIBEXT= .dylib
else
	FCFLAGS = -fpic -shared
	NATDYLIBEXT= .so
endif

LIB=fn$(NATDYLIBEXT)


DEFAULT:$(LIB)
$(LIB): FNLIB.f90
	mpif90 -o $@ $(FCFLAGS) $^

.PHONY:test clean

test:
	mpif90 -o test test.f90 test_values.f90 $(LIB)
	./test

clean:
	rm $(LIB)
	rm *.mod
