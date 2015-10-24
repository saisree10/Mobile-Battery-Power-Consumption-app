// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

public class vz extends BroadcastReceiver
{

    public vz()
    {
    }

    private static final String a(int ai[])
    {
        String s;
        if (ai == null)
        {
            s = "null";
        } else
        {
            if (ai.length == 0)
            {
                return "empty!";
            }
            s = "";
            int i = 0;
            while (i < ai.length) 
            {
                s = (new StringBuilder(String.valueOf(s))).append(ai[i]).toString();
                i++;
            }
        }
        return s;
    }

    private void a(Context context, int ai[], int i, Intent intent)
    {
        Intent intent1 = new Intent();
        intent1.setPackage(context.getPackageName());
        intent1.setAction("android.appwidget.action.WidgetClientService");
        intent1.putExtra("action_type", i);
        if (intent.getExtras() != null)
        {
            intent1.putExtras(intent.getExtras());
        }
        if (ai != null)
        {
            intent1.putExtra("appWidgetIds", ai);
        }
        context.startService(intent1);
    }

    protected void a(Context context, Intent intent)
    {
        if (vy.a)
        {
            Log.i("DXWidgetProvider", (new StringBuilder("onEnabled appWidgetIds=")).append(a(null)).toString());
        }
        a(context, null, 1, intent);
    }

    protected void a(Context context, int ai[], Intent intent)
    {
        if (vy.a)
        {
            Log.i("DXWidgetProvider", (new StringBuilder("onUpdate appWidgetIds=")).append(a(ai)).toString());
        }
        a(context, ai, 3, intent);
    }

    protected void b(Context context, Intent intent)
    {
        if (vy.a)
        {
            Log.i("DXWidgetProvider", "onDisabled");
        }
        a(context, null, 2, intent);
    }

    protected void b(Context context, int ai[], Intent intent)
    {
        if (vy.a)
        {
            Log.i("DXWidgetProvider", (new StringBuilder("onDeleted appWidgetIds=")).append(a(ai)).toString());
        }
        a(context, ai, 4, intent);
    }

    public void onReceive(Context context, Intent intent)
    {
        String s;
        s = intent.getAction();
        if (vy.a)
        {
            Log.i("DXWidgetProvider", (new StringBuilder("DXWidgetProvider onReceive,action=")).append(s).toString());
        }
        if (!"android.dxwidget.action.DXAPPWIDGET_UPDATE".equals(s)) goto _L2; else goto _L1
_L1:
        Bundle bundle1 = intent.getExtras();
        if (bundle1 != null)
        {
            int ai[] = bundle1.getIntArray("appWidgetIds");
            if (ai != null && ai.length > 0)
            {
                a(context, ai, intent);
            }
        }
_L4:
        return;
_L2:
        if (!"android.dxwidget.action.DXAPPWIDGET_DELETED".equals(s))
        {
            break; /* Loop/switch isn't completed */
        }
        Bundle bundle = intent.getExtras();
        if (bundle != null && bundle.containsKey("appWidgetId"))
        {
            b(context, new int[] {
                bundle.getInt("appWidgetId")
            }, intent);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if ("android.dxwidget.action.DXAPPWIDGET_ENABLED".equals(s))
        {
            a(context, intent);
            return;
        }
        if ("android.dxwidget.action.DXAPPWIDGET_DISABLED".equals(s))
        {
            b(context, intent);
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }
}
