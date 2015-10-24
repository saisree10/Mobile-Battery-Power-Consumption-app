// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.webkit.WebView;

class qk
    implements Runnable
{

    final qi a;

    qk(qi qi1)
    {
        a = qi1;
        super();
    }

    public void run()
    {
        nz.b("ToolboxClickHandler", "[WebView] Timeout TIMEOUT_START.");
        if (qi.a(a))
        {
            return;
        }
        qi.a(a, true);
        a.b.stopLoading();
        if (qi.b(a))
        {
            nz.b("ToolboxClickHandler", "[WebView] StartRunnable canceled.");
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
