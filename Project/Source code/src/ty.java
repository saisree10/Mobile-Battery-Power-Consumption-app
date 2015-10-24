// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.util.Log;

public class ty
{

    public static String a = "stat.SystemInfoService";
    private Context b;
    private tx c;

    public ty(Context context)
    {
        b = context;
        c = new tx(1, 8, 0, tf.a("sys", gy.q(b), "default_input"), 3);
    }

    private String b()
    {
        return android.provider.Settings.Secure.getString(b.getContentResolver(), "default_input_method");
    }

    private boolean c()
    {
        Long long1 = Long.valueOf(ud.a(b, "di"));
        long l = System.currentTimeMillis() - long1.longValue();
        if (System.currentTimeMillis() - long1.longValue() > 0x240c8400L)
        {
            if (ud.b)
            {
                Log.d(a, "It's time to report default input");
            }
            return true;
        }
        if (ud.b)
        {
            Log.d(a, (new StringBuilder()).append("It's not time to report default input, because interval is ").append(l).append(" not 7 days!").toString());
        }
        return false;
    }

    public boolean a()
    {
        boolean flag = c();
        boolean flag1 = false;
        if (flag)
        {
            flag1 = sb.a(b).a(c, b());
            if (flag1)
            {
                ud.b(b, "di");
            }
        }
        return flag1;
    }

}
