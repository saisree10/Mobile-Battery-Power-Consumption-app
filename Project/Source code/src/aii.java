// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class aii extends BroadcastReceiver
{

    final aih a;

    aii(aih aih1)
    {
        a = aih1;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        int i;
label0:
        {
            if (a.e != null)
            {
                a.a();
                if (a.g)
                {
                    i = 1;
                } else
                {
                    i = 0;
                }
                if (aih.a(a) != 2 && aih.a(a) != 0)
                {
                    break label0;
                }
            }
            return;
        }
        a.e.a(a, i, i);
        amp.a(a.d).f(2);
    }
}
