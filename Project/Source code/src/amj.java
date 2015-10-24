// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.TimerTask;

class amj extends TimerTask
{

    final amh a;

    amj(amh amh1)
    {
        a = amh1;
        super();
    }

    public void run()
    {
        if (amh.a(a))
        {
            a.b(2);
        }
        if (amh.b(a))
        {
            a.b(3);
        }
        if (amh.c(a))
        {
            a.b(4);
        }
    }
}
