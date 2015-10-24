// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;

class tt
    implements Runnable
{

    final ts a;

    tt(ts ts1)
    {
        a = ts1;
        super();
    }

    public void run()
    {
        if (ud.b)
        {
            Log.d("stat.HwInfoService", "Enter in UpdatePreferenceJob!");
        }
        String s = gy.m(ts.a(a));
        if (ts.b(a) >= 10 || s == null)
        {
            break MISSING_BLOCK_LABEL_107;
        }
        if (s.length() == 0)
        {
            ts.c(a);
            if (ud.c)
            {
                Log.i("stat.HwInfoService", (new StringBuilder()).append("Retry to update the hw infos for the ").append(ts.b(a)).append("st time.").toString());
            }
            uf.a(this, 5000L);
            return;
        }
        try
        {
            ts.d(a);
            return;
        }
        catch (Exception exception)
        {
            if (ud.d)
            {
                Log.e("stat.HwInfoService", "Failed update the hw infos.", exception);
            }
        }
        return;
    }
}
