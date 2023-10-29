#include <stdint.h>
#include <stdio.h>
#include <x86intrin.h>

#define MFENCE _mm_mfence();
#define LFENCE _mm_lfence();

#define ROUNDKEYS {0x003a0fd4, 0x02497010, 0x194f7db1,      \
0x090d0883, 0x11fdcbb1, 0x9e98e0c8, 0x18b570cf, 0x9dc53a79, \
0xf30f7bb5, 0x6d6628db, 0xb74e5dad, 0xa65e46d0, 0x74120631, \
0xdac9bd17, 0xcd1ecf34, 0x540f76f1, 0x662147db, 0xc637c47a, \
0x46518932, 0x23269260, 0xe4dd5047, 0xf694285e, 0xe1c2951d, \
0x8ca5242c, 0xbaf8e5ca, 0x3e936cd7, 0x0fc7e5b1, 0xf1c8fa8c, \
0x5522b80c, 0xee22ca78, 0x8a6fa8b3, 0x65637b74, 0x8a19279e, \
0x6fb40ffe, 0x85c5f092, 0x92cc9f25, 0x9dde584c, 0xcb00c87f, \
0x4780ad66, 0xe61b5dcb, 0x4fa10466, 0xf728e276, 0xd255411b, \
0x656839ad, 0x9250d058, 0x51bd501f, 0x1cb40dae, 0x1abf218d, \
0x21dd192d, 0x77c644e2, 0xcabfaa45, 0x681c207d, 0xde7ac372, \
0x9436afd0, 0x10331d80, 0xf326fe98, 0xfb3ac3d4, 0x93df660e, \
0x2f65d8a3, 0xdf92e761, 0x27620087, 0x265ef76e, 0x4fb29864, \
0x2656ed1a, 0x227b88ec, 0xd0b3fa6f, 0xc86a08fd, 0xa864cba9, \
0xf1002361, 0xe5e85fc3, 0x1f0b0408, 0x488e7ac4, 0xc65415d5, \
0x51e176b6, 0xeca88bf9, 0xedb89ece, 0x9b6fb99c, 0x0548254b, \
0x8de9f7c2, 0xb6b4d146, 0x7257f134, 0x06051a42, 0x36bcef01, \
0xb649d524, 0xa540fb03, 0x34b196e6, 0xf7c80dad, 0x71bc7dc4, \
0x8fbee745, 0xcf744123, 0x907c0a60, 0x8215ec35, 0x0bf6adba, \
0xdf69029d, 0x5b72305a, 0xcb47c19f }


#define ARRAY_WIDTH UINT8_C(4)
#define ROUNDS UINT8_C(24)
#define ROUNDKEY_ARRAY_SIZE UINT8_C(ROUNDS * ARRAY_WIDTH)


#define rotateRightBy9(x) _rotr(x, 9)
#define rotateLeftBy5(x) _rotl(x, 5)
#define rotateLeftBy3(x) _rotl(x, 3)
#define endian_conversion(x) __asm__ volatile ("bswap %0" : "+r" (x))

/**
 * @param argc
 * @param argv
 * @return
 */
