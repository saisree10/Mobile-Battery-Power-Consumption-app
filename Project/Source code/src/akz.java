// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.drawable.Drawable;
import com.dianxinos.powermanager.menu.AppListActivity;

public class akz
{

    public boolean a;
    final AppListActivity b;
    private String c;
    private String d;
    private Drawable e;
    private boolean f;

    private akz(AppListActivity applistactivity)
    {
        b = applistactivity;
        super();
        c = "";
        d = "";
        e = null;
    }

    akz(AppListActivity applistactivity, aky aky)
    {
        this(applistactivity);
    }

    static Drawable a(akz akz1, Drawable drawable)
    {
        akz1.e = drawable;
        return drawable;
    }

    static String a(akz akz1, String s)
    {
        akz1.d = s;
        return s;
    }

    static boolean a(akz akz1)
    {
        return akz1.f;
    }

    static boolean a(akz akz1, boolean flag)
    {
        akz1.f = flag;
        return flag;
    }

    public static String b(akz akz1)
    {
        return akz1.d;
    }

    static String b(akz akz1, String s)
    {
        akz1.c = s;
        return s;
    }

    static String c(akz akz1)
    {
        return akz1.c;
    }

    static Drawable d(akz akz1)
    {
        return akz1.e;
    }

    public String toString()
    {
        return (new StringBuilder()).append("AppInfo: appname ").append(c).append(" , packagename ").append(d).append(", isSys ").append(f).toString();
    }
}
