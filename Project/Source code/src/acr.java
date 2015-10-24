// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.net.URI;

class acr extends BroadcastReceiver
{

    final acq a;

    acr(acq acq1)
    {
        a = acq1;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if ("android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE".equals(s) || "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE".equals(s))
        {
            acq.a(a, context, intent);
        } else
        {
            if ("android.intent.action.MEDIA_BAD_REMOVAL".equals(s))
            {
                acq.a(a);
                return;
            }
            String s1 = URI.create(intent.getDataString()).getSchemeSpecificPart();
            boolean flag = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
            if ("android.intent.action.PACKAGE_ADDED".equals(s) && !flag)
            {
                a.h(s1);
                return;
            }
            if ("android.intent.action.PACKAGE_REMOVED".equals(s) && !flag)
            {
                a.i(s1);
                return;
            }
            if ("android.intent.action.PACKAGE_CHANGED".equals(s) || "android.intent.action.PACKAGE_REPLACED".equals(s))
            {
                a.j(s1);
                return;
            }
        }
    }
}
