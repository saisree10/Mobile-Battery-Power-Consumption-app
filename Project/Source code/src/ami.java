// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.TimerTask;

class ami extends TimerTask
{

    final amh a;

    ami(amh amh1)
    {
        a = amh1;
        super();
    }

    public void run()
    {
        amh.a(a, false);
    }
}
