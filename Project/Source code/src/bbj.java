// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Closeable;
import java.io.InputStream;

public final class bbj
    implements Closeable
{

    final bbe a;
    private final String b;
    private final long c;
    private final InputStream d[];

    private bbj(bbe bbe1, String s, long l, InputStream ainputstream[])
    {
        a = bbe1;
        super();
        b = s;
        c = l;
        d = ainputstream;
    }

    bbj(bbe bbe1, String s, long l, InputStream ainputstream[], bbf bbf)
    {
        this(bbe1, s, l, ainputstream);
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
            bbe.a(ainputstream[j]);
        }

    }
}
