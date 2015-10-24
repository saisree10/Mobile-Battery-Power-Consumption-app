// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Closeable;
import java.io.InputStream;

public final class bbw
    implements Closeable
{

    final bbq a;
    private final String b;
    private final long c;
    private final InputStream d[];
    private final long e[];

    private bbw(bbq bbq1, String s, long l, InputStream ainputstream[], long al[])
    {
        a = bbq1;
        super();
        b = s;
        c = l;
        d = ainputstream;
        e = al;
    }

    bbw(bbq bbq1, String s, long l, InputStream ainputstream[], long al[], bbr bbr)
    {
        this(bbq1, s, l, ainputstream, al);
    }

    public bbt a()
    {
        return bbq.a(a, b, c);
    }

    public InputStream a(int i)
    {
        return d[i];
    }

    public void close()
    {
        InputStream ainputstream[] = d;
        int i = ainputstream.length;
        for (int j = 0; j < i; j++)
        {
            bbz.a(ainputstream[j]);
        }

    }
}
