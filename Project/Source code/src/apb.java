// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.dianxinos.powermanager.settings.BrightnessChangeActivity;
import com.dianxinos.powermanager.ui.WidgetAirplaneDialogActivity;

public class apb
{

    public static int a(Context context, ahp ahp1)
    {
        int i = ahp1.g();
        int j;
        if (i == 50)
        {
            j = 5;
        } else
        if (i == 100)
        {
            boolean flag = azw.d;
            j = 0;
            if (flag)
            {
                j = ahl.b;
            }
        } else
        {
            j = 0;
            if (i != 120)
            {
                j = 4;
            }
        }
        apf.a(context, j);
        ahp1.a(j);
        if (context instanceof Activity)
        {
            Activity activity = (Activity)context;
            if (activity.getParent() != null)
            {
                activity = activity.getParent();
            }
            ahl.a(activity.getWindow(), j);
            return j;
        } else
        {
            Intent intent = new Intent(context, com/dianxinos/powermanager/settings/BrightnessChangeActivity);
            intent.addFlags(0x10000000);
            intent.putExtra("brightness_index", j);
            context.startActivity(intent);
            return j;
        }
    }

    public static void a(Context context)
    {
        Intent intent = new Intent("android.settings.AIRPLANE_MODE_SETTINGS");
        intent.addFlags(0x10000000);
        context.startActivity(intent);
    }

    public static void a(Context context, int i, boolean flag)
    {
        azi.a().a(new apc(i, flag, context));
    }

    public static void a(Context context, api api1, String s)
    {
        switch (api1.b())
        {
        default:
            return;

        case 1: // '\001'
            apf.a(context, true, s);
            api1.a(2);
            return;

        case 3: // '\003'
            apf.a(context, true, s);
            api1.a(4);
            return;

        case 2: // '\002'
            apf.a(context, false, s);
            api1.a(1);
            return;

        case 4: // '\004'
            apf.a(context, false, s);
            break;
        }
        api1.a(3);
    }

    public static boolean a(Context context, ahp ahp1, String s)
    {
        boolean flag;
        int i;
        flag = ahp1.a();
        if (!flag)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (!(ahp1 instanceof ahd) || !azf.n()) goto _L2; else goto _L1
_L1:
        if (bag.a(context))
        {
            if (bag.a().b())
            {
                a(context, i, flag);
            } else
            {
                b(context, i, flag);
            }
        } else
        {
            a(context);
        }
        if (flag) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if (flag)
        {
            if (s != null)
            {
                apf.a(context, false, s);
            }
            ahp1.a(0);
        } else
        {
            if (s != null)
            {
                apf.a(context, true, s);
            }
            ahp1.a(1);
        }
        if (flag)
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    private static void b(Context context, int i, boolean flag)
    {
        if (context instanceof Activity)
        {
            auu auu1 = new auu(context);
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            auu1.setTitle(0x7f0a0288);
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            auu1.c(0x7f0a0289);
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            auu1.a(0x7f0a0114, new apd(context, i, flag));
            com.dianxinos.dxbs.R.string _tmp3 = ly.i;
            auu1.b(0x7f0a0115, new ape(context, auu1));
            auu1.show();
            return;
        } else
        {
            Intent intent = new Intent(context, com/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity);
            intent.setFlags(0x10000000);
            intent.putExtra("widget_airplane_mode", i);
            intent.putExtra("widget_airplane_status", flag);
            context.startActivity(intent);
            return;
        }
    }

    public static void b(Context context, ahp ahp1)
    {
        int i;
        int j;
        i = ahp1.f();
        j = 0;
        if (i != 5) goto _L2; else goto _L1
_L1:
        apf.b(context, j);
        ahp1.a(j);
        return;
_L2:
        if (i == 0)
        {
            j = 2;
        } else
        {
            j = 0;
            if (i == 2)
            {
                j = 5;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public static void b(Context context, api api1, String s)
    {
        switch (api1.b())
        {
        default:
            return;

        case 1: // '\001'
            apf.a(context, false, s);
            api1.a(3);
            return;

        case 2: // '\002'
            apf.a(context, false, s);
            api1.a(4);
            return;

        case 3: // '\003'
            apf.a(context, true, s);
            api1.a(1);
            return;

        case 4: // '\004'
            apf.a(context, true, s);
            break;
        }
        api1.a(2);
    }

    public static boolean b(Context context, ahp ahp1, String s)
    {
        if (ahp1.h())
        {
            return a(context, ahp1, s);
        } else
        {
            Intent intent = new Intent("android.settings.WIRELESS_SETTINGS");
            intent.addFlags(0x10000000);
            context.startActivity(intent);
            return false;
        }
    }

    public static int c(Context context, ahp ahp1, String s)
    {
        if (ahp1.h())
        {
            if (ahp1.a())
            {
                if (s != null)
                {
                    apf.a(context, false, s);
                }
                ahp1.a(0);
                return 0;
            }
            if (s != null)
            {
                apf.a(context, true, s);
            }
            ahp1.a(1);
            return 1;
        } else
        {
            Intent intent = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
            intent.addFlags(0x10000000);
            context.startActivity(intent);
            return -1;
        }
    }
}
