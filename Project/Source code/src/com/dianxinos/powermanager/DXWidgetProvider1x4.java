// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import android.content.Context;
import android.content.Intent;
import azt;
import baj;
import bal;
import vz;

// Referenced classes of package com.dianxinos.powermanager:
//            PowerMgrService, WidgetUpdataService1x4

public class DXWidgetProvider1x4 extends vz
{

    public DXWidgetProvider1x4()
    {
    }

    public void a(Context context, Intent intent)
    {
        azt.a("DXWidgetProvider1x4", "onEnabled()");
        baj.a(context).a(1);
        bal.a(context, "widget14", "a", Integer.valueOf(1));
    }

    public void a(Context context, int ai[], Intent intent)
    {
        azt.a("DXWidgetProvider1x4", "onUpdate()");
        context.startService(new Intent(context, com/dianxinos/powermanager/PowerMgrService));
        context.startService(new Intent(context, com/dianxinos/powermanager/WidgetUpdataService1x4));
    }

    public void b(Context context, Intent intent)
    {
        azt.a("DXWidgetProvider1x4", "onDisabled()");
        baj.a(context).a(0);
        bal.a(context, "widget14", "d", Integer.valueOf(1));
    }

    public void b(Context context, int ai[], Intent intent)
    {
        azt.a("DXWidgetProvider1x4", "onDeleted()");
    }
}
