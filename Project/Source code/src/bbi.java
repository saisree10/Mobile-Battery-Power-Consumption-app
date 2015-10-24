// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

final class bbi
{

    final bbe a;
    private final String b;
    private final long c[];
    private boolean d;
    private bbg e;
    private long f;

    private bbi(bbe bbe1, String s)
    {
        a = bbe1;
        super();
        b = s;
        c = new long[bbe.e(bbe1)];
    }

    bbi(bbe bbe1, String s, bbf bbf)
    {
        this(bbe1, s);
    }

    static long a(bbi bbi1, long l)
    {
        bbi1.f = l;
        return l;
    }

    static bbg a(bbi bbi1)
    {
        return bbi1.e;
    }

    static bbg a(bbi bbi1, bbg bbg)
    {
        bbi1.e = bbg;
        return bbg;
    }

    static void a(bbi bbi1, String as[])
    {
        bbi1.a(as);
    }

    private void a(String as[])
    {
        if (as.length != bbe.e(a))
        {
            throw b(as);
        }
        int i = 0;
        do
        {
            try
            {
                if (i >= as.length)
                {
                    break;
                }
                c[i] = Long.parseLong(as[i]);
            }
            catch (NumberFormatException numberformatexception)
            {
                throw b(as);
            }
            i++;
        } while (true);
    }

    static boolean a(bbi bbi1, boolean flag)
    {
        bbi1.d = flag;
        return flag;
    }

    private IOException b(String as[])
    {
        throw new IOException((new StringBuilder()).append("unexpected journal line: ").append(Arrays.toString(as)).toString());
    }

    static long[] b(bbi bbi1)
    {
        return bbi1.c;
    }

    static String c(bbi bbi1)
    {
        return bbi1.b;
    }

    static boolean d(bbi bbi1)
    {
        return bbi1.d;
    }

    static long e(bbi bbi1)
    {
        return bbi1.f;
    }

    public File a(int i)
    {
        return new File(bbe.f(a), (new StringBuilder()).append(b).append(".").append(i).toString());
    }

    public String a()
    {
        StringBuilder stringbuilder = new StringBuilder();
        long al[] = c;
        int i = al.length;
        for (int j = 0; j < i; j++)
        {
            long l = al[j];
            stringbuilder.append(' ').append(l);
        }

        return stringbuilder.toString();
    }

    public File b(int i)
    {
        return new File(bbe.f(a), (new StringBuilder()).append(b).append(".").append(i).append(".tmp").toString());
    }
}
