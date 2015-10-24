// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class bdk
{

    private static final char a[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'a', 'b', 'c', 'd', 'e', 'f'
    };
    private static final char b[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'A', 'B', 'C', 'D', 'E', 'F'
    };
    private final String c;

    public static char[] a(byte abyte0[])
    {
        return a(abyte0, true);
    }

    public static char[] a(byte abyte0[], boolean flag)
    {
        char ac[];
        if (flag)
        {
            ac = a;
        } else
        {
            ac = b;
        }
        return a(abyte0, ac);
    }

    protected static char[] a(byte abyte0[], char ac[])
    {
        int i = 0;
        int j = abyte0.length;
        char ac1[] = new char[j << 1];
        for (int k = 0; k < j; k++)
        {
            int l = i + 1;
            ac1[i] = ac[(0xf0 & abyte0[k]) >>> 4];
            i = l + 1;
            ac1[l] = ac[0xf & abyte0[k]];
        }

        return ac1;
    }

    public String toString()
    {
        return (new StringBuilder()).append(super.toString()).append("[charsetName=").append(c).append("]").toString();
    }

}
