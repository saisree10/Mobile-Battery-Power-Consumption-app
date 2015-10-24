// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class qy
    implements Runnable
{

    final qx a;

    qy(qx qx1)
    {
        a = qx1;
        super();
    }

    public void run()
    {
        nz.b("ToolboxTctbClickHandler", "[WebView] timeout TIMEOUT_FINISH.");
        if (qx.a(a))
        {
            return;
        }
        qx.a(a, true);
        if (qx.b(a))
        {
            nz.b("ToolboxTctbClickHandler", "[WebView]FinishRunnable canceled.");
            op.g(qs.a(a.c), a.a);
            return;
        } else
        {
            a.c.g(a.a, a.a.m);
            return;
        }
    }
}
