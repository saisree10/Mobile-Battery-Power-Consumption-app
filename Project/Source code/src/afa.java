// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class afa
{

    static final boolean a;
    private static final byte b[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 43, 47
    };
    private static final byte c[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 45, 95
    };
    private static final byte d[] = {
        -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, 
        -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, 
        -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 
        -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, 
        -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 
        54, 55, 56, 57, 58, 59, 60, 61, -9, -9, 
        -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 
        5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
        15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
        25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 
        29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 
        39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 
        49, 50, 51, -9, -9, -9, -9, -9
    };
    private static final byte e[] = {
        -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, 
        -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, 
        -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 
        -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, 
        -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 
        54, 55, 56, 57, 58, 59, 60, 61, -9, -9, 
        -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 
        5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
        15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
        25, -9, -9, -9, -9, 63, -9, 26, 27, 28, 
        29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 
        39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 
        49, 50, 51, -9, -9, -9, -9, -9
    };

    private afa()
    {
    }

    private static int a(byte abyte0[], int i, byte abyte1[], int j, byte abyte2[])
    {
        if (abyte0[i + 2] == 61)
        {
            abyte1[j] = (byte)(((abyte2[abyte0[i]] << 24) >>> 6 | (abyte2[abyte0[i + 1]] << 24) >>> 12) >>> 16);
            return 1;
        }
        if (abyte0[i + 3] == 61)
        {
            int l = (abyte2[abyte0[i]] << 24) >>> 6 | (abyte2[abyte0[i + 1]] << 24) >>> 12 | (abyte2[abyte0[i + 2]] << 24) >>> 18;
            abyte1[j] = (byte)(l >>> 16);
            abyte1[j + 1] = (byte)(l >>> 8);
            return 2;
        } else
        {
            int k = (abyte2[abyte0[i]] << 24) >>> 6 | (abyte2[abyte0[i + 1]] << 24) >>> 12 | (abyte2[abyte0[i + 2]] << 24) >>> 18 | (abyte2[abyte0[i + 3]] << 24) >>> 24;
            abyte1[j] = (byte)(k >> 16);
            abyte1[j + 1] = (byte)(k >> 8);
            abyte1[j + 2] = (byte)k;
            return 3;
        }
    }

    public static String a(byte abyte0[])
    {
        return a(abyte0, 0, abyte0.length, b, true);
    }

    public static String a(byte abyte0[], int i, int j, byte abyte1[], boolean flag)
    {
        byte abyte2[] = a(abyte0, i, j, abyte1, 0x7fffffff);
        int k = abyte2.length;
        do
        {
            if (flag || k <= 0 || abyte2[k - 1] != 61)
            {
                return new String(abyte2, 0, k);
            }
            k--;
        } while (true);
    }

    public static byte[] a(String s)
    {
        byte abyte0[] = s.getBytes();
        return a(abyte0, 0, abyte0.length);
    }

    public static byte[] a(byte abyte0[], int i, int j)
    {
        return a(abyte0, i, j, d);
    }

    public static byte[] a(byte abyte0[], int i, int j, byte abyte1[])
    {
        byte abyte2[];
        byte abyte3[];
        int k;
        int l;
        int i1;
        abyte2 = new byte[2 + (j * 3) / 4];
        abyte3 = new byte[4];
        k = 0;
        l = 0;
        i1 = 0;
_L7:
        if (k >= j) goto _L2; else goto _L1
_L1:
        byte byte0;
        byte byte1;
        byte0 = (byte)(0x7f & abyte0[k + i]);
        byte1 = abyte1[byte0];
        if (byte1 < -5) goto _L4; else goto _L3
_L3:
        if (byte1 < -1)
        {
            break MISSING_BLOCK_LABEL_397;
        }
        if (byte0 != 61) goto _L6; else goto _L5
_L5:
        int l1 = j - k;
        byte byte2 = (byte)(0x7f & abyte0[i + (j - 1)]);
        if (l == 0 || l == 1)
        {
            throw new afb((new StringBuilder()).append("invalid padding byte '=' at byte offset ").append(k).toString());
        }
        if (l == 3 && l1 > 2 || l == 4 && l1 > 1)
        {
            throw new afb((new StringBuilder()).append("padding byte '=' falsely signals end of encoded value at offset ").append(k).toString());
        }
        if (byte2 != 61 && byte2 != 10)
        {
            throw new afb("encoded value has invalid trailing byte");
        }
          goto _L2
_L6:
        int j1;
        int k1;
        j1 = l + 1;
        abyte3[l] = byte0;
        byte abyte4[];
        if (j1 == 4)
        {
            k1 = i1 + a(abyte3, 0, abyte2, i1, abyte1);
            j1 = 0;
        } else
        {
            k1 = i1;
        }
_L8:
        k++;
        i1 = k1;
        l = j1;
          goto _L7
_L4:
        throw new afb((new StringBuilder()).append("Bad Base64 input character at ").append(k).append(": ").append(abyte0[k + i]).append("(decimal)").toString());
_L2:
        if (l != 0)
        {
            if (l == 1)
            {
                throw new afb((new StringBuilder()).append("single trailing character at offset ").append(j - 1).toString());
            }
            l + 1;
            abyte3[l] = 61;
            i1 += a(abyte3, 0, abyte2, i1, abyte1);
        }
        abyte4 = new byte[i1];
        System.arraycopy(abyte2, 0, abyte4, 0, i1);
        return abyte4;
        j1 = l;
        k1 = i1;
          goto _L8
    }

    public static byte[] a(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        int l = 4 * ((j + 2) / 3);
        byte abyte2[] = new byte[l + l / k];
        int i1 = j - 2;
        int j1 = 0;
        int k1 = 0;
        int l1;
        for (l1 = 0; l1 < i1;)
        {
            int i2 = (abyte0[l1 + i] << 24) >>> 8 | (abyte0[i + (l1 + 1)] << 24) >>> 16 | (abyte0[i + (l1 + 2)] << 24) >>> 24;
            abyte2[k1] = abyte1[i2 >>> 18];
            abyte2[k1 + 1] = abyte1[0x3f & i2 >>> 12];
            abyte2[k1 + 2] = abyte1[0x3f & i2 >>> 6];
            abyte2[k1 + 3] = abyte1[i2 & 0x3f];
            int j2 = j1 + 4;
            if (j2 == k)
            {
                abyte2[k1 + 4] = 10;
                k1++;
                j2 = 0;
            }
            l1 += 3;
            k1 += 4;
            j1 = j2;
        }

        if (l1 < j)
        {
            a(abyte0, l1 + i, j - l1, abyte2, k1, abyte1);
            if (j1 + 4 == k)
            {
                abyte2[k1 + 4] = 10;
                k1++;
            }
            k1 += 4;
        }
        if (!a && k1 != abyte2.length)
        {
            throw new AssertionError();
        } else
        {
            return abyte2;
        }
    }

    private static byte[] a(byte abyte0[], int i, int j, byte abyte1[], int k, byte abyte2[])
    {
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        if (j > 0)
        {
            l = (abyte0[i] << 24) >>> 8;
        } else
        {
            l = 0;
        }
        if (j > 1)
        {
            i1 = (abyte0[i + 1] << 24) >>> 16;
        } else
        {
            i1 = 0;
        }
        j1 = i1 | l;
        k1 = 0;
        if (j > 2)
        {
            k1 = (abyte0[i + 2] << 24) >>> 24;
        }
        l1 = k1 | j1;
        switch (j)
        {
        default:
            return abyte1;

        case 3: // '\003'
            abyte1[k] = abyte2[l1 >>> 18];
            abyte1[k + 1] = abyte2[0x3f & l1 >>> 12];
            abyte1[k + 2] = abyte2[0x3f & l1 >>> 6];
            abyte1[k + 3] = abyte2[l1 & 0x3f];
            return abyte1;

        case 2: // '\002'
            abyte1[k] = abyte2[l1 >>> 18];
            abyte1[k + 1] = abyte2[0x3f & l1 >>> 12];
            abyte1[k + 2] = abyte2[0x3f & l1 >>> 6];
            abyte1[k + 3] = 61;
            return abyte1;

        case 1: // '\001'
            abyte1[k] = abyte2[l1 >>> 18];
            abyte1[k + 1] = abyte2[0x3f & l1 >>> 12];
            abyte1[k + 2] = 61;
            abyte1[k + 3] = 61;
            return abyte1;
        }
    }

    static 
    {
        boolean flag;
        if (!afa.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
