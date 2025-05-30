#include "asm.h"
#include "regdef.h"
#include "inst_test.h"

LEAF(n30_div_w_test)
    
    addi.w s0, s0 ,1
    li.w  s2, 0x0
###test inst
    TEST_DIV_W(0x56bedfa4, 0x20831400, 0x00000002)
    TEST_DIV_W(0xfda5ea8a, 0xfac1873c, 0x00000000)
    TEST_DIV_W(0x53eb4a70, 0x07e13dd1, 0x0000000a)
    // TEST_DIV_W(0x323676e0, 0xdc3a3f10, 0xffffffff)
    // TEST_DIV_W(0xc3e0f060, 0xe9c97944, 0x00000002)
    // TEST_DIV_W(0x7c7b85f2, 0xdb7e6dc0, 0xfffffffd)
    // TEST_DIV_W(0x3bbf1da0, 0xe73f9eea, 0xfffffffe)
    // TEST_DIV_W(0x8786a50c, 0x412dc050, 0xffffffff)
    // TEST_DIV_W(0xee98aaf8, 0x36730f80, 0x00000000)
    // TEST_DIV_W(0x68d65d90, 0xd6d52b70, 0xfffffffe)
    // TEST_DIV_W(0x17779850, 0x511b1fba, 0x00000000)
    // TEST_DIV_W(0x7bfc98c0, 0xdffb8d8c, 0xfffffffd)
    // TEST_DIV_W(0xa1090e30, 0x9f634c20, 0x00000000)
    // TEST_DIV_W(0x944789e0, 0xbc1aeab0, 0x00000001)
    // TEST_DIV_W(0x91913c20, 0x0d7fa4a0, 0xfffffff8)
    // TEST_DIV_W(0xa0792145, 0xd9316a68, 0x00000002)
    // TEST_DIV_W(0x0dac1e00, 0x692a0470, 0x00000000)
    // TEST_DIV_W(0x816e4490, 0x16df3f00, 0xfffffffb)
    // TEST_DIV_W(0x9471ab8a, 0xc428d407, 0x00000001)
    // TEST_DIV_W(0x18197510, 0x859b3ae8, 0x00000000)
    // TEST_DIV_W(0x28852031, 0x7eab85d6, 0x00000000)
    // TEST_DIV_W(0x21707800, 0xea3c3580, 0xffffffff)
    // TEST_DIV_W(0xf434d0f8, 0xd2606068, 0x00000000)
    // TEST_DIV_W(0x89fa9ce0, 0x8b746d5c, 0x00000001)
    // TEST_DIV_W(0x2fb0dcbc, 0xb3896224, 0x00000000)
    // TEST_DIV_W(0xc7b128a4, 0x0600b15d, 0xfffffff7)
    // TEST_DIV_W(0x57d6fe0a, 0x2dbec2d0, 0x00000001)
    // TEST_DIV_W(0xa78bba58, 0x1d1ce488, 0xfffffffd)
    // TEST_DIV_W(0x6dacf9c8, 0x45e5c7a0, 0x00000001)
    // TEST_DIV_W(0x62d0a060, 0xb3708762, 0xffffffff)
    // TEST_DIV_W(0x12763f9c, 0xf896d530, 0xfffffffe)
    // TEST_DIV_W(0x098ef6a0, 0xcf035c50, 0x00000000)
    // TEST_DIV_W(0x3a2491a3, 0x1f054400, 0x00000001)
    // TEST_DIV_W(0xdd12c65c, 0x8874feb8, 0x00000000)
    // TEST_DIV_W(0x6d394d48, 0xfddfc888, 0xffffffcd)
    // TEST_DIV_W(0x17c525ee, 0xff6e16fc, 0xffffffd7)
    // TEST_DIV_W(0xa752a72f, 0xe35b51ba, 0x00000003)
    // TEST_DIV_W(0xd92de300, 0x15a8cfe5, 0xffffffff)
    // TEST_DIV_W(0xe775a23d, 0xa45ef71c, 0x00000000)
    // TEST_DIV_W(0x31f98592, 0xd61078b1, 0xffffffff)
    // TEST_DIV_W(0x80553a33, 0xeca4bbf1, 0x00000006)
    // TEST_DIV_W(0x5e6dac0d, 0x048e06c9, 0x00000014)
    // TEST_DIV_W(0x85b28db3, 0x78d48e18, 0xffffffff)
    // TEST_DIV_W(0x59f96b98, 0x0455de88, 0x00000014)
    // TEST_DIV_W(0x6b36df10, 0x7744092c, 0x00000000)
    // TEST_DIV_W(0x1f9e644f, 0xad18886c, 0x00000000)
    // TEST_DIV_W(0x6d189a72, 0x645d8aac, 0x00000001)
    // TEST_DIV_W(0x0c1166a8, 0x6526ce40, 0x00000000)
    // TEST_DIV_W(0x5af79440, 0xa7727e50, 0xffffffff)
    // TEST_DIV_W(0xebbd6e70, 0x0d2b4b5b, 0xffffffff)
    // TEST_DIV_W(0xb2180178, 0x9cb33ba8, 0x00000000)
    // TEST_DIV_W(0x9d4133d8, 0xb268ae15, 0x00000001)
    // TEST_DIV_W(0xbd4528a6, 0x4ebd7e00, 0x00000000)
    // TEST_DIV_W(0xe4bd1250, 0x488abc1c, 0x00000000)
    // TEST_DIV_W(0xa2a77eae, 0x299d2a20, 0xfffffffe)
    // TEST_DIV_W(0x4b688500, 0x16d5bb7c, 0x00000003)
    // TEST_DIV_W(0xa1da497c, 0xc7ed1a50, 0x00000001)
    // TEST_DIV_W(0x62260fe8, 0x5ba0b130, 0x00000001)
    // TEST_DIV_W(0x9bb3f6d9, 0x41e136a4, 0xffffffff)
    // TEST_DIV_W(0xd5fcd1d6, 0xc073ea20, 0x00000000)
    // TEST_DIV_W(0xaaceef00, 0xb934eec0, 0x00000001)
    // TEST_DIV_W(0xf21b28a8, 0x724b7460, 0x00000000)
    // TEST_DIV_W(0x630e69e4, 0x3d1cde06, 0x00000001)
    // TEST_DIV_W(0xbe57f2e4, 0x3e9c0ea0, 0xffffffff)
    // TEST_DIV_W(0x4e2c28a6, 0x72662240, 0x00000000)
    // TEST_DIV_W(0x5f95c708, 0xcf41487b, 0xffffffff)
    // TEST_DIV_W(0x8dceffe3, 0xdc6a3b80, 0x00000003)
    // TEST_DIV_W(0xf5d4fec0, 0xf2a8f09c, 0x00000000)
    // TEST_DIV_W(0x881dab60, 0x9a380358, 0x00000001)
    // TEST_DIV_W(0xd07715a0, 0x66e639b3, 0x00000000)
    // TEST_DIV_W(0x782095ce, 0x93be3000, 0xffffffff)
    // TEST_DIV_W(0x89ec82ca, 0xe20b2a70, 0x00000003)
    // TEST_DIV_W(0xa193b0e0, 0x20fa0b00, 0xfffffffe)
    // TEST_DIV_W(0x3557ea04, 0x75c478d0, 0x00000000)
    // TEST_DIV_W(0xa832f328, 0xee25c038, 0x00000004)
    // TEST_DIV_W(0x52b5d68a, 0x8899c4a8, 0x00000000)
    // TEST_DIV_W(0x5eec8ab7, 0x90af59cc, 0x00000000)
    // TEST_DIV_W(0xd93d3180, 0x72d03460, 0x00000000)
    // TEST_DIV_W(0x77866a8e, 0x32659e96, 0x00000002)
    // TEST_DIV_W(0x5958f077, 0xeb2bd5ec, 0xfffffffc)
    // TEST_DIV_W(0x6efa1a58, 0xb3f65f42, 0xffffffff)
    // TEST_DIV_W(0xbe718690, 0xe54a2a9e, 0x00000002)
    // TEST_DIV_W(0xd5e2a4b0, 0x9a860828, 0x00000000)
    // TEST_DIV_W(0x52d16644, 0x2d06d3ac, 0x00000001)
    // TEST_DIV_W(0xea72e2b6, 0xec307a80, 0x00000001)
    // TEST_DIV_W(0xca150860, 0x68ac4460, 0x00000000)
    // TEST_DIV_W(0x99a81ef8, 0x49569c66, 0xffffffff)
    // TEST_DIV_W(0x3181e9f0, 0x6f9b9c74, 0x00000000)
    // TEST_DIV_W(0x15dd1e40, 0x50a72ba0, 0x00000000)
    // TEST_DIV_W(0xf61afe37, 0xb6fcbca3, 0x00000000)
    // TEST_DIV_W(0x682fedd2, 0xb339543e, 0xffffffff)
    // TEST_DIV_W(0xe58a4420, 0xe3744db0, 0x00000000)
    // TEST_DIV_W(0xb6b9f08a, 0x199a6c48, 0xfffffffe)
    // TEST_DIV_W(0xdebcb606, 0xe8bbaeb0, 0x00000001)
    // TEST_DIV_W(0x3a71821e, 0x75017300, 0x00000000)
    // TEST_DIV_W(0x16be834c, 0xa7ea3340, 0x00000000)
    // TEST_DIV_W(0x7130e360, 0xb8ecacc0, 0xffffffff)
    // TEST_DIV_W(0x48e68d72, 0x61958b0f, 0x00000000)
    // TEST_DIV_W(0xda594800, 0x8045367d, 0x00000000)
    // TEST_DIV_W(0xe8c2df9a, 0xe6c66c34, 0x00000000)
    // TEST_DIV_W(0x9e516c26, 0xef3e3bd4, 0x00000005)
    // TEST_DIV_W(0x7f9c4ad4, 0x6c56d48c, 0x00000001)
    // TEST_DIV_W(0x30322930, 0x1b8d3720, 0x00000001)
    // TEST_DIV_W(0xf7bed7b0, 0xdb77e540, 0x00000000)
    // TEST_DIV_W(0xa0c7d748, 0x8de61300, 0x00000000)
    // TEST_DIV_W(0xdeb2f704, 0xfd2b0c11, 0x0000000b)
    // TEST_DIV_W(0xc08e13d8, 0x1f025330, 0xfffffffe)
    // TEST_DIV_W(0x1c4fb5a4, 0x9f16309a, 0x00000000)
    // TEST_DIV_W(0xc79dd5a8, 0x1708cffa, 0xfffffffe)
    // TEST_DIV_W(0xee856ae8, 0x80b4ba58, 0x00000000)
    // TEST_DIV_W(0x8f9fc561, 0xbd96c9d4, 0x00000001)
    // TEST_DIV_W(0xb992d620, 0xced24e3e, 0x00000001)
    // TEST_DIV_W(0x4967f580, 0xe1381905, 0xfffffffe)
    // TEST_DIV_W(0x722d059f, 0x705cea80, 0x00000001)
    // TEST_DIV_W(0x15053974, 0x8b5e5c00, 0x00000000)
    // TEST_DIV_W(0x664c2a8c, 0x50bf0b96, 0x00000001)
    // TEST_DIV_W(0x92395380, 0x15c2099e, 0xfffffffb)
    // TEST_DIV_W(0xf24a2a85, 0xca406d34, 0x00000000)
    // TEST_DIV_W(0x9187ed80, 0xb8ff4cc8, 0x00000001)
    // TEST_DIV_W(0x00000000, 0xa7bb1ef0, 0x00000000)
    // TEST_DIV_W(0x00000000, 0x3050efec, 0x00000000)
    // TEST_DIV_W(0x00000000, 0x94e29c00, 0x00000000)
###detect exception
    bne s2, zero, inst_error
###score ++
    addi.w s3, s3, 1
###output (s0<<24)|s3
inst_error:  
    slli.w t1, s0, 24
    or t0, t1, s3 
    st.w t0, s1, 0
    jirl zero, ra, 0
END(n30_div_w_test)
