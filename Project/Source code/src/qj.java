// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class qj
    implements Runnable
{

    final qi a;

    qj(qi qi1)
    {
        a = qi1;
        super();
    }

    public void run()
    {
        nz.b("ToolboxClickHandler", "[WebView] timeout TIMEOUT_FINISH.");
        if (qi.a(a))
        {
            return;
        }
        qi.a(a, true);
        if (qi.b(a))
        {
            nz.b("ToolboxClickHandler", "[WebView]FinishRunnable canceled.");
            op.g(qb.a(a.c), a.a);
            return;
        } else
        {
            a.c.b(a.a, a.a.m);
            a.c.c();
            return;
        }
    }
}
