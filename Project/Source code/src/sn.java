// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;

class sn
    implements Runnable
{

    final sm a;

    sn(sm sm1)
    {
        a = sm1;
        super();
    }

    public void run()
    {
        if (ud.b)
        {
            Log.d("stat.AppInfoService", "Enter in HandleAppInfoJob!");
        }
        sm.a(a, "exist");
_L1:
        return;
        Exception exception;
        exception;
        if (ud.d)
        {
            Log.e("stat.AppInfoService", "HandleAppInfoJob has exception!", exception);
            return;
        }
          goto _L1
    }
}
