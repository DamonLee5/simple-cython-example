simple-cython-example
=======================
# Building
First, install numpy and cython (using pip or from a package manager) if you
don't already have them.

Then just run `python setup.py develop` to build the project in-place.

# Notice
If you are using a MacOS, you need to first:
```shell
brew reinstall gcc
cd /usr/local/bin
ln -s gcc-10 gcc
ln -s g++-10 g++
```

Then, go to setup.py to uncomment the extenstion function for MacOS.  
