#include "asm.h"
#include "regdef.h"
#include "inst_test.h"

LEAF(n24_andi_test)
    
    addi.w s0, s0 ,1
    li.w  s2, 0x00
###test inst
    TEST_ANDI(0x4c23cdd4, 0x00000e89, 0x00000c80)
    TEST_ANDI(0xa1286600, 0x000008aa, 0x00000000)
    TEST_ANDI(0xea42f8c0, 0x00000d3e, 0x00000800)
    // TEST_ANDI(0xfbbea379, 0x00000654, 0x00000250)
    // TEST_ANDI(0x701ff540, 0x0000001f, 0x00000000)
    // TEST_ANDI(0x509b8bd4, 0x00000d3c, 0x00000914)
    // TEST_ANDI(0x7f92d195, 0x000007a0, 0x00000180)
    // TEST_ANDI(0x2e273e78, 0x0000075e, 0x00000658)
    // TEST_ANDI(0x866dcbc0, 0x0000084c, 0x00000840)
    // TEST_ANDI(0xd0b35788, 0x00000224, 0x00000200)
    // TEST_ANDI(0x05d143e2, 0x0000037a, 0x00000362)
    // TEST_ANDI(0x7287ec60, 0x00000e2e, 0x00000c20)
    // TEST_ANDI(0x0eeab150, 0x00000349, 0x00000140)
    // TEST_ANDI(0x2a3a9780, 0x00000980, 0x00000180)
    // TEST_ANDI(0x2b7f8e00, 0x000006e9, 0x00000600)
    // TEST_ANDI(0x1e9ae240, 0x00000505, 0x00000000)
    // TEST_ANDI(0x2a4c4ce3, 0x00000f84, 0x00000c80)
    // TEST_ANDI(0x03f6e344, 0x00000020, 0x00000000)
    // TEST_ANDI(0xff64c5dd, 0x00000d50, 0x00000550)
    // TEST_ANDI(0xaa1cc200, 0x00000ee3, 0x00000200)
    // TEST_ANDI(0x6241b174, 0x00000170, 0x00000170)
    // TEST_ANDI(0x75d368ca, 0x00000336, 0x00000002)
    // TEST_ANDI(0x96b18fd2, 0x00000d40, 0x00000d40)
    // TEST_ANDI(0xa174a3c8, 0x00000936, 0x00000100)
    // TEST_ANDI(0x329575a8, 0x00000160, 0x00000120)
    // TEST_ANDI(0xc4415b00, 0x00000b5d, 0x00000b00)
    // TEST_ANDI(0x557228b0, 0x00000a48, 0x00000800)
    // TEST_ANDI(0xc9e36fbc, 0x00000a35, 0x00000a34)
    // TEST_ANDI(0x6f8bc9dd, 0x00000e65, 0x00000845)
    // TEST_ANDI(0xe2b058c0, 0x00000cc0, 0x000008c0)
    // TEST_ANDI(0x71f1c140, 0x0000019c, 0x00000100)
    // TEST_ANDI(0xe0827181, 0x00000ca6, 0x00000080)
    // TEST_ANDI(0x0abff996, 0x000008c9, 0x00000880)
    // TEST_ANDI(0xb8aed1b6, 0x0000017f, 0x00000136)
    // TEST_ANDI(0x4d92ee9e, 0x000007ce, 0x0000068e)
    // TEST_ANDI(0x8d2a7020, 0x000001a6, 0x00000020)
    // TEST_ANDI(0xf21afb20, 0x00000470, 0x00000020)
    // TEST_ANDI(0x09bc8058, 0x000002c8, 0x00000048)
    // TEST_ANDI(0x941a5f1d, 0x0000021c, 0x0000021c)
    // TEST_ANDI(0x5d2ce596, 0x00000941, 0x00000100)
    // TEST_ANDI(0x237ee620, 0x00000505, 0x00000400)
    // TEST_ANDI(0xa82b38f0, 0x00000b7a, 0x00000870)
    // TEST_ANDI(0x11bdcf7c, 0x00000908, 0x00000908)
    // TEST_ANDI(0x69f14ac2, 0x00000a6d, 0x00000a40)
    // TEST_ANDI(0xdd27baac, 0x00000320, 0x00000220)
    // TEST_ANDI(0xe39e9284, 0x00000176, 0x00000004)
    // TEST_ANDI(0xed948c28, 0x00000c6a, 0x00000c28)
    // TEST_ANDI(0x8f4fa6a8, 0x000004c0, 0x00000480)
    // TEST_ANDI(0xc9bb4800, 0x00000fac, 0x00000800)
    // TEST_ANDI(0xacb5fb96, 0x00000600, 0x00000200)
    // TEST_ANDI(0xdf6e23d5, 0x00000f38, 0x00000310)
    // TEST_ANDI(0xc10525c0, 0x000005ab, 0x00000580)
    // TEST_ANDI(0x5addc038, 0x0000058d, 0x00000008)
    // TEST_ANDI(0xbe1bc16c, 0x00000807, 0x00000004)
    // TEST_ANDI(0xc2f2f240, 0x00000648, 0x00000240)
    // TEST_ANDI(0xe62d324d, 0x00000747, 0x00000245)
    // TEST_ANDI(0xf85c1eac, 0x00000e17, 0x00000e04)
    // TEST_ANDI(0x2ad1aed8, 0x000002c4, 0x000002c0)
    // TEST_ANDI(0xff7fabc4, 0x00000eb4, 0x00000a84)
    // TEST_ANDI(0x9585f1d2, 0x00000660, 0x00000040)
    // TEST_ANDI(0x5a202319, 0x00000a24, 0x00000200)
    // TEST_ANDI(0x7f2cbaf0, 0x00000fa0, 0x00000aa0)
    // TEST_ANDI(0xf8c8d908, 0x00000eea, 0x00000808)
    // TEST_ANDI(0x88b99343, 0x00000ae0, 0x00000240)
    // TEST_ANDI(0xacea571a, 0x0000006b, 0x0000000a)
    // TEST_ANDI(0x8eec93f0, 0x00000c59, 0x00000050)
    // TEST_ANDI(0x8daee7e0, 0x00000b40, 0x00000340)
    // TEST_ANDI(0xc328f184, 0x00000a22, 0x00000000)
    // TEST_ANDI(0x46d2c0cb, 0x000005db, 0x000000cb)
    // TEST_ANDI(0xffa4e240, 0x0000088e, 0x00000000)
    // TEST_ANDI(0xd9c133b8, 0x00000c88, 0x00000088)
    // TEST_ANDI(0x50b276c0, 0x0000064c, 0x00000640)
    // TEST_ANDI(0x8f871660, 0x0000027c, 0x00000260)
    // TEST_ANDI(0x5d4b0f1b, 0x00000774, 0x00000710)
    // TEST_ANDI(0xe1871463, 0x00000b00, 0x00000000)
    // TEST_ANDI(0x886367fc, 0x00000539, 0x00000538)
    // TEST_ANDI(0xda10c9e1, 0x00000010, 0x00000000)
    // TEST_ANDI(0xd756e5a8, 0x000008ea, 0x000000a8)
    // TEST_ANDI(0x303776a0, 0x000005b9, 0x000004a0)
    // TEST_ANDI(0x679f3538, 0x00000c36, 0x00000430)
    // TEST_ANDI(0x3caba000, 0x0000042b, 0x00000000)
    // TEST_ANDI(0x9c3a2af6, 0x0000047a, 0x00000072)
    // TEST_ANDI(0x3e110120, 0x00000933, 0x00000120)
    // TEST_ANDI(0x5b444b50, 0x000003fd, 0x00000350)
    // TEST_ANDI(0x7bc83792, 0x00000dca, 0x00000582)
    // TEST_ANDI(0x70f52ba0, 0x000006ae, 0x000002a0)
    // TEST_ANDI(0x82e0e700, 0x00000df4, 0x00000500)
    // TEST_ANDI(0xa4c47db6, 0x0000031a, 0x00000112)
    // TEST_ANDI(0xae6b72c9, 0x00000704, 0x00000200)
    // TEST_ANDI(0x31932830, 0x00000cfa, 0x00000830)
    // TEST_ANDI(0x5f3d333a, 0x000005f0, 0x00000130)
    // TEST_ANDI(0xfd897e9e, 0x00000584, 0x00000484)
    // TEST_ANDI(0xc95cd808, 0x00000e7d, 0x00000808)
    // TEST_ANDI(0xed80b6cb, 0x000004f8, 0x000004c8)
    // TEST_ANDI(0x13ad5f46, 0x000003ba, 0x00000302)
    // TEST_ANDI(0xddca89b0, 0x0000017d, 0x00000130)
    // TEST_ANDI(0x0056f828, 0x00000c60, 0x00000820)
    // TEST_ANDI(0x9da464e2, 0x00000528, 0x00000420)
    // TEST_ANDI(0x6bd88840, 0x0000052d, 0x00000000)
    // TEST_ANDI(0x30782928, 0x00000a82, 0x00000800)
    // TEST_ANDI(0xd760f054, 0x000002d4, 0x00000054)
    // TEST_ANDI(0x45927f80, 0x000000af, 0x00000080)
    // TEST_ANDI(0xd3b70800, 0x00000863, 0x00000800)
    // TEST_ANDI(0xa4ff4a18, 0x00000f1e, 0x00000a18)
    // TEST_ANDI(0x5713fefe, 0x0000070e, 0x0000060e)
    // TEST_ANDI(0xc7cdd321, 0x00000f46, 0x00000300)
    // TEST_ANDI(0x74b899e4, 0x000002b0, 0x000000a0)
    // TEST_ANDI(0x1c098ec0, 0x00000488, 0x00000480)
    // TEST_ANDI(0x21b011c0, 0x000001b3, 0x00000180)
    // TEST_ANDI(0x9fa69f68, 0x00000230, 0x00000220)
    // TEST_ANDI(0x7f3c4c95, 0x00000e4c, 0x00000c04)
    // TEST_ANDI(0x004c9682, 0x00000bc0, 0x00000280)
    // TEST_ANDI(0xe36c870c, 0x00000354, 0x00000304)
    // TEST_ANDI(0xb158d481, 0x00000cd0, 0x00000480)
    // TEST_ANDI(0xc9265040, 0x00000124, 0x00000000)
    // TEST_ANDI(0xa9eeef7b, 0x00000af3, 0x00000a73)
    // TEST_ANDI(0xbd9c32aa, 0x00000b85, 0x00000280)
    // TEST_ANDI(0xd146e020, 0x00000219, 0x00000000)
    // TEST_ANDI(0xec63fefa, 0x00000a02, 0x00000a02)
    // TEST_ANDI(0xaad9a6e2, 0x00000e60, 0x00000660)
    // TEST_ANDI(0x381372fc, 0x00000834, 0x00000034)
    // TEST_ANDI(0xa2ef5b64, 0x00000f65, 0x00000b64)
    // TEST_ANDI(0xe62ebb8c, 0x00000347, 0x00000304)
    // TEST_ANDI(0x1ac0fd8d, 0x00000670, 0x00000400)
    // TEST_ANDI(0xe8ee1820, 0x00000d68, 0x00000820)
    // TEST_ANDI(0xc7c723dc, 0x000003e5, 0x000003c4)
    // TEST_ANDI(0x6b027aaa, 0x00000f68, 0x00000a28)
    // TEST_ANDI(0x0fce0850, 0x0000043a, 0x00000010)
    // TEST_ANDI(0x85d852f8, 0x00000e83, 0x00000280)
    // TEST_ANDI(0x704986dc, 0x00000eea, 0x000006c8)
    // TEST_ANDI(0x0d4d9452, 0x000004fc, 0x00000450)
    // TEST_ANDI(0x9afb0dcd, 0x00000020, 0x00000000)
    // TEST_ANDI(0x396a58de, 0x00000e88, 0x00000888)
    // TEST_ANDI(0xbb4ad310, 0x00000276, 0x00000210)
    // TEST_ANDI(0x94b896ba, 0x00000beb, 0x000002aa)
    // TEST_ANDI(0xd8ee2d71, 0x00000fec, 0x00000d60)
    // TEST_ANDI(0xc0798d00, 0x00000390, 0x00000100)
    // TEST_ANDI(0xea325e48, 0x000001b4, 0x00000000)
    // TEST_ANDI(0x2bac4149, 0x00000a30, 0x00000000)
    // TEST_ANDI(0x377d4040, 0x00000ecc, 0x00000040)
    // TEST_ANDI(0xcdf62f00, 0x00000508, 0x00000500)
    // TEST_ANDI(0x15c1c13e, 0x0000046c, 0x0000002c)
    // TEST_ANDI(0xbabb5e27, 0x00000d0e, 0x00000c06)
    // TEST_ANDI(0x04d931c0, 0x00000adc, 0x000000c0)
    // TEST_ANDI(0x49426dd4, 0x00000d1e, 0x00000d14)
    // TEST_ANDI(0x6f24aeec, 0x0000088b, 0x00000888)
    // TEST_ANDI(0xa5f5f200, 0x000006b8, 0x00000200)
    // TEST_ANDI(0x25826e76, 0x000003d5, 0x00000254)
    // TEST_ANDI(0xeddcd8ec, 0x0000043a, 0x00000028)
    // TEST_ANDI(0x0007e4e4, 0x00000474, 0x00000464)
    // TEST_ANDI(0x62b8ba1c, 0x000009d0, 0x00000810)
    // TEST_ANDI(0xcc5c34c4, 0x00000fce, 0x000004c4)
    // TEST_ANDI(0xeb342068, 0x00000734, 0x00000020)
    // TEST_ANDI(0xc2cadb00, 0x000002b1, 0x00000200)
    // TEST_ANDI(0xf168f07c, 0x00000e4f, 0x0000004c)
    // TEST_ANDI(0xb7dfc700, 0x00000c0f, 0x00000400)
    // TEST_ANDI(0x7dcba54c, 0x00000200, 0x00000000)
    // TEST_ANDI(0x98a8a1b0, 0x000001d2, 0x00000190)
    // TEST_ANDI(0xbe676615, 0x00000896, 0x00000014)
    // TEST_ANDI(0x0e2d0dac, 0x00000b1e, 0x0000090c)
    // TEST_ANDI(0xef28f600, 0x00000500, 0x00000400)
    // TEST_ANDI(0xcd0d570c, 0x00000a1a, 0x00000208)
    // TEST_ANDI(0xec254b7a, 0x00000804, 0x00000800)
    // TEST_ANDI(0x3e31b970, 0x0000008e, 0x00000000)
    // TEST_ANDI(0x1e923138, 0x0000036d, 0x00000128)
    // TEST_ANDI(0x1853113b, 0x000001d6, 0x00000112)
    // TEST_ANDI(0x38ec0c00, 0x0000089b, 0x00000800)
    // TEST_ANDI(0x90dfc0f4, 0x00000980, 0x00000080)
    // TEST_ANDI(0xf0f2863c, 0x00000bd9, 0x00000218)
    // TEST_ANDI(0x589305c8, 0x00000748, 0x00000548)
    // TEST_ANDI(0xcb3b43b8, 0x00000bb8, 0x000003b8)
    // TEST_ANDI(0x4fdfa51c, 0x00000eab, 0x00000408)
    // TEST_ANDI(0xac86fbe0, 0x00000972, 0x00000960)
    // TEST_ANDI(0x62474c80, 0x00000b5a, 0x00000800)
    // TEST_ANDI(0xfef57efc, 0x00000d98, 0x00000c98)
    // TEST_ANDI(0x62e53c80, 0x00000d5c, 0x00000c00)
    // TEST_ANDI(0x297f7040, 0x00000e8f, 0x00000000)
    // TEST_ANDI(0xbdd81cc1, 0x00000399, 0x00000081)
    // TEST_ANDI(0xa6cd25d9, 0x00000e4c, 0x00000448)
    // TEST_ANDI(0x1a638e63, 0x0000058a, 0x00000402)
    // TEST_ANDI(0x8dc0afec, 0x000004f0, 0x000004e0)
    // TEST_ANDI(0x6bae246e, 0x00000060, 0x00000060)
    // TEST_ANDI(0x3cfaff80, 0x0000075b, 0x00000700)
    // TEST_ANDI(0x56957cf1, 0x0000085c, 0x00000850)
    // TEST_ANDI(0xab399314, 0x00000874, 0x00000014)
    // TEST_ANDI(0xbb5c6f4a, 0x0000028f, 0x0000020a)
    // TEST_ANDI(0x89e84318, 0x00000ef4, 0x00000210)
    // TEST_ANDI(0xdcb88a10, 0x000009dc, 0x00000810)
    // TEST_ANDI(0x9c178075, 0x000002ff, 0x00000075)
    // TEST_ANDI(0x703def20, 0x00000201, 0x00000200)
    // TEST_ANDI(0x525f1bc4, 0x00000f42, 0x00000b40)
    // TEST_ANDI(0x40e45ee8, 0x0000087d, 0x00000868)
    // TEST_ANDI(0xfd12c8b8, 0x00000e3d, 0x00000838)
    // TEST_ANDI(0x8dd34660, 0x000006b9, 0x00000620)
    // TEST_ANDI(0x2d899331, 0x000002c0, 0x00000200)
    // TEST_ANDI(0xc380bae0, 0x00000ccf, 0x000008c0)
    // TEST_ANDI(0x6901f8aa, 0x000007be, 0x000000aa)
    // TEST_ANDI(0x195e5c70, 0x0000028c, 0x00000000)
    // TEST_ANDI(0x045d0d20, 0x0000097d, 0x00000920)
    // TEST_ANDI(0x58523014, 0x00000d72, 0x00000010)
    // TEST_ANDI(0x4593277c, 0x00000000, 0x00000000)
    // TEST_ANDI(0x49b1cc7b, 0x00000000, 0x00000000)
    // TEST_ANDI(0xf03f7e70, 0x00000000, 0x00000000)
    // TEST_ANDI(0x43eae8f0, 0x00000000, 0x00000000)
    // TEST_ANDI(0xc5a82940, 0x00000000, 0x00000000)
    // TEST_ANDI(0xac1f35a0, 0x00000000, 0x00000000)
    // TEST_ANDI(0xac1b0623, 0x00000000, 0x00000000)
    // TEST_ANDI(0x3abb76c0, 0x00000000, 0x00000000)
    // TEST_ANDI(0xcf6bd3fc, 0x00000000, 0x00000000)
    // TEST_ANDI(0x3b7f71f3, 0x00000000, 0x00000000)
    // TEST_ANDI(0x9fef1a7c, 0x00000000, 0x00000000)
    // TEST_ANDI(0xb1980f60, 0x00000000, 0x00000000)
    // TEST_ANDI(0x135f3ae8, 0x00000000, 0x00000000)
    // TEST_ANDI(0x1638ddf6, 0x00000000, 0x00000000)
    // TEST_ANDI(0x426d3664, 0x00000000, 0x00000000)
    // TEST_ANDI(0xa164a7a3, 0x00000000, 0x00000000)
    // TEST_ANDI(0xaf159c7a, 0x00000000, 0x00000000)
    // TEST_ANDI(0x68950560, 0x00000000, 0x00000000)
    // TEST_ANDI(0x840cef68, 0x00000000, 0x00000000)
    // TEST_ANDI(0x65a72314, 0x00000000, 0x00000000)
    // TEST_ANDI(0x4372c5c0, 0x00000000, 0x00000000)
    // TEST_ANDI(0x80f3a836, 0x00000000, 0x00000000)
    // TEST_ANDI(0xc61777fc, 0x00000000, 0x00000000)
    // TEST_ANDI(0xde35ed25, 0x00000000, 0x00000000)
    // TEST_ANDI(0x00f0ac7a, 0x00000000, 0x00000000)
    // TEST_ANDI(0xb0de36a8, 0x00000000, 0x00000000)
    // TEST_ANDI(0x08f17adc, 0x00000000, 0x00000000)
    // TEST_ANDI(0x15e1b69c, 0x00000000, 0x00000000)
    // TEST_ANDI(0x7b6926c4, 0x00000000, 0x00000000)
    // TEST_ANDI(0xcc90f600, 0x00000000, 0x00000000)
    // TEST_ANDI(0x48c9e84b, 0x00000000, 0x00000000)
    // TEST_ANDI(0x146fda2e, 0x00000000, 0x00000000)
    // TEST_ANDI(0xaade3180, 0x00000000, 0x00000000)
    // TEST_ANDI(0xa6d6f0f0, 0x00000000, 0x00000000)
    // TEST_ANDI(0x1be76f70, 0x00000000, 0x00000000)
    // TEST_ANDI(0x1f49becc, 0x00000000, 0x00000000)
    // TEST_ANDI(0x587e1ec1, 0x00000000, 0x00000000)
    // TEST_ANDI(0x3b1d0ec0, 0x00000000, 0x00000000)
    // TEST_ANDI(0xd3acc110, 0x00000000, 0x00000000)
    // TEST_ANDI(0xe925fd50, 0x00000000, 0x00000000)
    // TEST_ANDI(0xcf2b8c46, 0x00000000, 0x00000000)
    // TEST_ANDI(0x368c5db5, 0x00000000, 0x00000000)
    // TEST_ANDI(0x00aff7c8, 0x00000000, 0x00000000)
    // TEST_ANDI(0x3ce74c00, 0x00000000, 0x00000000)
    // TEST_ANDI(0x31318f60, 0x00000000, 0x00000000)
    // TEST_ANDI(0x1b684480, 0x00000000, 0x00000000)
    // TEST_ANDI(0xcfc9a7a8, 0x00000000, 0x00000000)
    // TEST_ANDI(0xf34f9e20, 0x00000000, 0x00000000)
    // TEST_ANDI(0x1914123c, 0x00000000, 0x00000000)
    // TEST_ANDI(0xdaaae9aa, 0x00000000, 0x00000000)
    // TEST_ANDI(0x00000000, 0x0000073c, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000186, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000b48, 0x00000000)
    // TEST_ANDI(0x00000000, 0x000005e0, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000495, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000afc, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000130, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000965, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000238, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000444, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000fc4, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000378, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000fa6, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000b9e, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000928, 0x00000000)
    // TEST_ANDI(0x00000000, 0x000003a0, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000f6d, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000348, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000f00, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000900, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000ba0, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000560, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000099, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000f98, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000d24, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000294, 0x00000000)
    // TEST_ANDI(0x00000000, 0x000009c8, 0x00000000)
    // TEST_ANDI(0x00000000, 0x0000052f, 0x00000000)
    // TEST_ANDI(0x00000000, 0x000003e1, 0x00000000)
    // TEST_ANDI(0x00000000, 0x000003c7, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000718, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000a98, 0x00000000)
    // TEST_ANDI(0x00000000, 0x0000095e, 0x00000000)
    // TEST_ANDI(0x00000000, 0x000000d0, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000cf5, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000f38, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000801, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000d32, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000e2c, 0x00000000)
    // TEST_ANDI(0x00000000, 0x000008b2, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000028, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000013, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000000, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000b02, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000b00, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000e05, 0x00000000)
    // TEST_ANDI(0x00000000, 0x000004ca, 0x00000000)
    // TEST_ANDI(0x00000000, 0x000000b2, 0x00000000)
    // TEST_ANDI(0x00000000, 0x00000bc7, 0x00000000)
    // TEST_ANDI(0x00000000, 0x0000046b, 0x00000000)
     TEST_ANDI(0x00000000, 0x00000000, 0x00000000)
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
END(n24_andi_test)
