# Nasm32 and Clang on OSX

This is a brief guide how to get NASM and Clang to compile assembly and work on OSX.

1. Install Homebrew
   [https://brew.sh/](https://brew.sh/)

2. Install NASM from homebrew
   
   ```brew install nasm```

3. To make sure NASM is installed correctly run this ``nasm --version`` should have output 
similar to this
    
    ``NASM version 2.13.01 compiled on May  2 2017``

4. To Compile assembly file i.e filename `helloworld`
    
    ``nasm -f macho32 --prefix _  helloworld.asm``

5. To create binary executable file run the following
    
    ``clang -m32 helloworld.o -o helloworld -Wl,-no_pie``

6. To run the binary file
    
    ``./helloworld``

7. You can find an attached assembly file to test the setup on, it should output 
   ``var=5`` to the terminal.
