// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

public class zu
{

    private static int a = -1;

    public static boolean a(Context context)
    {
        boolean flag;
label0:
        {
            Intent intent = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            flag = false;
            if (intent == null)
            {
                break label0;
            }
            int i = intent.getIntExtra("plugged", 0);
            if (i != 1)
            {
                flag = false;
                if (i != 2)
                {
                    break label0;
                }
            }
            flag = true;
        }
        return flag;
    }

    public static boolean b(Context context)
    {
        Intent intent = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intent != null)
        {
            return intent.getIntExtra("plugged", 0) == 1;
        } else
        {
            return false;
        }
    }

}
