#include "asm.h"
#include "regdef.h"
#include "inst_test.h"

LEAF(n8_or_test)
    
    addi.w s0, s0 ,1
    li.w  s2, 0x0
###test inst
    TEST_OR(0x50e41484, 0xad35ea94, 0xfdf5fe94)
    TEST_OR(0xbbbfafe4, 0xc8e94400, 0xfbffefe4)
    TEST_OR(0xf293f134, 0xa7cc798a, 0xf7dff9be)
    // TEST_OR(0xfb4eee5e, 0x66968a90, 0xffdeeede)
    // TEST_OR(0xbc988af7, 0x986e2136, 0xbcfeabf7)
    // TEST_OR(0x1ec77b94, 0x1bf2b5cc, 0x1ff7ffdc)
    // TEST_OR(0x3f4f40ca, 0x89bf86b2, 0xbfffc6fa)
    // TEST_OR(0xcf97afe8, 0x3c845a89, 0xff97ffe9)
    // TEST_OR(0x74926eec, 0x556dc1dc, 0x75ffeffc)
    // TEST_OR(0xbb9c5258, 0xc090aa10, 0xfb9cfa58)
    // TEST_OR(0xcad74640, 0xdb28e181, 0xdbffe7c1)
    // TEST_OR(0x33b214b8, 0xca793c6a, 0xfbfb3cfa)
    // TEST_OR(0x62e3914c, 0x6762ab45, 0x67e3bb4d)
    // TEST_OR(0x69ff9ea0, 0x4910452c, 0x69ffdfac)
    // TEST_OR(0x1c4bc4e8, 0x5aeab614, 0x5eebf6fc)
  // #if (!SHORT_TEST1)
    // TEST_OR(0x0da114aa, 0x6c31e1a8, 0x6db1f5aa)
    // TEST_OR(0xac65b92c, 0x804734d8, 0xac67bdfc)
    // TEST_OR(0x1019aba0, 0x6bec6690, 0x7bfdefb0)
    // TEST_OR(0x0a530b08, 0x94d5ba1a, 0x9ed7bb1a)
    // TEST_OR(0x86381080, 0x9130a0f0, 0x9738b0f0)
    // TEST_OR(0x106eec44, 0xd64d1eb9, 0xd66ffefd)
    // TEST_OR(0xd8891000, 0xcc0bdb4e, 0xdc8bdb4e)
    // TEST_OR(0x6cc82d12, 0xf32186b0, 0xffe9afb2)
    // TEST_OR(0x90bf2660, 0x56e46fab, 0xd6ff6feb)
    // TEST_OR(0xe09ac2d6, 0x21836000, 0xe19be2d6)
    // TEST_OR(0xbdc04d70, 0x11127c16, 0xbdd27d76)
    // TEST_OR(0x46dcded0, 0x19582954, 0x5fdcffd4)
    // TEST_OR(0x06dc4900, 0x18934b67, 0x1edf4b67)
    // TEST_OR(0x3f09a74b, 0xa4e217bb, 0xbfebb7fb)
    // TEST_OR(0xdfe84d3c, 0x5111bfaa, 0xdff9ffbe)
    // TEST_OR(0x978bb400, 0x7ea27d30, 0xffabfd30)
    // TEST_OR(0xb2929600, 0x25657e00, 0xb7f7fe00)
    // TEST_OR(0x58af2540, 0x05ed984a, 0x5defbd4a)
    // TEST_OR(0xb20c5500, 0x1906162c, 0xbb0e572c)
    // TEST_OR(0x35a99b0c, 0x68cfa700, 0x7defbf0c)
    // TEST_OR(0x9ce95a98, 0x966d7f48, 0x9eed7fd8)
    // TEST_OR(0xdb259d9f, 0x2bf00d95, 0xfbf59d9f)
    // TEST_OR(0x2881d544, 0xe346aac0, 0xebc7ffc4)
    // TEST_OR(0xf12ee860, 0x443d9690, 0xf53ffef0)
    // TEST_OR(0x850b156a, 0x1a93032c, 0x9f9b176e)
    // TEST_OR(0x4ba74682, 0xf97e0f50, 0xfbff4fd2)
    // TEST_OR(0x4ed54700, 0x1e6ccaf2, 0x5efdcff2)
    // TEST_OR(0x535598dc, 0x881ba7d0, 0xdb5fbfdc)
    // TEST_OR(0xc9347cec, 0xcc4ddb60, 0xcd7dffec)
    // TEST_OR(0x464c9099, 0x010fd010, 0x474fd099)
    // TEST_OR(0xf7e77584, 0x391da864, 0xfffffde4)
    // TEST_OR(0xaed733c9, 0xe8d98fda, 0xeedfbfdb)
    // TEST_OR(0xb18a4632, 0xb7121286, 0xb79a56b6)
    // TEST_OR(0xdf71a9d0, 0x1c6f6a00, 0xdf7febd0)
    // TEST_OR(0xec0b89ac, 0x0f0267a7, 0xef0befaf)
    // TEST_OR(0x5e8ea894, 0x01281cfa, 0x5faebcfe)
    // TEST_OR(0x8b7f3f2a, 0x5cd0ba00, 0xdfffbf2a)
    // TEST_OR(0x69a6c180, 0x9ee8bda8, 0xffeefda8)
    // TEST_OR(0x30cdef30, 0x1dbbc724, 0x3dffef34)
    // TEST_OR(0x78d3fe74, 0x6152cf10, 0x79d3ff74)
    // TEST_OR(0x9ccfa1f0, 0xe9f16114, 0xfdffe1f4)
    // TEST_OR(0x0a13c200, 0x1e33e864, 0x1e33ea64)
    // TEST_OR(0xb8810080, 0x5156f180, 0xf9d7f180)
    // TEST_OR(0xe73438a8, 0xaa89d5a0, 0xefbdfda8)
    // TEST_OR(0x36898e80, 0x6af73c18, 0x7effbe98)
    // TEST_OR(0xdda28308, 0x01fdaeb8, 0xddffafb8)
    // TEST_OR(0x11f86ce4, 0x1f89e9fd, 0x1ff9edfd)
    // TEST_OR(0xd039fd38, 0xc60b1870, 0xd63bfd78)
    // TEST_OR(0x343b7884, 0xad7b640c, 0xbd7b7c8c)
    // TEST_OR(0xe3b4d414, 0x4f5aa278, 0xeffef67c)
    // TEST_OR(0x83c55830, 0xc24253d0, 0xc3c75bf0)
    // TEST_OR(0xf4f2dd59, 0x7db8474b, 0xfdfadf5b)
    // TEST_OR(0xfc677c68, 0xd93bfcda, 0xfd7ffcfa)
    // TEST_OR(0xc877c154, 0x97a6329c, 0xdff7f3dc)
    // TEST_OR(0x0d7f7f14, 0xc816d4ce, 0xcd7fffde)
    // TEST_OR(0xc54a677d, 0x6dcec0aa, 0xedcee7ff)
    // TEST_OR(0xc8b42670, 0x8eeb7eab, 0xceff7efb)
    // TEST_OR(0x6f32147a, 0xead8ab4d, 0xeffabf7f)
    // TEST_OR(0xa20b2c3c, 0xfe6caeaf, 0xfe6faebf)
    // TEST_OR(0xca0c9f50, 0x549f2ec8, 0xde9fbfd8)
    // TEST_OR(0x81e47e1e, 0x245cec80, 0xa5fcfe9e)
    // TEST_OR(0x4f5f4154, 0x5b26f7b8, 0x5f7ff7fc)
    // TEST_OR(0xf1e776a0, 0x62d02580, 0xf3f777a0)
    // TEST_OR(0xff6e2e40, 0x694b9d00, 0xff6fbf40)
    // TEST_OR(0x23d33d30, 0x81b7f81e, 0xa3f7fd3e)
    // TEST_OR(0xf6c6b4ea, 0x393f3526, 0xffffb5ee)
    // TEST_OR(0x0eafa7d0, 0x90d3d440, 0x9efff7d0)
    // TEST_OR(0x4a894ac0, 0xfd92d224, 0xff9bdae4)
    // TEST_OR(0x777778a8, 0xfe12c1f1, 0xff77f9f9)
    // TEST_OR(0x00d28785, 0x3fb14d40, 0x3ff3cfc5)
    // TEST_OR(0x3e97bd70, 0x62ba28b4, 0x7ebfbdf4)
    // TEST_OR(0x40eda7c8, 0x8da8f970, 0xcdedfff8)
    // TEST_OR(0xfeb898ce, 0x764143c0, 0xfef9dbce)
    // TEST_OR(0x67868e48, 0x514f13b2, 0x77cf9ffa)
    // TEST_OR(0xe4e7fa54, 0x48c7d50c, 0xece7ff5c)
    // TEST_OR(0x3c9a8f80, 0x78fa0780, 0x7cfa8f80)
    // TEST_OR(0x558fd600, 0x4c38e77c, 0x5dbff77c)
    // TEST_OR(0x1d46d718, 0x15a022ba, 0x1de6f7ba)
    // TEST_OR(0xa2a42f00, 0xb919a7d0, 0xbbbdafd0)
    // TEST_OR(0x1797d4a4, 0x57b22c98, 0x57b7fcbc)
    // TEST_OR(0x3d4d7394, 0xa4460d0c, 0xbd4f7f9c)
    // TEST_OR(0x6ff22260, 0x431ed6fd, 0x6ffef6fd)
    // TEST_OR(0x286b2da0, 0x4ccede22, 0x6cefffa2)
    // TEST_OR(0xe5db4a29, 0x59860bf0, 0xfddf4bf9)
    // TEST_OR(0x8651b153, 0x2ed77bd6, 0xaed7fbd7)
    // TEST_OR(0xf232af58, 0x42136718, 0xf233ef58)
    // TEST_OR(0x13150d2e, 0xb3978c4e, 0xb3978d6e)
    // TEST_OR(0x8fa905ba, 0x0240aa80, 0x8fe9afba)
    // TEST_OR(0x9ee8fae0, 0x2c446d1a, 0xbeecfffa)
    // TEST_OR(0xc3b5114e, 0xdacc441c, 0xdbfd555e)
    // TEST_OR(0xc7ea7138, 0x6af8d654, 0xeffaf77c)
    // TEST_OR(0x10ae10b8, 0xba045100, 0xbaae51b8)
    // TEST_OR(0x502c6be8, 0xc0d86248, 0xd0fc6be8)
    // TEST_OR(0xb5c43ba8, 0xe2eaea18, 0xf7eefbb8)
    // TEST_OR(0xfab3f792, 0x0a907dde, 0xfab3ffde)
    // TEST_OR(0x2cf0ee04, 0xcff9ff80, 0xeff9ff84)
    // TEST_OR(0x08d1a45c, 0xbf6a1a5b, 0xbffbbe5f)
    // TEST_OR(0x3d77d5b0, 0x9f43f300, 0xbf77f7b0)
    // TEST_OR(0x51ac3e60, 0x6b52e19c, 0x7bfefffc)
    // TEST_OR(0xb70bc630, 0xb2f78e26, 0xb7ffce36)
    // TEST_OR(0xc16b60a8, 0x191489e2, 0xd97fe9ea)
    // TEST_OR(0x63e0b340, 0xe285b680, 0xe3e5b7c0)
    // TEST_OR(0x70ce8a00, 0x1c098ec0, 0x7ccf8ec0)
    // TEST_OR(0x67e786b8, 0xdb24005d, 0xffe786fd)
    // TEST_OR(0xd2d4564c, 0x74450bd0, 0xf6d55fdc)
    // TEST_OR(0x910e14d9, 0x8acb85e2, 0x9bcf95fb)
    // TEST_OR(0x3d159888, 0x3ac60e90, 0x3fd79e98)
    // TEST_OR(0xead4311b, 0xc83a5380, 0xeafe739b)
    // TEST_OR(0x4fd6a6a8, 0xbb888a4f, 0xffdeaeef)
    // TEST_OR(0x2fb972a0, 0x53b3ce04, 0x7fbbfea4)
    // TEST_OR(0x6a04555a, 0x46a07f68, 0x6ea47f7a)
    // TEST_OR(0x1b7e137a, 0xb5dd02ae, 0xbfff13fe)
    // TEST_OR(0x35526914, 0x91e9b6b2, 0xb5fbffb6)
    // TEST_OR(0xf9b8389a, 0x27f072ee, 0xfff87afe)
    // TEST_OR(0xa85d9189, 0x16ffa780, 0xbeffb789)
    // TEST_OR(0x436b8358, 0xa02c18b8, 0xe36f9bf8)
    // TEST_OR(0xe505c620, 0xa21c5380, 0xe71dd7a0)
    // TEST_OR(0xc86dacb4, 0x3d092b6d, 0xfd6daffd)
    // TEST_OR(0x8cdb40cc, 0xa05b5546, 0xacdb55ce)
    // TEST_OR(0x6f1e3ca0, 0x6e898826, 0x6f9fbca6)
    // TEST_OR(0x859c2444, 0x21f961e9, 0xa5fd65ed)
    // TEST_OR(0xd78e7bf6, 0x37b18310, 0xf7bffbf6)
    // TEST_OR(0x971af4e0, 0x4c54addc, 0xdf5efdfc)
    // TEST_OR(0xdd91b5e0, 0xc850e340, 0xddd1f7e0)
    // TEST_OR(0x54ca8ab4, 0xdff4ba70, 0xdffebaf4)
    // TEST_OR(0xe1f992d8, 0xa2a5d019, 0xe3fdd2d9)
    // TEST_OR(0x9ff8eaa0, 0xe26cdc80, 0xfffcfea0)
    // TEST_OR(0xa07d0c80, 0x9f37e678, 0xbf7feef8)
    // TEST_OR(0xa7fa1a14, 0x82bbaa38, 0xa7fbba3c)
    // TEST_OR(0x79fe68ac, 0xd836ebd6, 0xf9feebfe)
    // TEST_OR(0x631f1200, 0xa9465f50, 0xeb5f5f50)
    // TEST_OR(0x503ed3b0, 0xd4c3f80e, 0xd4fffbbe)
    // TEST_OR(0x2f7d9231, 0x7dbf9bf8, 0x7fff9bf9)
    // TEST_OR(0x85a85689, 0x9b3a3514, 0x9fba779d)
    // TEST_OR(0x1fd31088, 0xdf8904d6, 0xdfdb14de)
    // TEST_OR(0x49ea5256, 0x78004ec8, 0x79ea5ede)
    // TEST_OR(0xa3db0a10, 0x5650db82, 0xf7dbdb92)
  // #endif
    // TEST_OR(0x0ca86144, 0x3ffdb54c, 0x3ffdf54c)
    // TEST_OR(0xb1c7731a, 0xfa49621c, 0xfbcf731e)
    // TEST_OR(0xb3d88649, 0x960a282e, 0xb7daae6f)
    // TEST_OR(0x57adbf94, 0x9a1acf40, 0xdfbfffd4)
    // TEST_OR(0xf5fdf238, 0x7e7705f6, 0xfffff7fe)
    // TEST_OR(0xd78fbe00, 0x7c55c280, 0xffdffe80)
    // TEST_OR(0xec344c1e, 0xad81375e, 0xedb57f5e)
    // TEST_OR(0x1df7ea7c, 0xbf4075ca, 0xbff7fffe)
    // TEST_OR(0xb1b5cd64, 0xfee95920, 0xfffddd64)
    // TEST_OR(0x310f83a0, 0xd96a5108, 0xf96fd3a8)
    // TEST_OR(0x4b2fbef7, 0x5c429632, 0x5f6fbef7)
    // TEST_OR(0xeaf745ca, 0x656049dc, 0xeff74dde)
    // TEST_OR(0xbc1af088, 0x88ce928a, 0xbcdef28a)
    // TEST_OR(0x56082ce0, 0x0f23c550, 0x5f2bedf0)
    // TEST_OR(0xdba36c09, 0x45e9a498, 0xdfebec99)
    // TEST_OR(0x3e9d9320, 0x6694bbb9, 0x7e9dbbb9)
    // TEST_OR(0xb080abe7, 0x467043ce, 0xf6f0ebef)
    // TEST_OR(0x7419beb0, 0x34acb0c0, 0x74bdbef0)
    // TEST_OR(0x317635f8, 0x11935b4c, 0x31f77ffc)
    // TEST_OR(0xf0525ca0, 0x52e85c2e, 0xf2fa5cae)
    // TEST_OR(0xaa433600, 0x747f9a81, 0xfe7fbe81)
    // TEST_OR(0xae067a50, 0xce058e6e, 0xee07fe7e)
    // TEST_OR(0x75a70618, 0x0f18b00c, 0x7fbfb61c)
    // TEST_OR(0x4f8da580, 0x5a966f8e, 0x5f9fef8e)
    // TEST_OR(0xf8d6e5cc, 0x881c9970, 0xf8defdfc)
    // TEST_OR(0xc7898fdc, 0xc94a4b30, 0xcfcbcffc)
    // TEST_OR(0x8dbc2648, 0xa1bcc900, 0xadbcef48)
    // TEST_OR(0x8e58fa10, 0xf9d74a50, 0xffdffa50)
    // TEST_OR(0x2987a216, 0xa97a9500, 0xa9ffb716)
    // TEST_OR(0xf7ce3e74, 0x8e1d4b80, 0xffdf7ff4)
  // #if (!SHORT_TEST1)
    // TEST_OR(0x0caa2a2c, 0xa47159e0, 0xacfb7bec)
    // TEST_OR(0x54bbfd22, 0x6a96d77c, 0x7ebfff7e)
    // TEST_OR(0x0fd04100, 0xfabdbef4, 0xfffdfff4)
    // TEST_OR(0xb2ec2940, 0x02af6f40, 0xb2ef6f40)
    // TEST_OR(0x064aea18, 0x75c77690, 0x77cffe98)
    // TEST_OR(0xf64bb53a, 0x29e0e4bc, 0xffebf5be)
    // TEST_OR(0x798cd730, 0xe1b27640, 0xf9bef770)
    // TEST_OR(0xdc93f5a0, 0x9339734c, 0xdfbbf7ec)
    // TEST_OR(0x4f6bfc88, 0x8661709a, 0xcf6bfc9a)
    // TEST_OR(0xf5c6cf24, 0x9503cff8, 0xf5c7cffc)
    // TEST_OR(0x74e8eb50, 0xa935c81a, 0xfdfdeb5a)
    // TEST_OR(0x70359bfe, 0xdaab921c, 0xfabf9bfe)
    // TEST_OR(0x51b575f8, 0x86e594f8, 0xd7f5f5f8)
    // TEST_OR(0x9aff2c00, 0x9d61b0b8, 0x9fffbcb8)
    // TEST_OR(0x6940a810, 0x90d5f27d, 0xf9d5fa7d)
    // TEST_OR(0x7c964a84, 0x33a63a20, 0x7fb67aa4)
    // TEST_OR(0x7ca8a820, 0x47a3f067, 0x7fabf867)
    // TEST_OR(0x47e37c74, 0x3bae7420, 0x7fef7c74)
    // TEST_OR(0x2ace0d52, 0x00000000, 0x2ace0d52)
    // TEST_OR(0xc7d6b540, 0x00000000, 0xc7d6b540)
    // TEST_OR(0x297a86a0, 0x00000000, 0x297a86a0)
    // TEST_OR(0xbb35e180, 0x00000000, 0xbb35e180)
    // TEST_OR(0x3cff98b0, 0x00000000, 0x3cff98b0)
    // TEST_OR(0x0549cf7c, 0x00000000, 0x0549cf7c)
    // TEST_OR(0xb9011280, 0x00000000, 0xb9011280)
    // TEST_OR(0x02a823d8, 0x00000000, 0x02a823d8)
    // TEST_OR(0xc21e3f78, 0x00000000, 0xc21e3f78)
    // TEST_OR(0x649981c3, 0x00000000, 0x649981c3)
    // TEST_OR(0x61298b3e, 0x00000000, 0x61298b3e)
    // TEST_OR(0xf1bca7d5, 0x00000000, 0xf1bca7d5)
    // TEST_OR(0x95ca82c2, 0x00000000, 0x95ca82c2)
    // TEST_OR(0xe66d5ef8, 0x00000000, 0xe66d5ef8)
    // TEST_OR(0x4ade53ec, 0x00000000, 0x4ade53ec)
    // TEST_OR(0x76573eaa, 0x00000000, 0x76573eaa)
    // TEST_OR(0xb1eb8732, 0x00000000, 0xb1eb8732)
    // TEST_OR(0xe5fcea30, 0x00000000, 0xe5fcea30)
    // TEST_OR(0x447680de, 0x00000000, 0x447680de)
    // TEST_OR(0xb68a5d00, 0x00000000, 0xb68a5d00)
    // TEST_OR(0x5594dab0, 0x00000000, 0x5594dab0)
    // TEST_OR(0xb628f368, 0x00000000, 0xb628f368)
    // TEST_OR(0x05a824c6, 0x00000000, 0x05a824c6)
    // TEST_OR(0x5ecbe5d6, 0x00000000, 0x5ecbe5d6)
    // TEST_OR(0x86ec793c, 0x00000000, 0x86ec793c)
    // TEST_OR(0xc190a088, 0x00000000, 0xc190a088)
    // TEST_OR(0x85a65990, 0x00000000, 0x85a65990)
    // TEST_OR(0x8780e64f, 0x00000000, 0x8780e64f)
    // TEST_OR(0x2a038100, 0x00000000, 0x2a038100)
    // TEST_OR(0xebc41cb0, 0x00000000, 0xebc41cb0)
    // TEST_OR(0x27e90bc3, 0x00000000, 0x27e90bc3)
    // TEST_OR(0xcd10459c, 0x00000000, 0xcd10459c)
    // TEST_OR(0xdf3ba4c0, 0x00000000, 0xdf3ba4c0)
    // TEST_OR(0x3e259f78, 0x00000000, 0x3e259f78)
    // TEST_OR(0x1c9dc120, 0x00000000, 0x1c9dc120)
    // TEST_OR(0x9bf9a092, 0x00000000, 0x9bf9a092)
    // TEST_OR(0x9ebb65e4, 0x00000000, 0x9ebb65e4)
    // TEST_OR(0xf4da7282, 0x00000000, 0xf4da7282)
    // TEST_OR(0xc5a9dcfc, 0x00000000, 0xc5a9dcfc)
    // TEST_OR(0x26b438e8, 0x00000000, 0x26b438e8)
    // TEST_OR(0x249df131, 0x00000000, 0x249df131)
    // TEST_OR(0xc3025ef2, 0x00000000, 0xc3025ef2)
    // TEST_OR(0xec12fb80, 0x00000000, 0xec12fb80)
    // TEST_OR(0x3f1157c0, 0x00000000, 0x3f1157c0)
    // TEST_OR(0x393bea60, 0x00000000, 0x393bea60)
    // TEST_OR(0x0bbfd440, 0x00000000, 0x0bbfd440)
    // TEST_OR(0xca64cbf4, 0x00000000, 0xca64cbf4)
    // TEST_OR(0x3f9d07d8, 0x00000000, 0x3f9d07d8)
    // TEST_OR(0xdc25bfc0, 0x00000000, 0xdc25bfc0)
    // TEST_OR(0xe3cf2eac, 0x00000000, 0xe3cf2eac)
    // TEST_OR(0x00000000, 0x9ba86780, 0x9ba86780)
    // TEST_OR(0x00000000, 0x3b31cb30, 0x3b31cb30)
    // TEST_OR(0x00000000, 0x0d072a80, 0x0d072a80)
    // TEST_OR(0x00000000, 0xf561aaf4, 0xf561aaf4)
    // TEST_OR(0x00000000, 0xd11246d0, 0xd11246d0)
    // TEST_OR(0x00000000, 0xcd5a89a0, 0xcd5a89a0)
    // TEST_OR(0x00000000, 0x040b7cd3, 0x040b7cd3)
    // TEST_OR(0x00000000, 0xe6c3a3a0, 0xe6c3a3a0)
    // TEST_OR(0x00000000, 0xa4cfec40, 0xa4cfec40)
    // TEST_OR(0x00000000, 0x70b955fc, 0x70b955fc)
    // TEST_OR(0x00000000, 0x9548afc8, 0x9548afc8)
    // TEST_OR(0x00000000, 0x90f96c1c, 0x90f96c1c)
    // TEST_OR(0x00000000, 0x141ba508, 0x141ba508)
    // TEST_OR(0x00000000, 0xa31c7dd4, 0xa31c7dd4)
    // TEST_OR(0x00000000, 0xdea31510, 0xdea31510)
    // TEST_OR(0x00000000, 0x427bdff8, 0x427bdff8)
    // TEST_OR(0x00000000, 0x55394930, 0x55394930)
    // TEST_OR(0x00000000, 0xaf980b62, 0xaf980b62)
    // TEST_OR(0x00000000, 0x7a395780, 0x7a395780)
    // TEST_OR(0x00000000, 0x678fa33c, 0x678fa33c)
    // TEST_OR(0x00000000, 0xe77088a8, 0xe77088a8)
    // TEST_OR(0x00000000, 0xb19e3821, 0xb19e3821)
    // TEST_OR(0x00000000, 0xdf101522, 0xdf101522)
    // TEST_OR(0x00000000, 0x10f49ef0, 0x10f49ef0)
    // TEST_OR(0x00000000, 0x7364415a, 0x7364415a)
    // TEST_OR(0x00000000, 0xd5e67d80, 0xd5e67d80)
    // TEST_OR(0x00000000, 0xaed22fda, 0xaed22fda)
    // TEST_OR(0x00000000, 0xd24819fa, 0xd24819fa)
    // TEST_OR(0x00000000, 0xba9502a7, 0xba9502a7)
    // TEST_OR(0x00000000, 0xe87713b8, 0xe87713b8)
    // TEST_OR(0x00000000, 0x027ed0e6, 0x027ed0e6)
    // TEST_OR(0x00000000, 0xb9d53134, 0xb9d53134)
    // TEST_OR(0x00000000, 0xc9c0776a, 0xc9c0776a)
    // TEST_OR(0x00000000, 0x4cc82840, 0x4cc82840)
    // TEST_OR(0x00000000, 0x5a596fc0, 0x5a596fc0)
    // TEST_OR(0x00000000, 0xbe7a0130, 0xbe7a0130)
    // TEST_OR(0x00000000, 0xfb871612, 0xfb871612)
    // TEST_OR(0x00000000, 0xa88d5966, 0xa88d5966)
    // TEST_OR(0x00000000, 0xe30d5408, 0xe30d5408)
    // TEST_OR(0x00000000, 0x247bc054, 0x247bc054)
    // TEST_OR(0x00000000, 0xbe492860, 0xbe492860)
    // TEST_OR(0x00000000, 0x4e0fa84c, 0x4e0fa84c)
    // TEST_OR(0x00000000, 0x2c3d0ff8, 0x2c3d0ff8)
    // TEST_OR(0x00000000, 0x66327d80, 0x66327d80)
    // TEST_OR(0x00000000, 0x9e5d96bb, 0x9e5d96bb)
    // TEST_OR(0x00000000, 0xbb4301d1, 0xbb4301d1)
    // TEST_OR(0x00000000, 0x8a126074, 0x8a126074)
    // TEST_OR(0x00000000, 0x0734f91e, 0x0734f91e)
    // TEST_OR(0x00000000, 0x8ad8c75c, 0x8ad8c75c)
    //TEST_OR(0x00000000, 0xc82df286, 0xc82df286)
    TEST_OR(0x00000000, 0x00000000, 0x00000000)
  //#endif
###detect exception
    bne s2, zero, inst_error
    NOP4
###score ++
    addi.w s3, s3, 1
###output (s0<<24)|s3
inst_error:  
    slli.w t1, s0, 24
    NOP4
    or t0, t1, s3 
    NOP4
    st.w t0, s1, 0
    jirl zero, ra, 0
    NOP4
END(n8_or_test)
