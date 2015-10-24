// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class wq
    implements xx
{

    final boolean a;
    final xq b;
    final xp c;
    final wm d;

    wq(wm wm1, boolean flag, xq xq, xp xp)
    {
        d = wm1;
        a = flag;
        b = xq;
        c = xp;
        super();
    }

    public void a()
    {
        if (a)
        {
            if (b != null)
            {
                wm.g(d).b(b);
            }
            wm.g(d).b(c);
            return;
        }
        if (b != null)
        {
            wm.g(d).a(b);
        }
        wm.g(d).a(c);
    }
}
