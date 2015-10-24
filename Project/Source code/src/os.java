// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class os
    implements Runnable
{

    final oq a;

    os(oq oq1)
    {
        a = oq1;
        super();
    }

    public void run()
    {
        nz.b("ToolboxCacheMgr", "init disk cache start.");
        oq.d(a);
        nz.b("ToolboxCacheMgr", "init disk cache end.");
    }
}
