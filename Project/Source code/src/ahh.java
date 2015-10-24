// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class ahh
    implements Runnable
{

    final ahg a;

    ahh(ahg ahg1)
    {
        a = ahg1;
        super();
    }

    public void run()
    {
        if (a.a.e != null)
        {
            a.a.a();
            int i;
            if (a.a.g)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            a.a.e.a(a.a, i, i);
        }
    }
}
