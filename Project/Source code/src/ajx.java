// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.download.DownloadFileService;

public class ajx extends akc
{

    final DownloadFileService a;

    public ajx(DownloadFileService downloadfileservice)
    {
        a = downloadfileservice;
        super();
    }

    public void a(String s)
    {
        a.a(s);
    }

    public void a(String s, String s1, long l, long l1, ajy ajy)
    {
        a.a(s, s1, l, l1, ajy);
    }

    public boolean b(String s)
    {
        return a.b(s);
    }
}
