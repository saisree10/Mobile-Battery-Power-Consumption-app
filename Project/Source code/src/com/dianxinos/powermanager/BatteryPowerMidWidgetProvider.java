// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.dianxinos.powermanager:
//            UpdateBatteryWidgetService

public class BatteryPowerMidWidgetProvider extends AppWidgetProvider
{

    public BatteryPowerMidWidgetProvider()
    {
    }

    public void onDisabled(Context context)
    {
        super.onDisabled(context);
    }

    public void onEnabled(Context context)
    {
        super.onEnabled(context);
    }

    public void onUpdate(Context context, AppWidgetManager appwidgetmanager, int ai[])
    {
        context.startService(new Intent(context, com/dianxinos/powermanager/UpdateBatteryWidgetService));
        super.onUpdate(context, appwidgetmanager, ai);
    }
}
