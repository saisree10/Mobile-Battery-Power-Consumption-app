// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import aaa;
import acz;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import axa;
import baj;
import bal;

// Referenced classes of package com.dianxinos.powermanager:
//            WidgetUpdataService1x4, PowerMgrService

public class PowerMgrMidWidgetProvider extends AppWidgetProvider
{

    public PowerMgrMidWidgetProvider()
    {
    }

    private void a(Context context)
    {
        acz acz1 = acz.a(context);
        int i = acz1.b();
        aaa aaa1 = aaa.a(context);
        if (!aaa1.a())
        {
            axa.a(context).a();
            return;
        }
        int j = aaa1.a(300, true);
        int k = 180;
        if (j > 0)
        {
            int l = acz1.a();
            if (i > 0 && l > 0)
            {
                k = l - i;
            }
        }
        aaa1.a(j, k);
        bal.a(context, "widget14", "onekey", Integer.valueOf(1));
        bal.a(context, "clicks", "one_key", Integer.valueOf(1));
    }

    public void onDeleted(Context context, int ai[])
    {
    }

    public void onDisabled(Context context)
    {
        if (baj.a(context).a() == 0)
        {
            context.stopService(new Intent(context, com/dianxinos/powermanager/WidgetUpdataService1x4));
        }
        bal.a(context, "widget14", "d", Integer.valueOf(1));
    }

    public void onEnabled(Context context)
    {
        super.onEnabled(context);
        bal.a(context, "widget14", "a", Integer.valueOf(1));
    }

    public void onReceive(Context context, Intent intent)
    {
        if (intent.getAction().equals("com.dianxinos.dxbs.ONEKEY"))
        {
            context.startService(new Intent(context, com/dianxinos/powermanager/PowerMgrService));
            context.startService(new Intent(context, com/dianxinos/powermanager/WidgetUpdataService1x4));
            a(context);
        }
        super.onReceive(context, intent);
    }

    public void onUpdate(Context context, AppWidgetManager appwidgetmanager, int ai[])
    {
        context.startService(new Intent(context, com/dianxinos/powermanager/PowerMgrService));
        context.startService(new Intent(context, com/dianxinos/powermanager/WidgetUpdataService1x4));
    }
}
