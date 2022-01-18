# To link code to this library, run this file with ./INIT.zsh and add $(LINKTOFNLIB) -I$(LINKTOFNMOD)
if [[ $OSTYPE == 'darwin'* ]]; then
  echo "export LINKTOFNLIB=$(pwd)/fn.dylib" >> ~/.zshrc
  echo "export LINKTOFNMOD=$(pwd)" >> ~/.zshrc
else
  echo "export LINKTOFNLIB=$(pwd)/fn.so" >> ~/.bashrc
  echo "export LINKTOFNMOD=$(pwd)" >> ~/.bashrc
fi
