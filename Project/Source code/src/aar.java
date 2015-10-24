// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.text.Html;
import android.widget.RemoteViews;
import com.dianxinos.powermanager.PowerMgrTabActivity;

public class aar
{

    private static volatile aar m;
    private NotificationManager a;
    private Context b;
    private int c;
    private int d;
    private int e;
    private String f;
    private int g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private boolean l;
    private int n;
    private aff o;
    private final int p[][];
    private acx q;

    private aar(Context context)
    {
        l = false;
        n = 0;
        int ai[][] = new int[4][];
        int ai1[] = new int[101];
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        ai1[0] = 0x7f020210;
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        ai1[1] = 0x7f020211;
        com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
        ai1[2] = 0x7f02021d;
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        ai1[3] = 0x7f020228;
        com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
        ai1[4] = 0x7f020233;
        com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
        ai1[5] = 0x7f02023e;
        com.dianxinos.dxbs.R.drawable _tmp6 = ly.e;
        ai1[6] = 0x7f020249;
        com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
        ai1[7] = 0x7f020254;
        com.dianxinos.dxbs.R.drawable _tmp8 = ly.e;
        ai1[8] = 0x7f02025f;
        com.dianxinos.dxbs.R.drawable _tmp9 = ly.e;
        ai1[9] = 0x7f02026a;
        com.dianxinos.dxbs.R.drawable _tmp10 = ly.e;
        ai1[10] = 0x7f020212;
        com.dianxinos.dxbs.R.drawable _tmp11 = ly.e;
        ai1[11] = 0x7f020214;
        com.dianxinos.dxbs.R.drawable _tmp12 = ly.e;
        ai1[12] = 0x7f020215;
        com.dianxinos.dxbs.R.drawable _tmp13 = ly.e;
        ai1[13] = 0x7f020216;
        com.dianxinos.dxbs.R.drawable _tmp14 = ly.e;
        ai1[14] = 0x7f020217;
        com.dianxinos.dxbs.R.drawable _tmp15 = ly.e;
        ai1[15] = 0x7f020218;
        com.dianxinos.dxbs.R.drawable _tmp16 = ly.e;
        ai1[16] = 0x7f020219;
        com.dianxinos.dxbs.R.drawable _tmp17 = ly.e;
        ai1[17] = 0x7f02021a;
        com.dianxinos.dxbs.R.drawable _tmp18 = ly.e;
        ai1[18] = 0x7f02021b;
        com.dianxinos.dxbs.R.drawable _tmp19 = ly.e;
        ai1[19] = 0x7f02021c;
        com.dianxinos.dxbs.R.drawable _tmp20 = ly.e;
        ai1[20] = 0x7f02021e;
        com.dianxinos.dxbs.R.drawable _tmp21 = ly.e;
        ai1[21] = 0x7f02021f;
        com.dianxinos.dxbs.R.drawable _tmp22 = ly.e;
        ai1[22] = 0x7f020220;
        com.dianxinos.dxbs.R.drawable _tmp23 = ly.e;
        ai1[23] = 0x7f020221;
        com.dianxinos.dxbs.R.drawable _tmp24 = ly.e;
        ai1[24] = 0x7f020222;
        com.dianxinos.dxbs.R.drawable _tmp25 = ly.e;
        ai1[25] = 0x7f020223;
        com.dianxinos.dxbs.R.drawable _tmp26 = ly.e;
        ai1[26] = 0x7f020224;
        com.dianxinos.dxbs.R.drawable _tmp27 = ly.e;
        ai1[27] = 0x7f020225;
        com.dianxinos.dxbs.R.drawable _tmp28 = ly.e;
        ai1[28] = 0x7f020226;
        com.dianxinos.dxbs.R.drawable _tmp29 = ly.e;
        ai1[29] = 0x7f020227;
        com.dianxinos.dxbs.R.drawable _tmp30 = ly.e;
        ai1[30] = 0x7f020229;
        com.dianxinos.dxbs.R.drawable _tmp31 = ly.e;
        ai1[31] = 0x7f02022a;
        com.dianxinos.dxbs.R.drawable _tmp32 = ly.e;
        ai1[32] = 0x7f02022b;
        com.dianxinos.dxbs.R.drawable _tmp33 = ly.e;
        ai1[33] = 0x7f02022c;
        com.dianxinos.dxbs.R.drawable _tmp34 = ly.e;
        ai1[34] = 0x7f02022d;
        com.dianxinos.dxbs.R.drawable _tmp35 = ly.e;
        ai1[35] = 0x7f02022e;
        com.dianxinos.dxbs.R.drawable _tmp36 = ly.e;
        ai1[36] = 0x7f02022f;
        com.dianxinos.dxbs.R.drawable _tmp37 = ly.e;
        ai1[37] = 0x7f020230;
        com.dianxinos.dxbs.R.drawable _tmp38 = ly.e;
        ai1[38] = 0x7f020231;
        com.dianxinos.dxbs.R.drawable _tmp39 = ly.e;
        ai1[39] = 0x7f020232;
        com.dianxinos.dxbs.R.drawable _tmp40 = ly.e;
        ai1[40] = 0x7f020234;
        com.dianxinos.dxbs.R.drawable _tmp41 = ly.e;
        ai1[41] = 0x7f020235;
        com.dianxinos.dxbs.R.drawable _tmp42 = ly.e;
        ai1[42] = 0x7f020236;
        com.dianxinos.dxbs.R.drawable _tmp43 = ly.e;
        ai1[43] = 0x7f020237;
        com.dianxinos.dxbs.R.drawable _tmp44 = ly.e;
        ai1[44] = 0x7f020238;
        com.dianxinos.dxbs.R.drawable _tmp45 = ly.e;
        ai1[45] = 0x7f020239;
        com.dianxinos.dxbs.R.drawable _tmp46 = ly.e;
        ai1[46] = 0x7f02023a;
        com.dianxinos.dxbs.R.drawable _tmp47 = ly.e;
        ai1[47] = 0x7f02023b;
        com.dianxinos.dxbs.R.drawable _tmp48 = ly.e;
        ai1[48] = 0x7f02023c;
        com.dianxinos.dxbs.R.drawable _tmp49 = ly.e;
        ai1[49] = 0x7f02023d;
        com.dianxinos.dxbs.R.drawable _tmp50 = ly.e;
        ai1[50] = 0x7f02023f;
        com.dianxinos.dxbs.R.drawable _tmp51 = ly.e;
        ai1[51] = 0x7f020240;
        com.dianxinos.dxbs.R.drawable _tmp52 = ly.e;
        ai1[52] = 0x7f020241;
        com.dianxinos.dxbs.R.drawable _tmp53 = ly.e;
        ai1[53] = 0x7f020242;
        com.dianxinos.dxbs.R.drawable _tmp54 = ly.e;
        ai1[54] = 0x7f020243;
        com.dianxinos.dxbs.R.drawable _tmp55 = ly.e;
        ai1[55] = 0x7f020244;
        com.dianxinos.dxbs.R.drawable _tmp56 = ly.e;
        ai1[56] = 0x7f020245;
        com.dianxinos.dxbs.R.drawable _tmp57 = ly.e;
        ai1[57] = 0x7f020246;
        com.dianxinos.dxbs.R.drawable _tmp58 = ly.e;
        ai1[58] = 0x7f020247;
        com.dianxinos.dxbs.R.drawable _tmp59 = ly.e;
        ai1[59] = 0x7f020248;
        com.dianxinos.dxbs.R.drawable _tmp60 = ly.e;
        ai1[60] = 0x7f02024a;
        com.dianxinos.dxbs.R.drawable _tmp61 = ly.e;
        ai1[61] = 0x7f02024b;
        com.dianxinos.dxbs.R.drawable _tmp62 = ly.e;
        ai1[62] = 0x7f02024c;
        com.dianxinos.dxbs.R.drawable _tmp63 = ly.e;
        ai1[63] = 0x7f02024d;
        com.dianxinos.dxbs.R.drawable _tmp64 = ly.e;
        ai1[64] = 0x7f02024e;
        com.dianxinos.dxbs.R.drawable _tmp65 = ly.e;
        ai1[65] = 0x7f02024f;
        com.dianxinos.dxbs.R.drawable _tmp66 = ly.e;
        ai1[66] = 0x7f020250;
        com.dianxinos.dxbs.R.drawable _tmp67 = ly.e;
        ai1[67] = 0x7f020251;
        com.dianxinos.dxbs.R.drawable _tmp68 = ly.e;
        ai1[68] = 0x7f020252;
        com.dianxinos.dxbs.R.drawable _tmp69 = ly.e;
        ai1[69] = 0x7f020253;
        com.dianxinos.dxbs.R.drawable _tmp70 = ly.e;
        ai1[70] = 0x7f020255;
        com.dianxinos.dxbs.R.drawable _tmp71 = ly.e;
        ai1[71] = 0x7f020256;
        com.dianxinos.dxbs.R.drawable _tmp72 = ly.e;
        ai1[72] = 0x7f020257;
        com.dianxinos.dxbs.R.drawable _tmp73 = ly.e;
        ai1[73] = 0x7f020258;
        com.dianxinos.dxbs.R.drawable _tmp74 = ly.e;
        ai1[74] = 0x7f020259;
        com.dianxinos.dxbs.R.drawable _tmp75 = ly.e;
        ai1[75] = 0x7f02025a;
        com.dianxinos.dxbs.R.drawable _tmp76 = ly.e;
        ai1[76] = 0x7f02025b;
        com.dianxinos.dxbs.R.drawable _tmp77 = ly.e;
        ai1[77] = 0x7f02025c;
        com.dianxinos.dxbs.R.drawable _tmp78 = ly.e;
        ai1[78] = 0x7f02025d;
        com.dianxinos.dxbs.R.drawable _tmp79 = ly.e;
        ai1[79] = 0x7f02025e;
        com.dianxinos.dxbs.R.drawable _tmp80 = ly.e;
        ai1[80] = 0x7f020260;
        com.dianxinos.dxbs.R.drawable _tmp81 = ly.e;
        ai1[81] = 0x7f020261;
        com.dianxinos.dxbs.R.drawable _tmp82 = ly.e;
        ai1[82] = 0x7f020262;
        com.dianxinos.dxbs.R.drawable _tmp83 = ly.e;
        ai1[83] = 0x7f020263;
        com.dianxinos.dxbs.R.drawable _tmp84 = ly.e;
        ai1[84] = 0x7f020264;
        com.dianxinos.dxbs.R.drawable _tmp85 = ly.e;
        ai1[85] = 0x7f020265;
        com.dianxinos.dxbs.R.drawable _tmp86 = ly.e;
        ai1[86] = 0x7f020266;
        com.dianxinos.dxbs.R.drawable _tmp87 = ly.e;
        ai1[87] = 0x7f020267;
        com.dianxinos.dxbs.R.drawable _tmp88 = ly.e;
        ai1[88] = 0x7f020268;
        com.dianxinos.dxbs.R.drawable _tmp89 = ly.e;
        ai1[89] = 0x7f020269;
        com.dianxinos.dxbs.R.drawable _tmp90 = ly.e;
        ai1[90] = 0x7f02026b;
        com.dianxinos.dxbs.R.drawable _tmp91 = ly.e;
        ai1[91] = 0x7f02026c;
        com.dianxinos.dxbs.R.drawable _tmp92 = ly.e;
        ai1[92] = 0x7f02026d;
        com.dianxinos.dxbs.R.drawable _tmp93 = ly.e;
        ai1[93] = 0x7f02026e;
        com.dianxinos.dxbs.R.drawable _tmp94 = ly.e;
        ai1[94] = 0x7f02026f;
        com.dianxinos.dxbs.R.drawable _tmp95 = ly.e;
        ai1[95] = 0x7f020270;
        com.dianxinos.dxbs.R.drawable _tmp96 = ly.e;
        ai1[96] = 0x7f020271;
        com.dianxinos.dxbs.R.drawable _tmp97 = ly.e;
        ai1[97] = 0x7f020272;
        com.dianxinos.dxbs.R.drawable _tmp98 = ly.e;
        ai1[98] = 0x7f020273;
        com.dianxinos.dxbs.R.drawable _tmp99 = ly.e;
        ai1[99] = 0x7f020274;
        com.dianxinos.dxbs.R.drawable _tmp100 = ly.e;
        ai1[100] = 0x7f020213;
        ai[0] = ai1;
        int ai2[] = new int[101];
        com.dianxinos.dxbs.R.drawable _tmp101 = ly.e;
        ai2[0] = 0x7f020275;
        com.dianxinos.dxbs.R.drawable _tmp102 = ly.e;
        ai2[1] = 0x7f020276;
        com.dianxinos.dxbs.R.drawable _tmp103 = ly.e;
        ai2[2] = 0x7f020282;
        com.dianxinos.dxbs.R.drawable _tmp104 = ly.e;
        ai2[3] = 0x7f02028d;
        com.dianxinos.dxbs.R.drawable _tmp105 = ly.e;
        ai2[4] = 0x7f020298;
        com.dianxinos.dxbs.R.drawable _tmp106 = ly.e;
        ai2[5] = 0x7f0202a3;
        com.dianxinos.dxbs.R.drawable _tmp107 = ly.e;
        ai2[6] = 0x7f0202ae;
        com.dianxinos.dxbs.R.drawable _tmp108 = ly.e;
        ai2[7] = 0x7f0202b9;
        com.dianxinos.dxbs.R.drawable _tmp109 = ly.e;
        ai2[8] = 0x7f0202c4;
        com.dianxinos.dxbs.R.drawable _tmp110 = ly.e;
        ai2[9] = 0x7f0202cf;
        com.dianxinos.dxbs.R.drawable _tmp111 = ly.e;
        ai2[10] = 0x7f020277;
        com.dianxinos.dxbs.R.drawable _tmp112 = ly.e;
        ai2[11] = 0x7f020279;
        com.dianxinos.dxbs.R.drawable _tmp113 = ly.e;
        ai2[12] = 0x7f02027a;
        com.dianxinos.dxbs.R.drawable _tmp114 = ly.e;
        ai2[13] = 0x7f02027b;
        com.dianxinos.dxbs.R.drawable _tmp115 = ly.e;
        ai2[14] = 0x7f02027c;
        com.dianxinos.dxbs.R.drawable _tmp116 = ly.e;
        ai2[15] = 0x7f02027d;
        com.dianxinos.dxbs.R.drawable _tmp117 = ly.e;
        ai2[16] = 0x7f02027e;
        com.dianxinos.dxbs.R.drawable _tmp118 = ly.e;
        ai2[17] = 0x7f02027f;
        com.dianxinos.dxbs.R.drawable _tmp119 = ly.e;
        ai2[18] = 0x7f020280;
        com.dianxinos.dxbs.R.drawable _tmp120 = ly.e;
        ai2[19] = 0x7f020281;
        com.dianxinos.dxbs.R.drawable _tmp121 = ly.e;
        ai2[20] = 0x7f020283;
        com.dianxinos.dxbs.R.drawable _tmp122 = ly.e;
        ai2[21] = 0x7f020284;
        com.dianxinos.dxbs.R.drawable _tmp123 = ly.e;
        ai2[22] = 0x7f020285;
        com.dianxinos.dxbs.R.drawable _tmp124 = ly.e;
        ai2[23] = 0x7f020286;
        com.dianxinos.dxbs.R.drawable _tmp125 = ly.e;
        ai2[24] = 0x7f020287;
        com.dianxinos.dxbs.R.drawable _tmp126 = ly.e;
        ai2[25] = 0x7f020288;
        com.dianxinos.dxbs.R.drawable _tmp127 = ly.e;
        ai2[26] = 0x7f020289;
        com.dianxinos.dxbs.R.drawable _tmp128 = ly.e;
        ai2[27] = 0x7f02028a;
        com.dianxinos.dxbs.R.drawable _tmp129 = ly.e;
        ai2[28] = 0x7f02028b;
        com.dianxinos.dxbs.R.drawable _tmp130 = ly.e;
        ai2[29] = 0x7f02028c;
        com.dianxinos.dxbs.R.drawable _tmp131 = ly.e;
        ai2[30] = 0x7f02028e;
        com.dianxinos.dxbs.R.drawable _tmp132 = ly.e;
        ai2[31] = 0x7f02028f;
        com.dianxinos.dxbs.R.drawable _tmp133 = ly.e;
        ai2[32] = 0x7f020290;
        com.dianxinos.dxbs.R.drawable _tmp134 = ly.e;
        ai2[33] = 0x7f020291;
        com.dianxinos.dxbs.R.drawable _tmp135 = ly.e;
        ai2[34] = 0x7f020292;
        com.dianxinos.dxbs.R.drawable _tmp136 = ly.e;
        ai2[35] = 0x7f020293;
        com.dianxinos.dxbs.R.drawable _tmp137 = ly.e;
        ai2[36] = 0x7f020294;
        com.dianxinos.dxbs.R.drawable _tmp138 = ly.e;
        ai2[37] = 0x7f020295;
        com.dianxinos.dxbs.R.drawable _tmp139 = ly.e;
        ai2[38] = 0x7f020296;
        com.dianxinos.dxbs.R.drawable _tmp140 = ly.e;
        ai2[39] = 0x7f020297;
        com.dianxinos.dxbs.R.drawable _tmp141 = ly.e;
        ai2[40] = 0x7f020299;
        com.dianxinos.dxbs.R.drawable _tmp142 = ly.e;
        ai2[41] = 0x7f02029a;
        com.dianxinos.dxbs.R.drawable _tmp143 = ly.e;
        ai2[42] = 0x7f02029b;
        com.dianxinos.dxbs.R.drawable _tmp144 = ly.e;
        ai2[43] = 0x7f02029c;
        com.dianxinos.dxbs.R.drawable _tmp145 = ly.e;
        ai2[44] = 0x7f02029d;
        com.dianxinos.dxbs.R.drawable _tmp146 = ly.e;
        ai2[45] = 0x7f02029e;
        com.dianxinos.dxbs.R.drawable _tmp147 = ly.e;
        ai2[46] = 0x7f02029f;
        com.dianxinos.dxbs.R.drawable _tmp148 = ly.e;
        ai2[47] = 0x7f0202a0;
        com.dianxinos.dxbs.R.drawable _tmp149 = ly.e;
        ai2[48] = 0x7f0202a1;
        com.dianxinos.dxbs.R.drawable _tmp150 = ly.e;
        ai2[49] = 0x7f0202a2;
        com.dianxinos.dxbs.R.drawable _tmp151 = ly.e;
        ai2[50] = 0x7f0202a4;
        com.dianxinos.dxbs.R.drawable _tmp152 = ly.e;
        ai2[51] = 0x7f0202a5;
        com.dianxinos.dxbs.R.drawable _tmp153 = ly.e;
        ai2[52] = 0x7f0202a6;
        com.dianxinos.dxbs.R.drawable _tmp154 = ly.e;
        ai2[53] = 0x7f0202a7;
        com.dianxinos.dxbs.R.drawable _tmp155 = ly.e;
        ai2[54] = 0x7f0202a8;
        com.dianxinos.dxbs.R.drawable _tmp156 = ly.e;
        ai2[55] = 0x7f0202a9;
        com.dianxinos.dxbs.R.drawable _tmp157 = ly.e;
        ai2[56] = 0x7f0202aa;
        com.dianxinos.dxbs.R.drawable _tmp158 = ly.e;
        ai2[57] = 0x7f0202ab;
        com.dianxinos.dxbs.R.drawable _tmp159 = ly.e;
        ai2[58] = 0x7f0202ac;
        com.dianxinos.dxbs.R.drawable _tmp160 = ly.e;
        ai2[59] = 0x7f0202ad;
        com.dianxinos.dxbs.R.drawable _tmp161 = ly.e;
        ai2[60] = 0x7f0202af;
        com.dianxinos.dxbs.R.drawable _tmp162 = ly.e;
        ai2[61] = 0x7f0202b0;
        com.dianxinos.dxbs.R.drawable _tmp163 = ly.e;
        ai2[62] = 0x7f0202b1;
        com.dianxinos.dxbs.R.drawable _tmp164 = ly.e;
        ai2[63] = 0x7f0202b2;
        com.dianxinos.dxbs.R.drawable _tmp165 = ly.e;
        ai2[64] = 0x7f0202b3;
        com.dianxinos.dxbs.R.drawable _tmp166 = ly.e;
        ai2[65] = 0x7f0202b4;
        com.dianxinos.dxbs.R.drawable _tmp167 = ly.e;
        ai2[66] = 0x7f0202b5;
        com.dianxinos.dxbs.R.drawable _tmp168 = ly.e;
        ai2[67] = 0x7f0202b6;
        com.dianxinos.dxbs.R.drawable _tmp169 = ly.e;
        ai2[68] = 0x7f0202b7;
        com.dianxinos.dxbs.R.drawable _tmp170 = ly.e;
        ai2[69] = 0x7f0202b8;
        com.dianxinos.dxbs.R.drawable _tmp171 = ly.e;
        ai2[70] = 0x7f0202ba;
        com.dianxinos.dxbs.R.drawable _tmp172 = ly.e;
        ai2[71] = 0x7f0202bb;
        com.dianxinos.dxbs.R.drawable _tmp173 = ly.e;
        ai2[72] = 0x7f0202bc;
        com.dianxinos.dxbs.R.drawable _tmp174 = ly.e;
        ai2[73] = 0x7f0202bd;
        com.dianxinos.dxbs.R.drawable _tmp175 = ly.e;
        ai2[74] = 0x7f0202be;
        com.dianxinos.dxbs.R.drawable _tmp176 = ly.e;
        ai2[75] = 0x7f0202bf;
        com.dianxinos.dxbs.R.drawable _tmp177 = ly.e;
        ai2[76] = 0x7f0202c0;
        com.dianxinos.dxbs.R.drawable _tmp178 = ly.e;
        ai2[77] = 0x7f0202c1;
        com.dianxinos.dxbs.R.drawable _tmp179 = ly.e;
        ai2[78] = 0x7f0202c2;
        com.dianxinos.dxbs.R.drawable _tmp180 = ly.e;
        ai2[79] = 0x7f0202c3;
        com.dianxinos.dxbs.R.drawable _tmp181 = ly.e;
        ai2[80] = 0x7f0202c5;
        com.dianxinos.dxbs.R.drawable _tmp182 = ly.e;
        ai2[81] = 0x7f0202c6;
        com.dianxinos.dxbs.R.drawable _tmp183 = ly.e;
        ai2[82] = 0x7f0202c7;
        com.dianxinos.dxbs.R.drawable _tmp184 = ly.e;
        ai2[83] = 0x7f0202c8;
        com.dianxinos.dxbs.R.drawable _tmp185 = ly.e;
        ai2[84] = 0x7f0202c9;
        com.dianxinos.dxbs.R.drawable _tmp186 = ly.e;
        ai2[85] = 0x7f0202ca;
        com.dianxinos.dxbs.R.drawable _tmp187 = ly.e;
        ai2[86] = 0x7f0202cb;
        com.dianxinos.dxbs.R.drawable _tmp188 = ly.e;
        ai2[87] = 0x7f0202cc;
        com.dianxinos.dxbs.R.drawable _tmp189 = ly.e;
        ai2[88] = 0x7f0202cd;
        com.dianxinos.dxbs.R.drawable _tmp190 = ly.e;
        ai2[89] = 0x7f0202ce;
        com.dianxinos.dxbs.R.drawable _tmp191 = ly.e;
        ai2[90] = 0x7f0202d0;
        com.dianxinos.dxbs.R.drawable _tmp192 = ly.e;
        ai2[91] = 0x7f0202d1;
        com.dianxinos.dxbs.R.drawable _tmp193 = ly.e;
        ai2[92] = 0x7f0202d2;
        com.dianxinos.dxbs.R.drawable _tmp194 = ly.e;
        ai2[93] = 0x7f0202d3;
        com.dianxinos.dxbs.R.drawable _tmp195 = ly.e;
        ai2[94] = 0x7f0202d4;
        com.dianxinos.dxbs.R.drawable _tmp196 = ly.e;
        ai2[95] = 0x7f0202d5;
        com.dianxinos.dxbs.R.drawable _tmp197 = ly.e;
        ai2[96] = 0x7f0202d6;
        com.dianxinos.dxbs.R.drawable _tmp198 = ly.e;
        ai2[97] = 0x7f0202d7;
        com.dianxinos.dxbs.R.drawable _tmp199 = ly.e;
        ai2[98] = 0x7f0202d8;
        com.dianxinos.dxbs.R.drawable _tmp200 = ly.e;
        ai2[99] = 0x7f0202d9;
        com.dianxinos.dxbs.R.drawable _tmp201 = ly.e;
        ai2[100] = 0x7f020278;
        ai[1] = ai2;
        int ai3[] = new int[101];
        com.dianxinos.dxbs.R.drawable _tmp202 = ly.e;
        ai3[0] = 0x7f02032a;
        com.dianxinos.dxbs.R.drawable _tmp203 = ly.e;
        ai3[1] = 0x7f02032b;
        com.dianxinos.dxbs.R.drawable _tmp204 = ly.e;
        ai3[2] = 0x7f020337;
        com.dianxinos.dxbs.R.drawable _tmp205 = ly.e;
        ai3[3] = 0x7f020342;
        com.dianxinos.dxbs.R.drawable _tmp206 = ly.e;
        ai3[4] = 0x7f02034d;
        com.dianxinos.dxbs.R.drawable _tmp207 = ly.e;
        ai3[5] = 0x7f020358;
        com.dianxinos.dxbs.R.drawable _tmp208 = ly.e;
        ai3[6] = 0x7f020363;
        com.dianxinos.dxbs.R.drawable _tmp209 = ly.e;
        ai3[7] = 0x7f02036e;
        com.dianxinos.dxbs.R.drawable _tmp210 = ly.e;
        ai3[8] = 0x7f020379;
        com.dianxinos.dxbs.R.drawable _tmp211 = ly.e;
        ai3[9] = 0x7f020384;
        com.dianxinos.dxbs.R.drawable _tmp212 = ly.e;
        ai3[10] = 0x7f02032c;
        com.dianxinos.dxbs.R.drawable _tmp213 = ly.e;
        ai3[11] = 0x7f02032e;
        com.dianxinos.dxbs.R.drawable _tmp214 = ly.e;
        ai3[12] = 0x7f02032f;
        com.dianxinos.dxbs.R.drawable _tmp215 = ly.e;
        ai3[13] = 0x7f020330;
        com.dianxinos.dxbs.R.drawable _tmp216 = ly.e;
        ai3[14] = 0x7f020331;
        com.dianxinos.dxbs.R.drawable _tmp217 = ly.e;
        ai3[15] = 0x7f020332;
        com.dianxinos.dxbs.R.drawable _tmp218 = ly.e;
        ai3[16] = 0x7f020333;
        com.dianxinos.dxbs.R.drawable _tmp219 = ly.e;
        ai3[17] = 0x7f020334;
        com.dianxinos.dxbs.R.drawable _tmp220 = ly.e;
        ai3[18] = 0x7f020335;
        com.dianxinos.dxbs.R.drawable _tmp221 = ly.e;
        ai3[19] = 0x7f020336;
        com.dianxinos.dxbs.R.drawable _tmp222 = ly.e;
        ai3[20] = 0x7f020338;
        com.dianxinos.dxbs.R.drawable _tmp223 = ly.e;
        ai3[21] = 0x7f020339;
        com.dianxinos.dxbs.R.drawable _tmp224 = ly.e;
        ai3[22] = 0x7f02033a;
        com.dianxinos.dxbs.R.drawable _tmp225 = ly.e;
        ai3[23] = 0x7f02033b;
        com.dianxinos.dxbs.R.drawable _tmp226 = ly.e;
        ai3[24] = 0x7f02033c;
        com.dianxinos.dxbs.R.drawable _tmp227 = ly.e;
        ai3[25] = 0x7f02033d;
        com.dianxinos.dxbs.R.drawable _tmp228 = ly.e;
        ai3[26] = 0x7f02033e;
        com.dianxinos.dxbs.R.drawable _tmp229 = ly.e;
        ai3[27] = 0x7f02033f;
        com.dianxinos.dxbs.R.drawable _tmp230 = ly.e;
        ai3[28] = 0x7f020340;
        com.dianxinos.dxbs.R.drawable _tmp231 = ly.e;
        ai3[29] = 0x7f020341;
        com.dianxinos.dxbs.R.drawable _tmp232 = ly.e;
        ai3[30] = 0x7f020343;
        com.dianxinos.dxbs.R.drawable _tmp233 = ly.e;
        ai3[31] = 0x7f020344;
        com.dianxinos.dxbs.R.drawable _tmp234 = ly.e;
        ai3[32] = 0x7f020345;
        com.dianxinos.dxbs.R.drawable _tmp235 = ly.e;
        ai3[33] = 0x7f020346;
        com.dianxinos.dxbs.R.drawable _tmp236 = ly.e;
        ai3[34] = 0x7f020347;
        com.dianxinos.dxbs.R.drawable _tmp237 = ly.e;
        ai3[35] = 0x7f020348;
        com.dianxinos.dxbs.R.drawable _tmp238 = ly.e;
        ai3[36] = 0x7f020349;
        com.dianxinos.dxbs.R.drawable _tmp239 = ly.e;
        ai3[37] = 0x7f02034a;
        com.dianxinos.dxbs.R.drawable _tmp240 = ly.e;
        ai3[38] = 0x7f02034b;
        com.dianxinos.dxbs.R.drawable _tmp241 = ly.e;
        ai3[39] = 0x7f02034c;
        com.dianxinos.dxbs.R.drawable _tmp242 = ly.e;
        ai3[40] = 0x7f02034e;
        com.dianxinos.dxbs.R.drawable _tmp243 = ly.e;
        ai3[41] = 0x7f02034f;
        com.dianxinos.dxbs.R.drawable _tmp244 = ly.e;
        ai3[42] = 0x7f020350;
        com.dianxinos.dxbs.R.drawable _tmp245 = ly.e;
        ai3[43] = 0x7f020351;
        com.dianxinos.dxbs.R.drawable _tmp246 = ly.e;
        ai3[44] = 0x7f020352;
        com.dianxinos.dxbs.R.drawable _tmp247 = ly.e;
        ai3[45] = 0x7f020353;
        com.dianxinos.dxbs.R.drawable _tmp248 = ly.e;
        ai3[46] = 0x7f020354;
        com.dianxinos.dxbs.R.drawable _tmp249 = ly.e;
        ai3[47] = 0x7f020355;
        com.dianxinos.dxbs.R.drawable _tmp250 = ly.e;
        ai3[48] = 0x7f020356;
        com.dianxinos.dxbs.R.drawable _tmp251 = ly.e;
        ai3[49] = 0x7f020357;
        com.dianxinos.dxbs.R.drawable _tmp252 = ly.e;
        ai3[50] = 0x7f020359;
        com.dianxinos.dxbs.R.drawable _tmp253 = ly.e;
        ai3[51] = 0x7f02035a;
        com.dianxinos.dxbs.R.drawable _tmp254 = ly.e;
        ai3[52] = 0x7f02035b;
        com.dianxinos.dxbs.R.drawable _tmp255 = ly.e;
        ai3[53] = 0x7f02035c;
        com.dianxinos.dxbs.R.drawable _tmp256 = ly.e;
        ai3[54] = 0x7f02035d;
        com.dianxinos.dxbs.R.drawable _tmp257 = ly.e;
        ai3[55] = 0x7f02035e;
        com.dianxinos.dxbs.R.drawable _tmp258 = ly.e;
        ai3[56] = 0x7f02035f;
        com.dianxinos.dxbs.R.drawable _tmp259 = ly.e;
        ai3[57] = 0x7f020360;
        com.dianxinos.dxbs.R.drawable _tmp260 = ly.e;
        ai3[58] = 0x7f020361;
        com.dianxinos.dxbs.R.drawable _tmp261 = ly.e;
        ai3[59] = 0x7f020362;
        com.dianxinos.dxbs.R.drawable _tmp262 = ly.e;
        ai3[60] = 0x7f020364;
        com.dianxinos.dxbs.R.drawable _tmp263 = ly.e;
        ai3[61] = 0x7f020365;
        com.dianxinos.dxbs.R.drawable _tmp264 = ly.e;
        ai3[62] = 0x7f020366;
        com.dianxinos.dxbs.R.drawable _tmp265 = ly.e;
        ai3[63] = 0x7f020367;
        com.dianxinos.dxbs.R.drawable _tmp266 = ly.e;
        ai3[64] = 0x7f020368;
        com.dianxinos.dxbs.R.drawable _tmp267 = ly.e;
        ai3[65] = 0x7f020369;
        com.dianxinos.dxbs.R.drawable _tmp268 = ly.e;
        ai3[66] = 0x7f02036a;
        com.dianxinos.dxbs.R.drawable _tmp269 = ly.e;
        ai3[67] = 0x7f02036b;
        com.dianxinos.dxbs.R.drawable _tmp270 = ly.e;
        ai3[68] = 0x7f02036c;
        com.dianxinos.dxbs.R.drawable _tmp271 = ly.e;
        ai3[69] = 0x7f02036d;
        com.dianxinos.dxbs.R.drawable _tmp272 = ly.e;
        ai3[70] = 0x7f02036f;
        com.dianxinos.dxbs.R.drawable _tmp273 = ly.e;
        ai3[71] = 0x7f020370;
        com.dianxinos.dxbs.R.drawable _tmp274 = ly.e;
        ai3[72] = 0x7f020371;
        com.dianxinos.dxbs.R.drawable _tmp275 = ly.e;
        ai3[73] = 0x7f020372;
        com.dianxinos.dxbs.R.drawable _tmp276 = ly.e;
        ai3[74] = 0x7f020373;
        com.dianxinos.dxbs.R.drawable _tmp277 = ly.e;
        ai3[75] = 0x7f020374;
        com.dianxinos.dxbs.R.drawable _tmp278 = ly.e;
        ai3[76] = 0x7f020375;
        com.dianxinos.dxbs.R.drawable _tmp279 = ly.e;
        ai3[77] = 0x7f020376;
        com.dianxinos.dxbs.R.drawable _tmp280 = ly.e;
        ai3[78] = 0x7f020377;
        com.dianxinos.dxbs.R.drawable _tmp281 = ly.e;
        ai3[79] = 0x7f020378;
        com.dianxinos.dxbs.R.drawable _tmp282 = ly.e;
        ai3[80] = 0x7f02037a;
        com.dianxinos.dxbs.R.drawable _tmp283 = ly.e;
        ai3[81] = 0x7f02037b;
        com.dianxinos.dxbs.R.drawable _tmp284 = ly.e;
        ai3[82] = 0x7f02037c;
        com.dianxinos.dxbs.R.drawable _tmp285 = ly.e;
        ai3[83] = 0x7f02037d;
        com.dianxinos.dxbs.R.drawable _tmp286 = ly.e;
        ai3[84] = 0x7f02037e;
        com.dianxinos.dxbs.R.drawable _tmp287 = ly.e;
        ai3[85] = 0x7f02037f;
        com.dianxinos.dxbs.R.drawable _tmp288 = ly.e;
        ai3[86] = 0x7f020380;
        com.dianxinos.dxbs.R.drawable _tmp289 = ly.e;
        ai3[87] = 0x7f020381;
        com.dianxinos.dxbs.R.drawable _tmp290 = ly.e;
        ai3[88] = 0x7f020382;
        com.dianxinos.dxbs.R.drawable _tmp291 = ly.e;
        ai3[89] = 0x7f020383;
        com.dianxinos.dxbs.R.drawable _tmp292 = ly.e;
        ai3[90] = 0x7f020385;
        com.dianxinos.dxbs.R.drawable _tmp293 = ly.e;
        ai3[91] = 0x7f020386;
        com.dianxinos.dxbs.R.drawable _tmp294 = ly.e;
        ai3[92] = 0x7f020387;
        com.dianxinos.dxbs.R.drawable _tmp295 = ly.e;
        ai3[93] = 0x7f020388;
        com.dianxinos.dxbs.R.drawable _tmp296 = ly.e;
        ai3[94] = 0x7f020389;
        com.dianxinos.dxbs.R.drawable _tmp297 = ly.e;
        ai3[95] = 0x7f02038a;
        com.dianxinos.dxbs.R.drawable _tmp298 = ly.e;
        ai3[96] = 0x7f02038b;
        com.dianxinos.dxbs.R.drawable _tmp299 = ly.e;
        ai3[97] = 0x7f02038c;
        com.dianxinos.dxbs.R.drawable _tmp300 = ly.e;
        ai3[98] = 0x7f02038d;
        com.dianxinos.dxbs.R.drawable _tmp301 = ly.e;
        ai3[99] = 0x7f02038e;
        com.dianxinos.dxbs.R.drawable _tmp302 = ly.e;
        ai3[100] = 0x7f02032d;
        ai[2] = ai3;
        int ai4[] = new int[101];
        com.dianxinos.dxbs.R.drawable _tmp303 = ly.e;
        ai4[0] = 0x7f020210;
        com.dianxinos.dxbs.R.drawable _tmp304 = ly.e;
        ai4[1] = 0x7f020211;
        com.dianxinos.dxbs.R.drawable _tmp305 = ly.e;
        ai4[2] = 0x7f02021d;
        com.dianxinos.dxbs.R.drawable _tmp306 = ly.e;
        ai4[3] = 0x7f020228;
        com.dianxinos.dxbs.R.drawable _tmp307 = ly.e;
        ai4[4] = 0x7f020233;
        com.dianxinos.dxbs.R.drawable _tmp308 = ly.e;
        ai4[5] = 0x7f02023e;
        com.dianxinos.dxbs.R.drawable _tmp309 = ly.e;
        ai4[6] = 0x7f020249;
        com.dianxinos.dxbs.R.drawable _tmp310 = ly.e;
        ai4[7] = 0x7f020254;
        com.dianxinos.dxbs.R.drawable _tmp311 = ly.e;
        ai4[8] = 0x7f02025f;
        com.dianxinos.dxbs.R.drawable _tmp312 = ly.e;
        ai4[9] = 0x7f02026a;
        com.dianxinos.dxbs.R.drawable _tmp313 = ly.e;
        ai4[10] = 0x7f020212;
        com.dianxinos.dxbs.R.drawable _tmp314 = ly.e;
        ai4[11] = 0x7f020214;
        com.dianxinos.dxbs.R.drawable _tmp315 = ly.e;
        ai4[12] = 0x7f020215;
        com.dianxinos.dxbs.R.drawable _tmp316 = ly.e;
        ai4[13] = 0x7f020216;
        com.dianxinos.dxbs.R.drawable _tmp317 = ly.e;
        ai4[14] = 0x7f020217;
        com.dianxinos.dxbs.R.drawable _tmp318 = ly.e;
        ai4[15] = 0x7f020218;
        com.dianxinos.dxbs.R.drawable _tmp319 = ly.e;
        ai4[16] = 0x7f020219;
        com.dianxinos.dxbs.R.drawable _tmp320 = ly.e;
        ai4[17] = 0x7f02021a;
        com.dianxinos.dxbs.R.drawable _tmp321 = ly.e;
        ai4[18] = 0x7f02021b;
        com.dianxinos.dxbs.R.drawable _tmp322 = ly.e;
        ai4[19] = 0x7f02021c;
        com.dianxinos.dxbs.R.drawable _tmp323 = ly.e;
        ai4[20] = 0x7f02021e;
        com.dianxinos.dxbs.R.drawable _tmp324 = ly.e;
        ai4[21] = 0x7f0202db;
        com.dianxinos.dxbs.R.drawable _tmp325 = ly.e;
        ai4[22] = 0x7f0202dc;
        com.dianxinos.dxbs.R.drawable _tmp326 = ly.e;
        ai4[23] = 0x7f0202dd;
        com.dianxinos.dxbs.R.drawable _tmp327 = ly.e;
        ai4[24] = 0x7f0202de;
        com.dianxinos.dxbs.R.drawable _tmp328 = ly.e;
        ai4[25] = 0x7f0202df;
        com.dianxinos.dxbs.R.drawable _tmp329 = ly.e;
        ai4[26] = 0x7f0202e0;
        com.dianxinos.dxbs.R.drawable _tmp330 = ly.e;
        ai4[27] = 0x7f0202e1;
        com.dianxinos.dxbs.R.drawable _tmp331 = ly.e;
        ai4[28] = 0x7f0202e2;
        com.dianxinos.dxbs.R.drawable _tmp332 = ly.e;
        ai4[29] = 0x7f0202e3;
        com.dianxinos.dxbs.R.drawable _tmp333 = ly.e;
        ai4[30] = 0x7f0202e4;
        com.dianxinos.dxbs.R.drawable _tmp334 = ly.e;
        ai4[31] = 0x7f0202e5;
        com.dianxinos.dxbs.R.drawable _tmp335 = ly.e;
        ai4[32] = 0x7f0202e6;
        com.dianxinos.dxbs.R.drawable _tmp336 = ly.e;
        ai4[33] = 0x7f0202e7;
        com.dianxinos.dxbs.R.drawable _tmp337 = ly.e;
        ai4[34] = 0x7f0202e8;
        com.dianxinos.dxbs.R.drawable _tmp338 = ly.e;
        ai4[35] = 0x7f0202e9;
        com.dianxinos.dxbs.R.drawable _tmp339 = ly.e;
        ai4[36] = 0x7f0202ea;
        com.dianxinos.dxbs.R.drawable _tmp340 = ly.e;
        ai4[37] = 0x7f0202eb;
        com.dianxinos.dxbs.R.drawable _tmp341 = ly.e;
        ai4[38] = 0x7f0202ec;
        com.dianxinos.dxbs.R.drawable _tmp342 = ly.e;
        ai4[39] = 0x7f0202ed;
        com.dianxinos.dxbs.R.drawable _tmp343 = ly.e;
        ai4[40] = 0x7f0202ee;
        com.dianxinos.dxbs.R.drawable _tmp344 = ly.e;
        ai4[41] = 0x7f0202ef;
        com.dianxinos.dxbs.R.drawable _tmp345 = ly.e;
        ai4[42] = 0x7f0202f0;
        com.dianxinos.dxbs.R.drawable _tmp346 = ly.e;
        ai4[43] = 0x7f0202f1;
        com.dianxinos.dxbs.R.drawable _tmp347 = ly.e;
        ai4[44] = 0x7f0202f2;
        com.dianxinos.dxbs.R.drawable _tmp348 = ly.e;
        ai4[45] = 0x7f0202f3;
        com.dianxinos.dxbs.R.drawable _tmp349 = ly.e;
        ai4[46] = 0x7f0202f4;
        com.dianxinos.dxbs.R.drawable _tmp350 = ly.e;
        ai4[47] = 0x7f0202f5;
        com.dianxinos.dxbs.R.drawable _tmp351 = ly.e;
        ai4[48] = 0x7f0202f6;
        com.dianxinos.dxbs.R.drawable _tmp352 = ly.e;
        ai4[49] = 0x7f0202f7;
        com.dianxinos.dxbs.R.drawable _tmp353 = ly.e;
        ai4[50] = 0x7f0202f8;
        com.dianxinos.dxbs.R.drawable _tmp354 = ly.e;
        ai4[51] = 0x7f0202f9;
        com.dianxinos.dxbs.R.drawable _tmp355 = ly.e;
        ai4[52] = 0x7f0202fa;
        com.dianxinos.dxbs.R.drawable _tmp356 = ly.e;
        ai4[53] = 0x7f0202fb;
        com.dianxinos.dxbs.R.drawable _tmp357 = ly.e;
        ai4[54] = 0x7f0202fc;
        com.dianxinos.dxbs.R.drawable _tmp358 = ly.e;
        ai4[55] = 0x7f0202fd;
        com.dianxinos.dxbs.R.drawable _tmp359 = ly.e;
        ai4[56] = 0x7f0202fe;
        com.dianxinos.dxbs.R.drawable _tmp360 = ly.e;
        ai4[57] = 0x7f0202ff;
        com.dianxinos.dxbs.R.drawable _tmp361 = ly.e;
        ai4[58] = 0x7f020300;
        com.dianxinos.dxbs.R.drawable _tmp362 = ly.e;
        ai4[59] = 0x7f020301;
        com.dianxinos.dxbs.R.drawable _tmp363 = ly.e;
        ai4[60] = 0x7f020302;
        com.dianxinos.dxbs.R.drawable _tmp364 = ly.e;
        ai4[61] = 0x7f020303;
        com.dianxinos.dxbs.R.drawable _tmp365 = ly.e;
        ai4[62] = 0x7f020304;
        com.dianxinos.dxbs.R.drawable _tmp366 = ly.e;
        ai4[63] = 0x7f020305;
        com.dianxinos.dxbs.R.drawable _tmp367 = ly.e;
        ai4[64] = 0x7f020306;
        com.dianxinos.dxbs.R.drawable _tmp368 = ly.e;
        ai4[65] = 0x7f020307;
        com.dianxinos.dxbs.R.drawable _tmp369 = ly.e;
        ai4[66] = 0x7f020308;
        com.dianxinos.dxbs.R.drawable _tmp370 = ly.e;
        ai4[67] = 0x7f020309;
        com.dianxinos.dxbs.R.drawable _tmp371 = ly.e;
        ai4[68] = 0x7f02030a;
        com.dianxinos.dxbs.R.drawable _tmp372 = ly.e;
        ai4[69] = 0x7f02030b;
        com.dianxinos.dxbs.R.drawable _tmp373 = ly.e;
        ai4[70] = 0x7f02030c;
        com.dianxinos.dxbs.R.drawable _tmp374 = ly.e;
        ai4[71] = 0x7f02030d;
        com.dianxinos.dxbs.R.drawable _tmp375 = ly.e;
        ai4[72] = 0x7f02030e;
        com.dianxinos.dxbs.R.drawable _tmp376 = ly.e;
        ai4[73] = 0x7f02030f;
        com.dianxinos.dxbs.R.drawable _tmp377 = ly.e;
        ai4[74] = 0x7f020310;
        com.dianxinos.dxbs.R.drawable _tmp378 = ly.e;
        ai4[75] = 0x7f020311;
        com.dianxinos.dxbs.R.drawable _tmp379 = ly.e;
        ai4[76] = 0x7f020312;
        com.dianxinos.dxbs.R.drawable _tmp380 = ly.e;
        ai4[77] = 0x7f020313;
        com.dianxinos.dxbs.R.drawable _tmp381 = ly.e;
        ai4[78] = 0x7f020314;
        com.dianxinos.dxbs.R.drawable _tmp382 = ly.e;
        ai4[79] = 0x7f020315;
        com.dianxinos.dxbs.R.drawable _tmp383 = ly.e;
        ai4[80] = 0x7f020316;
        com.dianxinos.dxbs.R.drawable _tmp384 = ly.e;
        ai4[81] = 0x7f020317;
        com.dianxinos.dxbs.R.drawable _tmp385 = ly.e;
        ai4[82] = 0x7f020318;
        com.dianxinos.dxbs.R.drawable _tmp386 = ly.e;
        ai4[83] = 0x7f020319;
        com.dianxinos.dxbs.R.drawable _tmp387 = ly.e;
        ai4[84] = 0x7f02031a;
        com.dianxinos.dxbs.R.drawable _tmp388 = ly.e;
        ai4[85] = 0x7f02031b;
        com.dianxinos.dxbs.R.drawable _tmp389 = ly.e;
        ai4[86] = 0x7f02031c;
        com.dianxinos.dxbs.R.drawable _tmp390 = ly.e;
        ai4[87] = 0x7f02031d;
        com.dianxinos.dxbs.R.drawable _tmp391 = ly.e;
        ai4[88] = 0x7f02031e;
        com.dianxinos.dxbs.R.drawable _tmp392 = ly.e;
        ai4[89] = 0x7f02031f;
        com.dianxinos.dxbs.R.drawable _tmp393 = ly.e;
        ai4[90] = 0x7f020320;
        com.dianxinos.dxbs.R.drawable _tmp394 = ly.e;
        ai4[91] = 0x7f020321;
        com.dianxinos.dxbs.R.drawable _tmp395 = ly.e;
        ai4[92] = 0x7f020322;
        com.dianxinos.dxbs.R.drawable _tmp396 = ly.e;
        ai4[93] = 0x7f020323;
        com.dianxinos.dxbs.R.drawable _tmp397 = ly.e;
        ai4[94] = 0x7f020324;
        com.dianxinos.dxbs.R.drawable _tmp398 = ly.e;
        ai4[95] = 0x7f020325;
        com.dianxinos.dxbs.R.drawable _tmp399 = ly.e;
        ai4[96] = 0x7f020326;
        com.dianxinos.dxbs.R.drawable _tmp400 = ly.e;
        ai4[97] = 0x7f020327;
        com.dianxinos.dxbs.R.drawable _tmp401 = ly.e;
        ai4[98] = 0x7f020328;
        com.dianxinos.dxbs.R.drawable _tmp402 = ly.e;
        ai4[99] = 0x7f020329;
        com.dianxinos.dxbs.R.drawable _tmp403 = ly.e;
        ai4[100] = 0x7f0202da;
        ai[3] = ai4;
        p = ai;
        b = context;
        a = (NotificationManager)b.getSystemService("notification");
        o = aff.a(context);
        q = acx.a(b);
        l = zc.a(b);
    }

