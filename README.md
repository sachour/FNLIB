# FNLIB
Special mathematical functions for fortran by Wayne Fullerton and John Burkardt. Original source code  taken from https://people.math.sc.edu/Burkardt/f_src/fn/fn.f90. Commercial use and licensing information and contact information for the authors can be found in https://people.math.sc.edu/Burkardt/f_src/fn/fn.html. The version of the code in this repository was adapted for use in modern Fortran.
I am not a co-author of this code
## Instructions for installation and testing
1. Clone the directory into the desired folder
2. In your terminal, run 
'''
make
'''
4. In your terminal, run 
'''
make test
'''
6. In your terminal, run the file INIT.zsh

## Instructions for use in fortran file
1. Add use fnlib before implict none and after the beginning of the program keyword in the following way
'''
program main
  use fnlib
  implict none
'''

'''
subroutine mysub()
  use fnlib
  implict none
  ...
end subroutine
'''
3. When compiling your code add the linking flags "$(LINKTOFNLIB) -J$(modpath)" in your Makefile or "$LINKTOFNLIB -J$modpath" if compiling from the terminal directly
