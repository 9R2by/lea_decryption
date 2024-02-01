# LEA 128-Bit Decryption Algorithm For x86(-64)

### LEA Decryption Algorithm with pre generated round keys

### Dependencies
* clang 17.0.1

* cmake 3.26
    * pip install cmake
    * *pip* shall be used to get a more or less recent version of cmake,
      which is sometimes not given via the packages. At least version 3.26 is needed.

Note: You don't have to use *cmake*, but it is more convenient.
You can use *clang* by manually executing the following command:
```bash
clang main.c -O3 -march=tigerlake -o ./target/lea_decryption
```
### Building From Source

Execute the shell script:
````bash
build.sh
````

### Example Execution

```bash
cd target
./ley_decryption 2680704565 684115480 1429391271 73698301
```

### Program Behavior
The program must take a block of four 32bit unsigned integers as
input that represents the data that shall be decrypted.
The result will only be correct if the input block has been 
decrypted with the key: 253635900 1264216440 2274796980 3285377520.
The program should print the cycles followed by a 4x32bit block of
unsigned integers that contain the computed values from the input.
To that it should create a file named decrypted.texts that contains 
the computed values in an appending style on further execution.

### Testvectors

On the given input the output shall be as described:

Input
```
2680704565 684115480 1429391271 73698301
```

Output:
```
x 269554195 336926231 404298267 471670303
```
x is a long unsigned integer that contains the numbers of cycles as measured
by the contained benchmark code. The numbers that are right from the x
are the decrypted data blocks in the same format as the input.

### Optimizations
The implemented algorithm is a variant from the described algorithm
in the paper [LEA: A 128-Bit Block Cipher for Fast Encryption on Common Processors](https://seed.kisa.or.kr/kisa/algorithm/EgovLeaInfo.do).

The software is compiled with optimizations for the 11th generation of
Intel processors, namely *tigerlake*.
If you want to run it on another architecture please change the *march* to your architecture
or if you run it locally to *native*.
Please be aware that *x86 intrinsics* are used and also *bswap* as inline assembly.
If your processor does not support these, you might need to adapt the code.

Some but not all optimizations done include:
 * Loop unrolling
 * Pre rotating all delta values 
 * (Using inline assembly) 

### Tested On

* Fedora 39
  
### Note
Only the parts of the algorithm that are necessary for the decryption
are cycle measured, not the input and output operations.
