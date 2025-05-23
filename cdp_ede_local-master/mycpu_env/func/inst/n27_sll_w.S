#include "asm.h"
#include "regdef.h"
#include "inst_test.h"

LEAF(n27_sll_w_test)
    
    addi.w s0, s0 ,1
    li.w  s2, 0x00
###test inst
    TEST_SLL_W(0x79dbdb34, 0x00000007, 0xeded9a00)
    TEST_SLL_W(0xa903fa10, 0x0000001d, 0x00000000)
    // TEST_SLL_W(0x6bd739d8, 0x0000000d, 0xe73b0000)
    // TEST_SLL_W(0x273a784a, 0x0000000a, 0xe9e12800)
    // TEST_SLL_W(0x34058000, 0x00000009, 0x0b000000)
    // TEST_SLL_W(0x7c825738, 0x00000002, 0xf2095ce0)
    // TEST_SLL_W(0x7016cbc2, 0x0000000a, 0x5b2f0800)
    // TEST_SLL_W(0x4a4a30e0, 0x00000009, 0x9461c000)
    // TEST_SLL_W(0x949d24ae, 0x0000000f, 0x92570000)
    // TEST_SLL_W(0x951ca218, 0x0000001c, 0x80000000)
    // TEST_SLL_W(0xc137cea0, 0x00000013, 0x75000000)
    // TEST_SLL_W(0x96b7d6f6, 0x00000019, 0xec000000)
    // TEST_SLL_W(0xe2b9c7a9, 0x00000016, 0xea400000)
    // TEST_SLL_W(0xb2b30175, 0x00000014, 0x17500000)
    // TEST_SLL_W(0x69be4540, 0x0000000a, 0xf9150000)
    // TEST_SLL_W(0x7c52a6b8, 0x0000000c, 0x2a6b8000)
    // TEST_SLL_W(0xf5faf940, 0x00000010, 0xf9400000)
    // TEST_SLL_W(0xbe287b6d, 0x00000017, 0xb6800000)
    // TEST_SLL_W(0x27fb2ce5, 0x0000001b, 0x28000000)
    // TEST_SLL_W(0x10e56648, 0x0000000c, 0x56648000)
    // TEST_SLL_W(0xf1f76d5c, 0x00000019, 0xb8000000)
    // TEST_SLL_W(0x1eea4938, 0x00000014, 0x93800000)
    // TEST_SLL_W(0x9925ee64, 0x0000000f, 0xf7320000)
    // TEST_SLL_W(0x687c68b0, 0x00000014, 0x8b000000)
    // TEST_SLL_W(0x57836790, 0x00000016, 0xe4000000)
    // TEST_SLL_W(0xf105ef10, 0x0000000d, 0xbde20000)
    // TEST_SLL_W(0xf214adb4, 0x00000006, 0x852b6d00)
    // TEST_SLL_W(0x398a2730, 0x00000013, 0x39800000)
    // TEST_SLL_W(0x5b29289c, 0x00000013, 0x44e00000)
    // TEST_SLL_W(0xc9a419c0, 0x00000019, 0x80000000)
    // TEST_SLL_W(0x87883249, 0x00000013, 0x92480000)
    // TEST_SLL_W(0xa1d6c588, 0x00000011, 0x8b100000)
    // TEST_SLL_W(0x23758004, 0x00000009, 0xeb000800)
    // TEST_SLL_W(0xc6e928d0, 0x0000000f, 0x94680000)
    // TEST_SLL_W(0x8d900ae4, 0x00000010, 0x0ae40000)
    // TEST_SLL_W(0x99e3ba00, 0x0000001b, 0x00000000)
    // TEST_SLL_W(0x0137d1e8, 0x0000000d, 0xfa3d0000)
    // TEST_SLL_W(0x8fd62ad0, 0x00000000, 0x8fd62ad0)
    // TEST_SLL_W(0x0b888d4c, 0x0000001a, 0x30000000)
    // TEST_SLL_W(0x585f8f28, 0x00000007, 0x2fc79400)
    // TEST_SLL_W(0xb0b09f98, 0x00000007, 0x584fcc00)
    // TEST_SLL_W(0xe08dab9c, 0x00000009, 0x1b573800)
    // TEST_SLL_W(0xc0f71e1c, 0x00000004, 0x0f71e1c0)
    // TEST_SLL_W(0xff685a9c, 0x0000001f, 0x00000000)
    // TEST_SLL_W(0xa32c4348, 0x00000017, 0xa4000000)
    // TEST_SLL_W(0xe2611a00, 0x0000000a, 0x84680000)
    // TEST_SLL_W(0x0122739b, 0x0000000d, 0x4e736000)
    // TEST_SLL_W(0xc7433a9e, 0x0000000d, 0x6753c000)
    // TEST_SLL_W(0x118fcb00, 0x00000002, 0x463f2c00)
    // TEST_SLL_W(0x72d3ced8, 0x00000015, 0xdb000000)
    // TEST_SLL_W(0xce4d2a10, 0x0000001a, 0x40000000)
    // TEST_SLL_W(0x4ea4b03a, 0x00000013, 0x81d00000)
    // TEST_SLL_W(0x470ac0d0, 0x0000001d, 0x00000000)
    // TEST_SLL_W(0x7106c6a0, 0x00000017, 0x50000000)
    // TEST_SLL_W(0xeb36b8d6, 0x00000006, 0xcdae3580)
    // TEST_SLL_W(0xe69feb9a, 0x0000000b, 0xff5cd000)
    // TEST_SLL_W(0xd2fbfd80, 0x00000019, 0x00000000)
    // TEST_SLL_W(0x99b0b320, 0x00000018, 0x20000000)
    // TEST_SLL_W(0x3d43a180, 0x00000016, 0x60000000)
    // TEST_SLL_W(0x811633f0, 0x0000001d, 0x00000000)
    // TEST_SLL_W(0x0adaf9d0, 0x00000009, 0xb5f3a000)
    // TEST_SLL_W(0x2ac4db84, 0x0000000b, 0x26dc2000)
    // TEST_SLL_W(0xe6b41000, 0x00000000, 0xe6b41000)
    // TEST_SLL_W(0x44050d44, 0x0000001c, 0x40000000)
    // TEST_SLL_W(0xcef47ae0, 0x0000001f, 0x00000000)
    // TEST_SLL_W(0xcb58e299, 0x0000001f, 0x80000000)
    // TEST_SLL_W(0xd761ba60, 0x0000000a, 0x86e98000)
    // TEST_SLL_W(0xc4b97c6e, 0x00000006, 0x2e5f1b80)
    // TEST_SLL_W(0xd8e084e0, 0x00000017, 0x70000000)
    // TEST_SLL_W(0x6f62be20, 0x00000000, 0x6f62be20)
    // TEST_SLL_W(0x93fa2224, 0x00000009, 0xf4444800)
    // TEST_SLL_W(0x17460a00, 0x00000019, 0x00000000)
    // TEST_SLL_W(0x7d04da00, 0x0000000f, 0x6d000000)
    // TEST_SLL_W(0x940df080, 0x00000013, 0x84000000)
    // TEST_SLL_W(0x4debfc42, 0x0000001d, 0x40000000)
    // TEST_SLL_W(0xe8bca424, 0x0000000e, 0x29090000)
    // TEST_SLL_W(0x4dede958, 0x0000001b, 0xc0000000)
    // TEST_SLL_W(0x4e70b0be, 0x00000011, 0x617c0000)
    // TEST_SLL_W(0xb9f7da6c, 0x00000004, 0x9f7da6c0)
    // TEST_SLL_W(0xd82fc800, 0x00000001, 0xb05f9000)
    // TEST_SLL_W(0xbccf6abc, 0x0000000d, 0xed578000)
    // TEST_SLL_W(0xfca46278, 0x0000001f, 0x00000000)
    // TEST_SLL_W(0xd6e42464, 0x00000008, 0xe4246400)
    // TEST_SLL_W(0xc0166f60, 0x0000000d, 0xcdec0000)
    // TEST_SLL_W(0x14d7f5f0, 0x0000000e, 0xfd7c0000)
    // TEST_SLL_W(0x2a87d301, 0x00000005, 0x50fa6020)
    // TEST_SLL_W(0x12958a26, 0x00000003, 0x94ac5130)
    // TEST_SLL_W(0x406a3de8, 0x0000001e, 0x00000000)
    // TEST_SLL_W(0x680becb0, 0x0000000f, 0xf6580000)
    // TEST_SLL_W(0xe67d54c0, 0x0000000d, 0xaa980000)
    // TEST_SLL_W(0x16874504, 0x0000001b, 0x20000000)
    // TEST_SLL_W(0xb655a278, 0x0000001d, 0x00000000)
    // TEST_SLL_W(0x0a08c174, 0x00000011, 0x82e80000)
    // TEST_SLL_W(0xe5e58380, 0x00000006, 0x7960e000)
    // TEST_SLL_W(0x148dc340, 0x00000017, 0xa0000000)
    // TEST_SLL_W(0xc6ffcf60, 0x0000000b, 0xfe7b0000)
    // TEST_SLL_W(0x51edadc8, 0x0000000e, 0x6b720000)
    // TEST_SLL_W(0x28104394, 0x00000006, 0x0410e500)
    // TEST_SLL_W(0xdc327b4e, 0x00000016, 0xd3800000)
    // TEST_SLL_W(0xdc61023b, 0x00000012, 0x08ec0000)
    // TEST_SLL_W(0x25895ec8, 0x0000000f, 0xaf640000)
    // TEST_SLL_W(0x20e462e8, 0x00000019, 0xd0000000)
    // TEST_SLL_W(0xfa6ce618, 0x00000005, 0x4d9cc300)
    // TEST_SLL_W(0x7ffaf5c0, 0x0000001e, 0x00000000)
    // TEST_SLL_W(0x40b4e265, 0x00000014, 0x26500000)
    // TEST_SLL_W(0x96486a70, 0x0000000d, 0x0d4e0000)
    // TEST_SLL_W(0xca895580, 0x00000002, 0x2a255600)
    // TEST_SLL_W(0x89a415a8, 0x00000013, 0xad400000)
    // TEST_SLL_W(0xbcdfc854, 0x00000007, 0x6fe42a00)
    // TEST_SLL_W(0xa3e78c0e, 0x00000019, 0x1c000000)
    // TEST_SLL_W(0xa17c75cc, 0x00000012, 0xd7300000)
    // TEST_SLL_W(0xd682d870, 0x0000000d, 0x5b0e0000)
    // TEST_SLL_W(0xcce41a43, 0x00000015, 0x48600000)
    // TEST_SLL_W(0x5a9fd367, 0x0000001d, 0xe0000000)
    // TEST_SLL_W(0xd7c5af3c, 0x00000008, 0xc5af3c00)
    // TEST_SLL_W(0x7c159e3c, 0x0000000d, 0xb3c78000)
    // TEST_SLL_W(0xdcdf1a48, 0x00000014, 0xa4800000)
    // TEST_SLL_W(0x29942540, 0x00000002, 0xa6509500)
    // TEST_SLL_W(0xb73dc880, 0x00000015, 0x10000000)
    // TEST_SLL_W(0xa3635354, 0x00000012, 0x4d500000)
    // TEST_SLL_W(0x51869ead, 0x00000015, 0xd5a00000)
    // TEST_SLL_W(0x7e8a3b38, 0x00000000, 0x7e8a3b38)
    // TEST_SLL_W(0x8da63f26, 0x00000015, 0xe4c00000)
    // TEST_SLL_W(0x39b66e1a, 0x00000007, 0xdb370d00)
    // TEST_SLL_W(0x69eca580, 0x00000018, 0x80000000)
    // TEST_SLL_W(0x391554e5, 0x0000000b, 0xaaa72800)
    // TEST_SLL_W(0x7825fdca, 0x00000012, 0xf7280000)
    // TEST_SLL_W(0x76ad79c0, 0x0000000e, 0x5e700000)
    // TEST_SLL_W(0x92510adb, 0x00000018, 0xdb000000)
    // TEST_SLL_W(0x006726cc, 0x0000001e, 0x00000000)
    // TEST_SLL_W(0x71990146, 0x00000013, 0x0a300000)
    // TEST_SLL_W(0xb16dffdc, 0x0000000b, 0x6ffee000)
    // TEST_SLL_W(0x14975570, 0x00000008, 0x97557000)
    // TEST_SLL_W(0x77c01184, 0x00000000, 0x77c01184)
    // TEST_SLL_W(0x67857183, 0x00000006, 0xe15c60c0)
    // TEST_SLL_W(0x9de3b83f, 0x0000000d, 0x7707e000)
    // TEST_SLL_W(0xd4ba97c4, 0x0000000a, 0xea5f1000)
    // TEST_SLL_W(0x437e8e14, 0x0000001e, 0x00000000)
    // TEST_SLL_W(0x9cb231d4, 0x00000010, 0x31d40000)
    // TEST_SLL_W(0xde537f8c, 0x00000011, 0xff180000)
    // TEST_SLL_W(0xf3871474, 0x00000008, 0x87147400)
    // TEST_SLL_W(0x003db9a8, 0x00000008, 0x3db9a800)
    // TEST_SLL_W(0xef20582a, 0x00000008, 0x20582a00)
    // TEST_SLL_W(0xc3553251, 0x00000019, 0xa2000000)
    // TEST_SLL_W(0xbb302ae0, 0x00000005, 0x66055c00)
    // TEST_SLL_W(0xff1c6596, 0x00000016, 0x65800000)
    // TEST_SLL_W(0x9f65a5c2, 0x00000013, 0x2e100000)
    // TEST_SLL_W(0xa3376784, 0x0000000e, 0xd9e10000)
    // TEST_SLL_W(0xbe040fcc, 0x00000019, 0x98000000)
    // TEST_SLL_W(0xee622b70, 0x0000001b, 0x80000000)
    // TEST_SLL_W(0x8e71dbe2, 0x00000014, 0xbe200000)
    // TEST_SLL_W(0x78c403d7, 0x00000005, 0x18807ae0)
    // TEST_SLL_W(0xd00db648, 0x00000007, 0x06db2400)
    // TEST_SLL_W(0x2f7b9bfa, 0x00000004, 0xf7b9bfa0)
    // TEST_SLL_W(0x33a4be82, 0x0000001a, 0x08000000)
    // TEST_SLL_W(0x1451c0dc, 0x00000015, 0x1b800000)
    // TEST_SLL_W(0xe70d261e, 0x00000003, 0x386930f0)
    // TEST_SLL_W(0x2b63cb38, 0x0000001b, 0xc0000000)
    // TEST_SLL_W(0xc56b8b90, 0x00000011, 0x17200000)
    // TEST_SLL_W(0x244219d4, 0x0000001f, 0x00000000)
    // TEST_SLL_W(0x6b51e9c2, 0x0000001a, 0x08000000)
    // TEST_SLL_W(0xb8d9e5f8, 0x0000000c, 0x9e5f8000)
    // TEST_SLL_W(0x9492c630, 0x0000000c, 0x2c630000)
    // TEST_SLL_W(0xa419afc0, 0x0000001b, 0x00000000)
    // TEST_SLL_W(0xfef34de0, 0x00000009, 0xe69bc000)
    // TEST_SLL_W(0x4eb8cbca, 0x0000001d, 0x40000000)
    // TEST_SLL_W(0x66495b88, 0x0000000d, 0x2b710000)
    // TEST_SLL_W(0x27267278, 0x00000015, 0x4f000000)
    // TEST_SLL_W(0x32789910, 0x0000001c, 0x00000000)
    // TEST_SLL_W(0x9db898e9, 0x00000015, 0x1d200000)
    // TEST_SLL_W(0xf2f835c0, 0x0000001c, 0x00000000)
    // TEST_SLL_W(0xe5d08f1c, 0x00000000, 0xe5d08f1c)
    // TEST_SLL_W(0x72315bfc, 0x00000014, 0xbfc00000)
    // TEST_SLL_W(0x7a38d700, 0x00000001, 0xf471ae00)
    // TEST_SLL_W(0x76cdf700, 0x00000016, 0xc0000000)
    // TEST_SLL_W(0xdbe46800, 0x00000010, 0x68000000)
    // TEST_SLL_W(0x722bca40, 0x00000011, 0x94800000)
    // TEST_SLL_W(0xd37116f8, 0x00000006, 0xdc45be00)
    // TEST_SLL_W(0x8c4d4800, 0x00000017, 0x00000000)
    // TEST_SLL_W(0x441566d5, 0x00000019, 0xaa000000)
    // TEST_SLL_W(0x1c9d905c, 0x0000001f, 0x00000000)
    // TEST_SLL_W(0x5fef9198, 0x00000012, 0x46600000)
    // TEST_SLL_W(0xee6ff60b, 0x0000000c, 0xff60b000)
    // TEST_SLL_W(0xda519dd4, 0x00000007, 0x28ceea00)
    // TEST_SLL_W(0x27a14a12, 0x0000000a, 0x85284800)
    // TEST_SLL_W(0x21e467b0, 0x0000000f, 0x33d80000)
    // TEST_SLL_W(0x01034900, 0x00000004, 0x10349000)
    // TEST_SLL_W(0x3826bdf6, 0x0000001a, 0xd8000000)
    // TEST_SLL_W(0x8b148fe0, 0x00000003, 0x58a47f00)
    // TEST_SLL_W(0xce878c10, 0x00000007, 0x43c60800)
    // TEST_SLL_W(0xfd681070, 0x00000017, 0x38000000)
    // TEST_SLL_W(0x0b439f62, 0x00000013, 0xfb100000)
    // TEST_SLL_W(0xa1ee0314, 0x0000000b, 0x7018a000)
    // TEST_SLL_W(0x6d2175a0, 0x0000001d, 0x00000000)
    // TEST_SLL_W(0x20505abd, 0x00000017, 0x5e800000)
    // TEST_SLL_W(0xf7fea1d0, 0x00000007, 0xff50e800)
    // TEST_SLL_W(0xc7a3f400, 0x0000000c, 0x3f400000)
    // TEST_SLL_W(0x1b9690c3, 0x0000001b, 0x18000000)
    // TEST_SLL_W(0x999ff140, 0x00000000, 0x999ff140)
    // TEST_SLL_W(0x235b0856, 0x0000000e, 0xc2158000)
    // TEST_SLL_W(0xbd3f3520, 0x00000000, 0xbd3f3520)
    // TEST_SLL_W(0x2ba8915a, 0x00000000, 0x2ba8915a)
    // TEST_SLL_W(0xc2d4a826, 0x00000000, 0xc2d4a826)
    // TEST_SLL_W(0x5b749a60, 0x00000000, 0x5b749a60)
    // TEST_SLL_W(0x08291e00, 0x00000000, 0x08291e00)
    // TEST_SLL_W(0x80b53fd8, 0x00000000, 0x80b53fd8)
    // TEST_SLL_W(0xbd630190, 0x00000000, 0xbd630190)
    // TEST_SLL_W(0xae46e1d8, 0x00000000, 0xae46e1d8)
    // TEST_SLL_W(0x4afb9404, 0x00000000, 0x4afb9404)
    // TEST_SLL_W(0xaa345ff4, 0x00000000, 0xaa345ff4)
    // TEST_SLL_W(0x04e46b9c, 0x00000000, 0x04e46b9c)
    // TEST_SLL_W(0x9851a9ab, 0x00000000, 0x9851a9ab)
    // TEST_SLL_W(0xcf814896, 0x00000000, 0xcf814896)
    // TEST_SLL_W(0x44310c9e, 0x00000000, 0x44310c9e)
    // TEST_SLL_W(0xfd5132aa, 0x00000000, 0xfd5132aa)
    // TEST_SLL_W(0xcf2b6950, 0x00000000, 0xcf2b6950)
    // TEST_SLL_W(0x63518bb0, 0x00000000, 0x63518bb0)
    // TEST_SLL_W(0xe8f3cf20, 0x00000000, 0xe8f3cf20)
    // TEST_SLL_W(0xd3e7db28, 0x00000000, 0xd3e7db28)
    // TEST_SLL_W(0xf54b66fc, 0x00000000, 0xf54b66fc)
    // TEST_SLL_W(0x31ede4b8, 0x00000000, 0x31ede4b8)
    // TEST_SLL_W(0x2728c3a2, 0x00000000, 0x2728c3a2)
    // TEST_SLL_W(0x0c400340, 0x00000000, 0x0c400340)
    // TEST_SLL_W(0x0b5b3e04, 0x00000000, 0x0b5b3e04)
    // TEST_SLL_W(0x30807cb0, 0x00000000, 0x30807cb0)
    // TEST_SLL_W(0xace92d24, 0x00000000, 0xace92d24)
    // TEST_SLL_W(0x8b485f60, 0x00000000, 0x8b485f60)
    // TEST_SLL_W(0x4ee519ee, 0x00000000, 0x4ee519ee)
    // TEST_SLL_W(0xd477fb2c, 0x00000000, 0xd477fb2c)
    // TEST_SLL_W(0x30ea056b, 0x00000000, 0x30ea056b)
    // TEST_SLL_W(0x2752c3c0, 0x00000000, 0x2752c3c0)
    // TEST_SLL_W(0x57c69600, 0x00000000, 0x57c69600)
    // TEST_SLL_W(0x8d414e38, 0x00000000, 0x8d414e38)
    // TEST_SLL_W(0x97d38920, 0x00000000, 0x97d38920)
    // TEST_SLL_W(0x94d69c62, 0x00000000, 0x94d69c62)
    // TEST_SLL_W(0x67da3e31, 0x00000000, 0x67da3e31)
    // TEST_SLL_W(0x729d3688, 0x00000000, 0x729d3688)
    // TEST_SLL_W(0xa51f79bf, 0x00000000, 0xa51f79bf)
    // TEST_SLL_W(0x14736ed5, 0x00000000, 0x14736ed5)
    // TEST_SLL_W(0x2ccf043c, 0x00000000, 0x2ccf043c)
    // TEST_SLL_W(0x7739bde0, 0x00000000, 0x7739bde0)
    // TEST_SLL_W(0x7cb70888, 0x00000000, 0x7cb70888)
    // TEST_SLL_W(0xc87883ac, 0x00000000, 0xc87883ac)
    // TEST_SLL_W(0x1e2cbeb6, 0x00000000, 0x1e2cbeb6)
    // TEST_SLL_W(0x81cdbff3, 0x00000000, 0x81cdbff3)
    // TEST_SLL_W(0x49346960, 0x00000000, 0x49346960)
    // TEST_SLL_W(0xbf69f668, 0x00000000, 0xbf69f668)
    // TEST_SLL_W(0xff168870, 0x00000000, 0xff168870)
    // TEST_SLL_W(0x223c15f4, 0x00000000, 0x223c15f4)
    // TEST_SLL_W(0x323bd800, 0x00000000, 0x323bd800)
    // TEST_SLL_W(0x00000000, 0x0000001e, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000003, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000016, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000003, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x0000001a, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000017, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000011, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000002, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000015, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000018, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x0000000a, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000012, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000018, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x0000001d, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000015, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x0000000a, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x0000000f, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x0000001e, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x0000000e, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x0000000b, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000006, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000019, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x0000000a, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x0000000f, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000000, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x0000001f, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x0000001f, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000007, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000017, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x0000001d, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000017, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x0000000f, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000019, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x0000000a, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000005, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x0000000a, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000011, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000017, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000010, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000006, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000009, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000014, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x0000000a, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000003, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x0000000b, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000014, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x0000000b, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000017, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000016, 0x00000000)
    // TEST_SLL_W(0x00000000, 0x00000001, 0x00000000)
    TEST_SLL_W(0x00000000, 0x00000000, 0x00000000)
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
END(n27_sll_w_test)
