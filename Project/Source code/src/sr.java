// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;

public class sr
{

    protected String a;
    protected String b;
    protected String c;
    protected String d;
    protected String e;
    protected String f;
    protected String g;
    protected String h;
    protected String i;
    protected String j;
    protected String k;
    private PackageInfo l;
    private PackageManager m;

    public sr(Context context, String s)
    {
        g = s;
        h = context.getPackageName();
    }

    public sr(String s, Context context, String s1)
    {
        a = s;
        g = s1;
        h = context.getPackageName();
        m = context.getPackageManager();
        l = m.getPackageInfo(a, 0);
        b = l();
        c = uc.a(context, a);
        d = String.valueOf(uc.b(context, a));
        e = String.valueOf(uc.a(l, "firstInstallTime"));
        f = String.valueOf(uc.a(l, "lastUpdateTime"));
        i = a(a);
        j = uc.c(context, a);
        k = b(a);
_L1:
        return;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        if (ud.d)
        {
            Log.e("stat.BaseAppInfo", "NameNotFoundException!", namenotfoundexception);
            return;
        }
          goto _L1
    }

    public sr(sr sr1)
    {
        a = sr1.a;
        b = sr1.b;
        c = sr1.c;
        d = sr1.d;
        e = sr1.e;
        f = sr1.f;
        g = sr1.g;
        h = sr1.h;
        i = sr1.i;
        j = sr1.j;
        k = sr1.k;
    }

    private String a(String s)
    {
        return m.getInstallerPackageName(s);
    }

    private String b(String s)
    {
        boolean flag = true;
        if ((1 & l.applicationInfo.flags) != flag)
        {
            flag = false;
        }
        return String.valueOf(flag);
    }

    private String l()
    {
        return l.applicationInfo.loadLabel(m).toString();
    }

    public String a()
    {
        return a;
    }

    public void a(long l1)
    {
        f = String.valueOf(l1);
    }

    public String b()
    {
        return b;
    }

    public String c()
    {
        return c;
    }

    public String d()
    {
        return d;
    }

    public String e()
    {
        return e;
    }

    public String f()
    {
        return f;
    }

    public String g()
    {
        return g;
    }

    public String h()
    {
        return h;
    }

    public String i()
    {
        return i;
    }

    public String j()
    {
        return j;
    }

    public String k()
    {
        return k;
    }
}
