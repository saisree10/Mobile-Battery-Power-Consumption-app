// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class lt extends lr
{

    static final boolean g;
    private static final byte h[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 43, 47
    };
    private static final byte i[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 45, 95
    };
    int c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    private final byte j[] = new byte[2];
    private int k;
    private final byte l[];

    public lt(int i1, byte abyte0[])
    {
        boolean flag = true;
        super();
        a = abyte0;
        boolean flag1;
        boolean flag2;
        byte abyte1[];
        int j1;
        if ((i1 & 1) == 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        d = flag1;
        if ((i1 & 2) == 0)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        e = flag2;
        if ((i1 & 4) == 0)
        {
            flag = false;
        }
        f = flag;
        if ((i1 & 8) == 0)
        {
            abyte1 = h;
        } else
        {
            abyte1 = i;
        }
        l = abyte1;
        c = 0;
        if (e)
        {
            j1 = 19;
        } else
        {
            j1 = -1;
        }
        k = j1;
    }

    public boolean a(byte abyte0[], int i1, int j1, boolean flag)
    {
        byte abyte1[];
        byte abyte2[];
        int k1;
        int l1;
        int i2;
        abyte1 = l;
        abyte2 = a;
        k1 = k;
        l1 = j1 + i1;
        i2 = -1;
        c;
        JVM INSTR tableswitch 0 2: default 56
    //                   0 392
    //                   1 398
    //                   2 472;
           goto _L1 _L2 _L3 _L4
_L1:
        int k2 = i1;
_L12:
        int l2 = 0;
        if (i2 == -1) goto _L6; else goto _L5
_L5:
        abyte2[0] = abyte1[0x3f & i2 >> 18];
        abyte2[1] = abyte1[0x3f & i2 >> 12];
        abyte2[2] = abyte1[0x3f & i2 >> 6];
        l2 = 4;
        abyte2[3] = abyte1[i2 & 0x3f];
        if (--k1 != 0) goto _L6; else goto _L7
_L7:
        int j2;
        int i3;
        int j3;
        int k3;
        int l3;
        int i4;
        byte abyte3[];
        int j4;
        byte abyte4[];
        int k4;
        byte abyte5[];
        int l4;
        int i5;
        int j5;
        byte byte0;
        int k5;
        int l5;
        int i6;
        byte byte1;
        int j6;
        int k6;
        int l6;
        int i7;
        int j7;
        int k7;
        byte abyte6[];
        int l7;
        byte abyte7[];
        int i8;
        byte byte2;
        int j8;
        int k8;
        int l8;
        int i9;
        int j9;
        int k9;
        int l9;
        byte abyte8[];
        int i10;
        int j10;
        int k10;
        int l10;
        int i11;
        int j11;
        if (f)
        {
            i10 = 5;
            abyte2[l2] = 13;
        } else
        {
            i10 = l2;
        }
        j10 = i10 + 1;
        abyte2[i10] = 10;
        i3 = 19;
        j3 = j10;
        if (k2 + 3 <= l1) goto _L9; else goto _L8
_L8:
        if (!flag) goto _L11; else goto _L10
_L2:
        k2 = i1;
          goto _L12
_L3:
        if (i1 + 2 > l1) goto _L1; else goto _L13
_L13:
        k10 = (0xff & j[0]) << 16;
        l10 = i1 + 1;
        i11 = k10 | (0xff & abyte0[i1]) << 8;
        j11 = l10 + 1;
        i2 = i11 | 0xff & abyte0[l10];
        c = 0;
        k2 = j11;
          goto _L12
_L4:
        if (i1 + 1 > l1) goto _L1; else goto _L14
_L14:
        j2 = (0xff & j[0]) << 16 | (0xff & j[1]) << 8;
        k2 = i1 + 1;
        i2 = j2 | 0xff & abyte0[i1];
        c = 0;
          goto _L12
_L9:
        k3 = (0xff & abyte0[k2]) << 16 | (0xff & abyte0[k2 + 1]) << 8 | 0xff & abyte0[k2 + 2];
        abyte2[j3] = abyte1[0x3f & k3 >> 18];
        abyte2[j3 + 1] = abyte1[0x3f & k3 >> 12];
        abyte2[j3 + 2] = abyte1[0x3f & k3 >> 6];
        abyte2[j3 + 3] = abyte1[k3 & 0x3f];
        k2 += 3;
        l2 = j3 + 4;
        k1 = i3 - 1;
        if (k1 == 0)
        {
            if (f)
            {
                l3 = l2 + 1;
                abyte2[l2] = 13;
            } else
            {
                l3 = l2;
            }
            i4 = l3 + 1;
            abyte2[l3] = 10;
            i3 = 19;
            j3 = i4;
            break MISSING_BLOCK_LABEL_174;
        }
          goto _L6
_L10:
        if (k2 - c == l1 - 1)
        {
            if (c > 0)
            {
                abyte8 = j;
                k8 = 1;
                byte2 = abyte8[0];
                j8 = k2;
            } else
            {
                i8 = k2 + 1;
                byte2 = abyte0[k2];
                j8 = i8;
                k8 = 0;
            }
            l8 = (byte2 & 0xff) << 4;
            c = c - k8;
            i9 = j3 + 1;
            abyte2[j3] = abyte1[0x3f & l8 >> 6];
            j9 = i9 + 1;
            abyte2[i9] = abyte1[l8 & 0x3f];
            if (d)
            {
                l9 = j9 + 1;
                abyte2[j9] = 61;
                j9 = l9 + 1;
                abyte2[l9] = 61;
            }
            if (e)
            {
                if (f)
                {
                    k9 = j9 + 1;
                    abyte2[j9] = 13;
                    j9 = k9;
                }
                j3 = j9 + 1;
                abyte2[j9] = 10;
                k2 = j8;
            } else
            {
                k2 = j8;
                j3 = j9;
            }
        } else
        if (k2 - c == l1 - 2)
        {
            if (c > 1)
            {
                abyte7 = j;
                k5 = 1;
                byte0 = abyte7[0];
            } else
            {
                j5 = k2 + 1;
                byte0 = abyte0[k2];
                k2 = j5;
                k5 = 0;
            }
            l5 = (byte0 & 0xff) << 10;
            if (c > 0)
            {
                abyte6 = j;
                l7 = k5 + 1;
                byte1 = abyte6[k5];
                k5 = l7;
            } else
            {
                i6 = k2 + 1;
                byte1 = abyte0[k2];
                k2 = i6;
            }
            j6 = l5 | (byte1 & 0xff) << 2;
            c = c - k5;
            k6 = j3 + 1;
            abyte2[j3] = abyte1[0x3f & j6 >> 12];
            l6 = k6 + 1;
            abyte2[k6] = abyte1[0x3f & j6 >> 6];
            i7 = l6 + 1;
            abyte2[l6] = abyte1[j6 & 0x3f];
            if (d)
            {
                j7 = i7 + 1;
                abyte2[i7] = 61;
            } else
            {
                j7 = i7;
            }
            if (e)
            {
                if (f)
                {
                    k7 = j7 + 1;
                    abyte2[j7] = 13;
                    j7 = k7;
                }
                j3 = j7 + 1;
                abyte2[j7] = 10;
            } else
            {
                j3 = j7;
            }
        } else
        if (e && j3 > 0 && i3 != 19)
        {
            if (f)
            {
                i5 = j3 + 1;
                abyte2[j3] = 13;
            } else
            {
                i5 = j3;
            }
            j3 = i5 + 1;
            abyte2[i5] = 10;
        }
        if (!g && c != 0)
        {
            throw new AssertionError();
        }
        if (!g && k2 != l1)
        {
            throw new AssertionError();
        }
          goto _L15
_L11:
        if (k2 != l1 - 1) goto _L17; else goto _L16
_L16:
        abyte5 = j;
        l4 = c;
        c = l4 + 1;
        abyte5[l4] = abyte0[k2];
_L15:
        b = j3;
        k = i3;
        return true;
_L17:
        if (k2 == l1 - 2)
        {
            abyte3 = j;
            j4 = c;
            c = j4 + 1;
            abyte3[j4] = abyte0[k2];
            abyte4 = j;
            k4 = c;
            c = k4 + 1;
            abyte4[k4] = abyte0[k2 + 1];
        }
        if (true) goto _L15; else goto _L6
_L6:
        i3 = k1;
        j3 = l2;
        break MISSING_BLOCK_LABEL_174;
    }

    static 
    {
        boolean flag;
        if (!lq.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        g = flag;
    }
}
