// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class bez
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

    protected static int a(char c1, int i)
    {
        int j = Character.digit(c1, 16);
        if (j == -1)
        {
            throw new bew("Illegal hexadecimal character " + c1 + " at index " + i);
        } else
        {
            return j;
        }
    }

    public static byte[] a(char ac[])
    {
        int i = 0;
        int j = ac.length;
        if ((j & 1) != 0)
        {
            throw new bew("Odd number of characters.");
        }
        byte abyte0[] = new byte[j >> 1];
        for (int k = 0; i < j; k++)
        {
            int l = a(ac[i], i) << 4;
            int i1 = i + 1;
            int j1 = l | a(ac[i1], i1);
            i = i1 + 1;
            abyte0[k] = (byte)(j1 & 0xff);
        }

        return abyte0;
    }

    public String toString()
    {
        return super.toString() + "[charsetName=" + c + "]";
    }

}
