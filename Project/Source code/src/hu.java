// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;

class hu extends Thread
{

    final hs a;

    private hu(hs hs1)
    {
        a = hs1;
        super();
    }

    hu(hs hs1, ht ht)
    {
        this(hs1);
    }

    public void run()
    {
        for (int i = 0; i < 3;)
        {
            if (hs.a(a))
            {
                i = 0;
            } else
            {
                i++;
            }
            try
            {
                sleep(60000L);
            }
            catch (InterruptedException interruptedexception)
            {
                Log.e("EventReporter", "ReportThread is being interrupted", interruptedexception);
            }
        }

    }
}
