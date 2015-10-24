// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class bex extends bey
{

    static final byte a[] = {
        13, 10
    };
    private static final byte i[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 43, 47
    };
    private static final byte j[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 45, 95
    };
    private static final byte k[] = {
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, 62, -1, 62, -1, 63, 52, 53, 
        54, 55, 56, 57, 58, 59, 60, 61, -1, -1, 
        -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 
        5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
        15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
        25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 
        29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 
        39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 
        49, 50, 51
    };
    private final byte l[];
    private final byte m[];
    private final byte n[];
    private final int o;
    private final int p;
    private int q;

    public bex()
    {
        this(0);
    }

    public bex(int i1)
    {
        this(i1, a);
    }

    public bex(int i1, byte abyte0[])
    {
        this(i1, abyte0, false);
    }

    public bex(int i1, byte abyte0[], boolean flag)
    {
        int j1;
        if (abyte0 == null)
        {
            j1 = 0;
        } else
        {
            j1 = abyte0.length;
        }
        super(3, 4, i1, j1);
        m = k;
        byte abyte1[];
        if (abyte0 != null)
        {
            if (e(abyte0))
            {
                String s = bfa.a(abyte0);
                throw new IllegalArgumentException("lineSeparator must not contain base64 characters: [" + s + "]");
            }
            if (i1 > 0)
            {
                p = 4 + abyte0.length;
                n = new byte[abyte0.length];
                System.arraycopy(abyte0, 0, n, 0, abyte0.length);
            } else
            {
                p = 4;
                n = null;
            }
        } else
        {
            p = 4;
            n = null;
        }
        o = -1 + p;
        if (flag)
        {
            abyte1 = j;
        } else
        {
            abyte1 = i;
        }
        l = abyte1;
    }

    public bex(boolean flag)
    {
        this(76, a, flag);
    }

    public static byte[] a(byte abyte0[])
    {
        return a(abyte0, false);
    }

    public static byte[] a(byte abyte0[], boolean flag)
    {
        return a(abyte0, flag, false);
    }

    public static byte[] a(byte abyte0[], boolean flag, boolean flag1)
    {
        return a(abyte0, flag, flag1, 0x7fffffff);
    }

    public static byte[] a(byte abyte0[], boolean flag, boolean flag1, int i1)
    {
        if (abyte0 == null || abyte0.length == 0)
        {
            return abyte0;
        }
        bex bex1;
        long l1;
        if (flag)
        {
            bex1 = new bex(flag1);
        } else
        {
            bex1 = new bex(0, a, flag1);
        }
        l1 = bex1.f(abyte0);
        if (l1 > (long)i1)
        {
            throw new IllegalArgumentException("Input array too big, the output array would be bigger (" + l1 + ") than the specified maximum size of " + i1);
        } else
        {
            return bex1.d(abyte0);
        }
    }

    public static byte[] b(byte abyte0[])
    {
        return (new bex()).c(abyte0);
    }

    void a(byte abyte0[], int i1, int j1)
    {
        if (!f) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (j1 >= 0) goto _L4; else goto _L3
_L3:
        int j3;
        f = true;
        if (h == 0 && c == 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        a(p);
        j3 = e;
        h;
        JVM INSTR tableswitch 1 2: default 72
    //                   1 138
    //                   2 283;
           goto _L5 _L6 _L7
_L5:
        g = g + (e - j3);
        if (c > 0 && g > 0)
        {
            System.arraycopy(n, 0, d, e, n.length);
            e = e + n.length;
            return;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        byte abyte9[] = d;
        int k4 = e;
        e = k4 + 1;
        abyte9[k4] = l[0x3f & q >> 2];
        byte abyte10[] = d;
        int l4 = e;
        e = l4 + 1;
        abyte10[l4] = l[0x3f & q << 4];
        if (l == i)
        {
            byte abyte11[] = d;
            int i5 = e;
            e = i5 + 1;
            abyte11[i5] = 61;
            byte abyte12[] = d;
            int j5 = e;
            e = j5 + 1;
            abyte12[j5] = 61;
        }
        continue; /* Loop/switch isn't completed */
_L7:
        byte abyte5[] = d;
        int k3 = e;
        e = k3 + 1;
        abyte5[k3] = l[0x3f & q >> 10];
        byte abyte6[] = d;
        int l3 = e;
        e = l3 + 1;
        abyte6[l3] = l[0x3f & q >> 4];
        byte abyte7[] = d;
        int i4 = e;
        e = i4 + 1;
        abyte7[i4] = l[0x3f & q << 2];
        if (l == i)
        {
            byte abyte8[] = d;
            int j4 = e;
            e = j4 + 1;
            abyte8[j4] = 61;
        }
        if (true) goto _L5; else goto _L4
_L4:
        int k1 = 0;
        while (k1 < j1) 
        {
            a(p);
            h = (1 + h) % 3;
            int l1 = i1 + 1;
            int i2 = abyte0[i1];
            if (i2 < 0)
            {
                i2 += 256;
            }
            q = i2 + (q << 8);
            if (h == 0)
            {
                byte abyte1[] = d;
                int j2 = e;
                e = j2 + 1;
                abyte1[j2] = l[0x3f & q >> 18];
                byte abyte2[] = d;
                int k2 = e;
                e = k2 + 1;
                abyte2[k2] = l[0x3f & q >> 12];
                byte abyte3[] = d;
                int l2 = e;
                e = l2 + 1;
                abyte3[l2] = l[0x3f & q >> 6];
                byte abyte4[] = d;
                int i3 = e;
                e = i3 + 1;
                abyte4[i3] = l[0x3f & q];
                g = 4 + g;
                if (c > 0 && c <= g)
                {
                    System.arraycopy(n, 0, d, e, n.length);
                    e = e + n.length;
                    g = 0;
                }
            }
            k1++;
            i1 = l1;
        }
        if (true) goto _L1; else goto _L8
_L8:
    }

    protected boolean a(byte byte0)
    {
        return byte0 >= 0 && byte0 < m.length && m[byte0] != -1;
    }

    void b(byte abyte0[], int i1, int j1)
    {
        if (!f) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int k1;
        if (j1 < 0)
        {
            f = true;
        }
        k1 = 0;
_L4:
        int k2;
        byte byte0;
        if (k1 >= j1)
        {
            continue; /* Loop/switch isn't completed */
        }
        a(o);
        k2 = i1 + 1;
        byte0 = abyte0[i1];
        if (byte0 != 61)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        f = true;
        if (!f || h == 0) goto _L1; else goto _L3
_L3:
        a(o);
        byte byte1;
        byte abyte4[];
        int l2;
        byte abyte5[];
        int i3;
        byte abyte6[];
        int j3;
        switch (h)
        {
        default:
            return;

        case 2: // '\002'
            q = q >> 4;
            byte abyte3[] = d;
            int j2 = e;
            e = j2 + 1;
            abyte3[j2] = (byte)(0xff & q);
            return;

        case 3: // '\003'
            q = q >> 2;
            break;
        }
        break MISSING_BLOCK_LABEL_337;
        if (byte0 >= 0 && byte0 < k.length)
        {
            byte1 = k[byte0];
            if (byte1 >= 0)
            {
                h = (1 + h) % 4;
                q = byte1 + (q << 6);
                if (h == 0)
                {
                    abyte4 = d;
                    l2 = e;
                    e = l2 + 1;
                    abyte4[l2] = (byte)(0xff & q >> 16);
                    abyte5 = d;
                    i3 = e;
                    e = i3 + 1;
                    abyte5[i3] = (byte)(0xff & q >> 8);
                    abyte6 = d;
                    j3 = e;
                    e = j3 + 1;
                    abyte6[j3] = (byte)(0xff & q);
                }
            }
        }
        k1++;
        i1 = k2;
          goto _L4
        byte abyte1[] = d;
        int l1 = e;
        e = l1 + 1;
        abyte1[l1] = (byte)(0xff & q >> 8);
        byte abyte2[] = d;
        int i2 = e;
        e = i2 + 1;
        abyte2[i2] = (byte)(0xff & q);
        return;
    }

}
