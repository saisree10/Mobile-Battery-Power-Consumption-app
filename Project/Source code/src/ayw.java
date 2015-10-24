// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.UnsupportedEncodingException;

public class ayw
{

    static final boolean a;

    private ayw()
    {
    }

    public static byte[] a(String s, int i)
    {
        return a(s.getBytes(), i);
    }

    public static byte[] a(byte abyte0[], int i)
    {
        return a(abyte0, 0, abyte0.length, i);
    }

    public static byte[] a(byte abyte0[], int i, int j, int k)
    {
        ayy ayy1 = new ayy(k, new byte[(j * 3) / 4]);
        if (!ayy1.a(abyte0, i, j, true))
        {
            throw new IllegalArgumentException("bad base-64");
        }
        if (ayy1.b == ayy1.a.length)
        {
            return ayy1.a;
        } else
        {
            byte abyte1[] = new byte[ayy1.b];
            System.arraycopy(ayy1.a, 0, abyte1, 0, ayy1.b);
            return abyte1;
        }
    }

    public static String b(byte abyte0[], int i)
    {
        String s;
        try
        {
            s = new String(c(abyte0, i), "US-ASCII");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new AssertionError(unsupportedencodingexception);
        }
        return s;
    }

    public static byte[] b(byte abyte0[], int i, int j, int k)
    {
        ayz ayz1;
        int l;
        ayz1 = new ayz(k, null);
        l = 4 * (j / 3);
        if (!ayz1.d) goto _L2; else goto _L1
_L1:
        if (j % 3 > 0)
        {
            l += 4;
        }
_L4:
        if (ayz1.e && j > 0)
        {
            int i1 = 1 + (j - 1) / 57;
            byte byte0;
            if (ayz1.f)
            {
                byte0 = 2;
            } else
            {
                byte0 = 1;
            }
            l += byte0 * i1;
        }
        ayz1.a = new byte[l];
        ayz1.a(abyte0, i, j, true);
        if (!a && ayz1.b != l)
        {
            throw new AssertionError();
        } else
        {
            return ayz1.a;
        }
_L2:
        switch (j % 3)
        {
        case 1: // '\001'
            l += 2;
            break;

        case 2: // '\002'
            l += 3;
            break;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static byte[] c(byte abyte0[], int i)
    {
        return b(abyte0, 0, abyte0.length, i);
    }

    static 
    {
        boolean flag;
        if (!ayw.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
