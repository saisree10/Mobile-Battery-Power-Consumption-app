// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

final class bbv
{

    final bbq a;
    private final String b;
    private final long c[];
    private boolean d;
    private bbt e;
    private long f;

    private bbv(bbq bbq1, String s)
    {
        a = bbq1;
        super();
        b = s;
        c = new long[bbq.e(bbq1)];
    }

    bbv(bbq bbq1, String s, bbr bbr)
    {
        this(bbq1, s);
    }

    static long a(bbv bbv1, long l)
    {
        bbv1.f = l;
        return l;
    }

    static bbt a(bbv bbv1)
    {
        return bbv1.e;
    }

    static bbt a(bbv bbv1, bbt bbt)
    {
        bbv1.e = bbt;
        return bbt;
    }

    static void a(bbv bbv1, String as[])
    {
        bbv1.a(as);
    }

    private void a(String as[])
    {
        if (as.length != bbq.e(a))
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

    static boolean a(bbv bbv1, boolean flag)
    {
        bbv1.d = flag;
        return flag;
    }

    private IOException b(String as[])
    {
        throw new IOException((new StringBuilder()).append("unexpected journal line: ").append(Arrays.toString(as)).toString());
    }

    static long[] b(bbv bbv1)
    {
        return bbv1.c;
    }

    static String c(bbv bbv1)
    {
        return bbv1.b;
    }

    static boolean d(bbv bbv1)
    {
        return bbv1.d;
    }

    static long e(bbv bbv1)
    {
        return bbv1.f;
    }

    public File a(int i)
    {
        return new File(bbq.f(a), (new StringBuilder()).append(b).append(".").append(i).toString());
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
        return new File(bbq.f(a), (new StringBuilder()).append(b).append(".").append(i).append(".tmp").toString());
    }
}