int main(__attribute__((unused))int argc, char *argv[]) {
    uint32_t rk_arr[ROUNDKEY_ARRAY_SIZE] = ROUNDKEYS;
    uint32_t xi0, xi1, xi2, xi3, x0, x1, x2, x3;
    uint64_t start, end;
    uint32_t ui;
    x0 = strtoul(argv[1], NULL, 10);
    x1 = strtoul(argv[2], NULL, 10);
    x2 = strtoul(argv[3], NULL, 10);
    x3 = strtoul(argv[4], NULL, 10);
    MFENCE
    start = __rdtscp(&ui);
    LFENCE
    /********
     * Add code to be tested here:
     * START:
     * ********/
    endian_conversion(x0);
    endian_conversion(x1);
    endian_conversion(x2);
    endian_conversion(x3);

    //round 1
    xi0 = x3;
    xi1 = (rotateRightBy9(x0) - (x3 ^ rk_arr[92])) ^ rk_arr[93];
    xi2 = (rotateLeftBy5(x1) - (xi1 ^ rk_arr[94])) ^ rk_arr[93];
    xi3 = (rotateLeftBy3(x2) - (xi2 ^ rk_arr[95])) ^ rk_arr[93];

    //round 2
    x0 = xi3;
    x1 = (rotateRightBy9(xi0) - (x0 ^ rk_arr[88])) ^ rk_arr[89];
    x2 = (rotateLeftBy5(xi1) - (x1 ^ rk_arr[90])) ^ rk_arr[89];
    x3 = (rotateLeftBy3(xi2) - (x2 ^ rk_arr[91])) ^ rk_arr[89];

    //round 3
    xi0 = x3;
    xi1 = (rotateRightBy9(x0) - (xi0 ^ rk_arr[84])) ^ rk_arr[85];
    xi2 = (rotateLeftBy5(x1) - (xi1 ^ rk_arr[86])) ^ rk_arr[85];
    xi3 = (rotateLeftBy3(x2) - (xi2 ^ rk_arr[87])) ^ rk_arr[85];

    //round 4
    x0 = xi3;
    x1 = (rotateRightBy9(xi0) - (x0 ^ rk_arr[80])) ^ rk_arr[81];
    x2 = (rotateLeftBy5(xi1) - (x1 ^ rk_arr[82])) ^ rk_arr[81];
    x3 = (rotateLeftBy3(xi2) - (x2 ^ rk_arr[83])) ^ rk_arr[81];

    //round 5
    xi0 = x3;
    xi1 = (rotateRightBy9(x0) - (xi0 ^ rk_arr[76])) ^ rk_arr[77];
    xi2 = (rotateLeftBy5(x1) - (xi1 ^ rk_arr[78])) ^ rk_arr[77];
    xi3 = (rotateLeftBy3(x2) - (xi2 ^ rk_arr[79])) ^ rk_arr[77];


    //round 6
    x0 = xi3;
    x1 = (rotateRightBy9(xi0) - (x0 ^ rk_arr[72])) ^ rk_arr[73];
    x2 = (rotateLeftBy5(xi1) - (x1 ^ rk_arr[74])) ^ rk_arr[73];
    x3 = (rotateLeftBy3(xi2) - (x2 ^ rk_arr[75])) ^ rk_arr[73];

    //round 7
    xi0 = x3;
    xi1 = (rotateRightBy9(x0) - (xi0 ^ rk_arr[68])) ^ rk_arr[69];
    xi2 = (rotateLeftBy5(x1) - (xi1 ^ rk_arr[70])) ^ rk_arr[69];
    xi3 = (rotateLeftBy3(x2) - (xi2 ^ rk_arr[71])) ^ rk_arr[69];

    //round 8
    x0 = xi3;
    x1 = (rotateRightBy9(xi0) - (x0 ^ rk_arr[64])) ^ rk_arr[65];
    x2 = (rotateLeftBy5(xi1) - (x1 ^ rk_arr[66])) ^ rk_arr[65];
    x3 = (rotateLeftBy3(xi2) - (x2 ^ rk_arr[67])) ^ rk_arr[65];

    //round 9
    xi0 = x3;
    xi1 = (rotateRightBy9(x0) - (xi0 ^ rk_arr[60])) ^ rk_arr[61];
    xi2 = (rotateLeftBy5(x1) - (xi1 ^ rk_arr[62])) ^ rk_arr[61];
    xi3 = (rotateLeftBy3(x2) - (xi2 ^ rk_arr[63])) ^ rk_arr[61];

    //round 10
    x0 = xi3;
    x1 = (rotateRightBy9(xi0) - (x0 ^ rk_arr[56])) ^ rk_arr[57];
    x2 = (rotateLeftBy5(xi1) - (x1 ^ rk_arr[58])) ^ rk_arr[57];
    x3 = (rotateLeftBy3(xi2) - (x2 ^ rk_arr[59])) ^ rk_arr[57];

    //round 11
    xi0 = x3;
    xi1 = (rotateRightBy9(x0) - (xi0 ^ rk_arr[52])) ^ rk_arr[53];
    xi2 = (rotateLeftBy5(x1) - (xi1 ^ rk_arr[54])) ^ rk_arr[53];
    xi3 = (rotateLeftBy3(x2) - (xi2 ^ rk_arr[55])) ^ rk_arr[53];

    //round 12
    x0 = xi3;
    x1 = (rotateRightBy9(xi0) - (x0 ^ rk_arr[48])) ^ rk_arr[49];
    x2 = (rotateLeftBy5(xi1) - (x1 ^ rk_arr[50])) ^ rk_arr[49];
    x3 = (rotateLeftBy3(xi2) - (x2 ^ rk_arr[51])) ^ rk_arr[49];

    //round 13
    xi0 = x3;
    xi1 = (rotateRightBy9(x0) - (xi0 ^ rk_arr[44])) ^ rk_arr[45];
    xi2 = (rotateLeftBy5(x1) - (xi1 ^ rk_arr[46])) ^ rk_arr[45];
    xi3 = (rotateLeftBy3(x2) - (xi2 ^ rk_arr[47])) ^ rk_arr[45];

    //round 14
    x0 = xi3;
    x1 = (rotateRightBy9(xi0) - (x0 ^ rk_arr[40])) ^ rk_arr[41];
    x2 = (rotateLeftBy5(xi1) - (x1 ^ rk_arr[42])) ^ rk_arr[41];
    x3 = (rotateLeftBy3(xi2) - (x2 ^ rk_arr[43])) ^ rk_arr[41];

    //round 15
    xi0 = x3;
    xi1 = (rotateRightBy9(x0) - (xi0 ^ rk_arr[36])) ^ rk_arr[37];
    xi2 = (rotateLeftBy5(x1) - (xi1 ^ rk_arr[38])) ^ rk_arr[37];
    xi3 = (rotateLeftBy3(x2) - (xi2 ^ rk_arr[39])) ^ rk_arr[37];

    //round 16
    x0 = xi3;
    x1 = (rotateRightBy9(xi0) - (x0 ^ rk_arr[32])) ^ rk_arr[33];
    x2 = (rotateLeftBy5(xi1) - (x1 ^ rk_arr[34])) ^ rk_arr[33];
    x3 = (rotateLeftBy3(xi2) - (x2 ^ rk_arr[35])) ^ rk_arr[33];

    //round 17
    xi0 = x3;
    xi1 = (rotateRightBy9(x0) - (xi0 ^ rk_arr[28])) ^ rk_arr[29];
    xi2 = (rotateLeftBy5(x1) - (xi1 ^ rk_arr[30])) ^ rk_arr[29];
    xi3 = (rotateLeftBy3(x2) - (xi2 ^ rk_arr[31])) ^ rk_arr[29];

    //round 18
    x0 = xi3;
    x1 = (rotateRightBy9(xi0) - (x0 ^ rk_arr[24])) ^ rk_arr[25];
    x2 = (rotateLeftBy5(xi1) - (x1 ^ rk_arr[26])) ^ rk_arr[25];
    x3 = (rotateLeftBy3(xi2) - (x2 ^ rk_arr[27])) ^ rk_arr[25];

    //round 19
    xi0 = x3;
    xi1 = (rotateRightBy9(x0) - (xi0 ^ rk_arr[20])) ^ rk_arr[21];
    xi2 = (rotateLeftBy5(x1) - (xi1 ^ rk_arr[22])) ^ rk_arr[21];
    xi3 = (rotateLeftBy3(x2) - (xi2 ^ rk_arr[23])) ^ rk_arr[21];

    //round 20
    x0 = xi3;
    x1 = (rotateRightBy9(xi0) - (x0 ^ rk_arr[16])) ^ rk_arr[17];
    x2 = (rotateLeftBy5(xi1) - (x1 ^ rk_arr[18])) ^ rk_arr[17];
    x3 = (rotateLeftBy3(xi2) - (x2 ^ rk_arr[19])) ^ rk_arr[17];

    //round 21
    xi0 = x3;
    xi1 = (rotateRightBy9(x0) - (xi0 ^ rk_arr[12])) ^ rk_arr[13];
    xi2 = (rotateLeftBy5(x1) - (xi1 ^ rk_arr[14])) ^ rk_arr[13];
    xi3 = (rotateLeftBy3(x2) - (xi2 ^ rk_arr[15])) ^ rk_arr[13];


    //round 22
    x0 = xi3;
    x1 = (rotateRightBy9(xi0) - (x0 ^ rk_arr[8])) ^ rk_arr[9];
    x2 = (rotateLeftBy5(xi1) - (x1 ^ rk_arr[10])) ^ rk_arr[9];
    x3 = (rotateLeftBy3(xi2) - (x2 ^ rk_arr[11])) ^ rk_arr[9];

    //round 23
    xi0 = x3;
    xi1 = (rotateRightBy9(x0) - (xi0 ^ rk_arr[4])) ^ rk_arr[5];
    xi2 = (rotateLeftBy5(x1) - (xi1 ^ rk_arr[6])) ^ rk_arr[5];
    xi3 = (rotateLeftBy3(x2) - (xi2 ^ rk_arr[7])) ^ rk_arr[5];

    //round 24
    x0 = xi3;
    x1 = (rotateRightBy9(xi0) - (x0 ^ rk_arr[0])) ^ rk_arr[1];
    x2 = (rotateLeftBy5(xi1) - (x1 ^ rk_arr[2])) ^ rk_arr[1];
    x3 = (rotateLeftBy3(xi2) - (x2 ^ rk_arr[3])) ^ rk_arr[1];

    endian_conversion(x0);
    endian_conversion(x1);
    endian_conversion(x2);
    endian_conversion(x3);
    /*
     * END
     *
     * */
    MFENCE
    end = __rdtscp(&ui);
    LFENCE
    printf("%lu %X %X %X %X\n", (end - start), x0, x1, x2, x3);
    //IO Operations, Result of decryption in uint32_t
    //Writing to file will decrease the overall cycles as it seems to be faster
    //than writing to the stdout
    //io is excluded from measuring
    /*
    FILE *file = fopen("decrypted.texts", "a");
    if (file == NULL) {
        printf("Unable to open/create the file.\n");
        return EXIT_FAILURE;
    }
    fprintf(file, "%u\n%u\n%u\n%u\n", x0, x1, x2, x3);
    fclose(file);
     */
    return EXIT_SUCCESS;
}
