// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class ho
    implements hk
{

    final hn a;

    ho(hn hn1)
    {
        a = hn1;
        super();
    }

    public void a(int i)
    {
        if (i == 0)
        {
            ip.b(hn.a(a), "show_notification_flag", -1);
            hn.a(a, hn.a(a));
        } else
        {
            in.b("ADCheckManager", (new StringBuilder()).append(" onTask Over set flag 1 result ").append(i).toString());
            ip.b(hn.a(a), "show_notification_flag", 1);
        }
        hj.a(hn.a(a)).b();
    }
}
