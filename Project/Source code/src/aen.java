// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class aen
    implements Runnable
{

    final aks a;
    final String b;
    final int c;
    final long d;
    final String e;
    final aem f;

    aen(aem aem1, aks aks, String s, int i, long l, String s1)
    {
        f = aem1;
        a = aks;
        b = s;
        c = i;
        d = l;
        e = s1;
        super();
    }

    public void run()
    {
        f.a(a, b, c, d, e);
    }
}
