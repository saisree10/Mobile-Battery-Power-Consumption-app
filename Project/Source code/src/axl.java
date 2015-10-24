// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;

public class axl
{

    private Context a;

    public axl(Context context)
    {
        a = context;
    }

    private axm i()
    {
        if (a())
        {
            return axm.c;
        } else
        {
            return axm.a(a.getSharedPreferences("upgrade_config", 0).getInt("new", -1));
        }
    }

    public void a(int j)
    {
        android.content.SharedPreferences.Editor editor = a.getSharedPreferences("upgrade_config", 0).edit();
        editor.putInt("version_code", j);
        gm.a(editor);
    }

    public void a(long l)
    {
        android.content.SharedPreferences.Editor editor = a.getSharedPreferences("upgrade_config", 0).edit();
        editor.putLong("last_display", l);
        gm.a(editor);
    }

    public void a(axm axm1)
    {
        android.content.SharedPreferences.Editor editor = a.getSharedPreferences("upgrade_config", 0).edit();
        editor.putInt("new", axm1.a());
        gm.a(editor);
    }

    public void a(String s)
    {
        android.content.SharedPreferences.Editor editor = a.getSharedPreferences("upgrade_config", 0).edit();
        editor.putString("version_name", s);
        gm.a(editor);
    }

    public void a(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = a.getSharedPreferences("upgrade_config", 0).edit();
        editor.putBoolean("force", flag);
        gm.a(editor);
    }

    public boolean a()
    {
        return a.getSharedPreferences("upgrade_config", 0).getBoolean("force", false);
    }

    public void b(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = a.getSharedPreferences("upgrade_config", 0).edit();
        editor.putBoolean("emergency", flag);
        gm.a(editor);
    }

    public boolean b()
    {
        return a.getSharedPreferences("upgrade_config", 0).getBoolean("emergency", false);
    }

    public void c()
    {
        jo.b(a, "pref-last-check", System.currentTimeMillis());
    }

    public void c(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = a.getSharedPreferences("upgrade_config", 0).edit();
        editor.putBoolean("never_display", flag);
        gm.a(editor);
    }

    public boolean d()
    {
        PackageInfo packageinfo1 = acq.e(a.getPackageName()).c();
        PackageInfo packageinfo = packageinfo1;
_L1:
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        int j;
        if (packageinfo == null)
        {
            j = -1;
        } else
        {
            j = packageinfo.versionCode;
        }
        return i().equals(axm.c) && j < g();
        namenotfoundexception;
        namenotfoundexception.printStackTrace();
        packageinfo = null;
          goto _L1
    }

    public boolean e()
    {
        return a.getSharedPreferences("upgrade_config", 0).getBoolean("never_display", false);
    }

    public long f()
    {
        return a.getSharedPreferences("upgrade_config", 0).getLong("last_display", -1L);
    }

    public int g()
    {
        return a.getSharedPreferences("upgrade_config", 0).getInt("version_code", 0);
    }

    public boolean h()
    {
        if (d())
        {
            break MISSING_BLOCK_LABEL_7;
        }
        break MISSING_BLOCK_LABEL_47;
        while (0x5265c00L + f() <= System.currentTimeMillis()) 
        {
            do
            {
                return true;
            } while (a() || b());
            if (e())
            {
                return false;
            }
        }
        return false;
    }
}
