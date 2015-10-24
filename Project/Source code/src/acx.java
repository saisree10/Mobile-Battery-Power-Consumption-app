// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;

public class acx
{

    private static volatile acx g;
    private final int a = 10;
    private boolean b;
    private SharedPreferences c;
    private Context d;
    private int e;
    private String f;
    private String h;

    private acx(Context context)
    {
        b = false;
        d = context;
        c = d.getSharedPreferences("BatteryConfig", 0);
        e = c.getInt("num", 0);
        f = c.getString("battery_capacity", "-1");
        b = c.getBoolean("had_report_healthy_charging", false);
        h = c.getString("battery_details_position", "");
    }

    public static acx a(Context context)
    {
        if (g != null) goto _L2; else goto _L1
_L1:
        acx;
        JVM INSTR monitorenter ;
        if (g == null)
        {
            g = new acx(context);
        }
        acx;
        JVM INSTR monitorexit ;
_L2:
        return g;
        Exception exception;
        exception;
        acx;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int a()
    {
        return c.getInt("battery_level", 0);
    }

    public void a(int i)
    {
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putInt("battery_level", i);
        gm.a(editor);
    }

    public void a(String s)
    {
        f = s;
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putString("battery_capacity", f);
        gm.a(editor);
    }

    public String b()
    {
        return f;
    }

    public void b(String s)
    {
        h = s;
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putString("battery_details_position", s);
        gm.a(editor);
    }

    public void c()
    {
        b = true;
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putBoolean("had_report_healthy_charging", true);
        gm.a(editor);
    }

    public boolean d()
    {
        return b;
    }

    public ArrayList e()
    {
        ArrayList arraylist = new ArrayList();
        boolean flag = h.equals("");
        int i = 0;
        if (!flag)
        {
            for (String as[] = h.split(","); i < as.length; i++)
            {
                arraylist.add(Integer.valueOf(Integer.parseInt(as[i])));
            }

        } else
        {
            for (; i < 10; i++)
            {
                arraylist.add(Integer.valueOf(i));
            }

        }
        return arraylist;
    }

    public String f()
    {
        return h;
    }
}
