// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.settings;

import amh;
import amp;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import aot;
import aow;
import apb;
import api;
import azt;
import bal;
import com.dianxinos.powermanager.PowerMgrService;
import java.util.ArrayList;
import java.util.HashMap;
import ly;

// Referenced classes of package com.dianxinos.powermanager.settings:
//            SettingsWidgetService1x4

public class PowerSettingsWidgetProvider1x4 extends AppWidgetProvider
{

    private static String a = "PowerSettingsWidgetProvider1x4";
    private static boolean b = false;

    public PowerSettingsWidgetProvider1x4()
    {
    }

    public void onDeleted(Context context, int ai[])
    {
        super.onDeleted(context, ai);
    }

    public void onDisabled(Context context)
    {
        context.stopService(new Intent(context, com/dianxinos/powermanager/settings/SettingsWidgetService1x4));
        if (b)
        {
            azt.a(a, "stop SettingsWidgetService1x4");
        }
        super.onDisabled(context);
        bal.a(context, "widget14", "td", Integer.valueOf(1));
    }

    public void onEnabled(Context context)
    {
        if (b)
        {
            azt.a(a, "onEnabled ");
        }
        super.onEnabled(context);
        bal.a(context, "widget14", "ta", Integer.valueOf(1));
    }

    public void onReceive(Context context, Intent intent)
    {
        context.startService(new Intent(context, com/dianxinos/powermanager/settings/SettingsWidgetService1x4));
        String s = intent.getAction();
        if (b)
        {
            azt.a(a, (new StringBuilder()).append("action : ").append(s).append(" intent: ").append(intent.toString()).toString());
        }
        if (!intent.hasCategory("android.intent.category.ALTERNATIVE")) goto _L2; else goto _L1
_L1:
        aot aot1;
        amh amh1;
        String s1;
        int j;
        int i = Integer.parseInt(intent.getData().getSchemeSpecificPart());
        if (b)
        {
            azt.a(a, (new StringBuilder()).append("buttonId : ").append(i).toString());
        }
        aot1 = aot.a(context);
        ArrayList arraylist = aot1.a(aot1.b(context));
        amh1 = amp.a(context).g();
        s1 = (String)arraylist.get(i);
        j = 0;
_L5:
        if (j >= aot.a.length)
        {
            break MISSING_BLOCK_LABEL_537;
        }
        if (!aot.a[j].equals(s1)) goto _L4; else goto _L3
_L3:
        if (b)
        {
            azt.a(a, (new StringBuilder()).append("commandId : ").append(j).toString());
        }
        String s2 = context.getString(((aow)aot1.b.get(s1)).b);
        if (j == 3)
        {
            HashMap hashmap1 = aot1.b;
            ly.i;
            ly.e;
            hashmap1.put("bluetooth", new aow("bluetooth", 0x7f0a0197, 0x7f0203e8, 2));
        }
        if (j == 2)
        {
            HashMap hashmap = aot1.b;
            ly.i;
            ly.e;
            hashmap.put("wifi", new aow("wifi", 0x7f0a0197, 0x7f0203f9, 2));
        }
        if (j == 3 || j == 5 || j == 12)
        {
            apb.a(context, amh1.a(j), s2);
        } else
        if (j == 2 || j == 4)
        {
            apb.b(context, amh1.a(j), s2);
        } else
        if (j == 0)
        {
            apb.a(context, amh1.a(j));
        } else
        if (j == 6)
        {
            apb.b(context, api.a(context), s2);
        } else
        if (j == 10)
        {
            Intent intent1 = new Intent("android.settings.SYNC_SETTINGS");
            intent1.addFlags(0x10000000);
            context.startActivity(intent1);
        } else
        if (j == 9)
        {
            apb.c(context, amh1.a(j), s2);
        } else
        if (j == 13)
        {
            apb.a(context, amh1.l(), s2);
        }
_L6:
        super.onReceive(context, intent);
        return;
_L4:
        j++;
          goto _L5
_L2:
        if (b)
        {
            azt.a(a, " no CATEGORY_ALTERNATIVE ");
        }
          goto _L6
        j = -1;
          goto _L3
    }

    public void onUpdate(Context context, AppWidgetManager appwidgetmanager, int ai[])
    {
        if (b)
        {
            azt.a(a, "onUpdate startSerrvice PowerMgrService and SettingsService");
        }
        context.startService(new Intent(context, com/dianxinos/powermanager/PowerMgrService));
        context.startService(new Intent(context, com/dianxinos/powermanager/settings/SettingsWidgetService1x4));
        super.onUpdate(context, appwidgetmanager, ai);
    }

}