    public static aar a(Context context)
    {
        if (m != null) goto _L2; else goto _L1
_L1:
        aar;
        JVM INSTR monitorenter ;
        if (m == null)
        {
            m = new aar(context.getApplicationContext());
        }
        aar;
        JVM INSTR monitorexit ;
_L2:
        return m;
        Exception exception;
        exception;
        aar;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private String a(int i1, int j1)
    {
        String s;
        if (c())
        {
            Context context1 = b;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            s = context1.getString(0x7f0a005a);
        } else
        {
            Context context = b;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            s = context.getString(0x7f0a0059);
        }
        if (e == -1)
        {
            return (new StringBuilder()).append(s).append(azq.c(b, 0)).toString();
        } else
        {
            return (new StringBuilder()).append(s).append(azq.c(b, e)).toString();
        }
    }

    private boolean c()
    {
        int i1 = o.e();
        return o.g() && i1 != 100 && i1 != 103;
    }

    public void a()
    {
        k = false;
        a.cancel(2);
    }

    public void a(int i1)
    {
        n = i1;
    }

    public void a(int i1, int j1, int k1, String s, String s1, int l1)
    {
        k = true;
        c = i1;
        d = j1;
        e = k1;
        f = s1;
        g = l1;
        q.a(j1);
        Context context = b;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        String s2 = context.getString(0x7f0a004b);
        com.dianxinos.dxbs.R.layout _tmp1 = ly.g;
        RemoteViews remoteviews = new RemoteViews("com.dianxinos.dxbs", 0x7f030087);
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(new ComponentName(b, com/dianxinos/powermanager/PowerMgrTabActivity));
        intent.addFlags(0x10200000);
        boolean flag;
        PendingIntent pendingintent;
        Notification notification;
        if (l)
        {
            com.dianxinos.dxbs.R.id _tmp2 = ly.f;
            remoteviews.setViewVisibility(0x7f070220, 0);
            intent.putExtra("From", 33);
        } else
        {
            com.dianxinos.dxbs.R.id _tmp3 = ly.f;
            remoteviews.setViewVisibility(0x7f070220, 4);
            intent.putExtra("From", 3);
        }
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        remoteviews.setTextViewText(0x7f070223, a(i1, j1));
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        remoteviews.setTextViewText(0x7f070018, s2);
        if (azf.h || azf.i)
        {
            com.dianxinos.dxbs.R.id _tmp6 = ly.f;
            remoteviews.setImageViewResource(0x7f070014, p[n][d]);
        }
        if (azw.i && azf.b(b))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            com.dianxinos.dxbs.R.id _tmp7 = ly.f;
            remoteviews.setViewVisibility(0x7f070146, 8);
            com.dianxinos.dxbs.R.id _tmp8 = ly.f;
            remoteviews.setViewVisibility(0x7f07019b, 8);
            com.dianxinos.dxbs.R.id _tmp9 = ly.f;
            remoteviews.setViewVisibility(0x7f070149, 8);
        } else
        {
            if (!h)
            {
                com.dianxinos.dxbs.R.id _tmp10 = ly.f;
                com.dianxinos.dxbs.R.drawable _tmp11 = ly.e;
                remoteviews.setImageViewResource(0x7f070146, 0x7f020429);
                com.dianxinos.dxbs.R.id _tmp12 = ly.f;
                com.dianxinos.dxbs.R.drawable _tmp13 = ly.e;
                remoteviews.setImageViewResource(0x7f07019b, 0x7f020425);
            } else
            {
                com.dianxinos.dxbs.R.id _tmp14 = ly.f;
                com.dianxinos.dxbs.R.drawable _tmp15 = ly.e;
                remoteviews.setImageViewResource(0x7f070146, 0x7f020428);
                com.dianxinos.dxbs.R.id _tmp16 = ly.f;
                com.dianxinos.dxbs.R.drawable _tmp17 = ly.e;
                remoteviews.setImageViewResource(0x7f07019b, 0x7f020424);
            }
            if (azw.h && azf.e())
            {
                if (j)
                {
                    com.dianxinos.dxbs.R.id _tmp18 = ly.f;
                    com.dianxinos.dxbs.R.drawable _tmp19 = ly.e;
                    remoteviews.setImageViewResource(0x7f070149, 0x7f020427);
                } else
                {
                    com.dianxinos.dxbs.R.id _tmp20 = ly.f;
                    com.dianxinos.dxbs.R.drawable _tmp21 = ly.e;
                    remoteviews.setImageViewResource(0x7f070149, 0x7f020426);
                }
                if (azf.i() && h)
                {
                    com.dianxinos.dxbs.R.id _tmp22 = ly.f;
                    com.dianxinos.dxbs.R.drawable _tmp23 = ly.e;
                    remoteviews.setImageViewResource(0x7f070149, 0x7f020426);
                }
            } else
            {
                com.dianxinos.dxbs.R.id _tmp24 = ly.f;
                remoteviews.setViewVisibility(0x7f070149, 8);
            }
        }
        if (i)
        {
            com.dianxinos.dxbs.R.id _tmp25 = ly.f;
            com.dianxinos.dxbs.R.drawable _tmp26 = ly.e;
            remoteviews.setImageViewResource(0x7f070148, 0x7f02042c);
        } else
        {
            com.dianxinos.dxbs.R.id _tmp27 = ly.f;
            com.dianxinos.dxbs.R.drawable _tmp28 = ly.e;
            remoteviews.setImageViewResource(0x7f070148, 0x7f02042b);
        }
        if (j1 <= 20)
        {
            com.dianxinos.dxbs.R.id _tmp29 = ly.f;
            Context context3 = b;
            com.dianxinos.dxbs.R.string _tmp30 = ly.i;
            Object aobj2[] = new Object[1];
            aobj2[0] = Integer.valueOf(j1);
            remoteviews.setTextViewText(0x7f070224, Html.fromHtml(context3.getString(0x7f0a01fe, aobj2)));
        } else
        {
            com.dianxinos.dxbs.R.id _tmp31 = ly.f;
            Context context1 = b;
            com.dianxinos.dxbs.R.string _tmp32 = ly.i;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(j1);
            remoteviews.setTextViewText(0x7f070224, context1.getString(0x7f0a01fd, aobj));
        }
        if (!acz.a(b).c(l1))
        {
            com.dianxinos.dxbs.R.id _tmp33 = ly.f;
            remoteviews.setViewVisibility(0x7f070225, 4);
        } else
        if (l1 >= 450)
        {
            com.dianxinos.dxbs.R.id _tmp34 = ly.f;
            remoteviews.setViewVisibility(0x7f070225, 0);
            String as1[] = bao.a(b, l1);
            com.dianxinos.dxbs.R.id _tmp35 = ly.f;
            Context context2 = b;
            com.dianxinos.dxbs.R.string _tmp36 = ly.i;
            Object aobj1[] = new Object[2];
            aobj1[0] = as1[0];
            aobj1[1] = as1[1];
            remoteviews.setTextViewText(0x7f070226, Html.fromHtml(context2.getString(0x7f0a0374, aobj1)));
        } else
        {
            com.dianxinos.dxbs.R.id _tmp37 = ly.f;
            remoteviews.setViewVisibility(0x7f070225, 0);
            String as[] = bao.a(b, l1);
            com.dianxinos.dxbs.R.id _tmp38 = ly.f;
            remoteviews.setTextViewText(0x7f070226, (new StringBuilder()).append(as[0]).append(as[1]).toString());
        }
        pendingintent = PendingIntent.getActivity(b, 0, intent, 0x8000000);
        notification = new Notification();
        notification.icon = p[n][j1];
        notification.when = 0L;
        notification.flags = 2;
        notification.defaults = 0;
        notification.sound = null;
        notification.vibrate = null;
        notification.contentView = remoteviews;
        notification.contentIntent = pendingintent;
        notification.tickerText = null;
        try
        {
            a.notify(2, notification);
            return;
        }
        catch (SecurityException securityexception)
        {
            azt.d("OnGoingNotification", securityexception.getMessage());
            return;
        }
        catch (RuntimeException runtimeexception)
        {
            azt.d("OnGoingNotification", runtimeexception.getMessage());
        }
    }

    public void a(boolean flag)
    {
        l = flag;
        zc.a(b, flag);
        b();
    }

    public void a(boolean flag, boolean flag1, boolean flag2)
    {
        h = flag;
        i = flag1;
        j = flag2;
    }

    public void b()
    {
        if (!k)
        {
            return;
        } else
        {
            String s = amp.a(b).e();
            a(c, d, e, s, f, g);
            return;
        }
    }
}
