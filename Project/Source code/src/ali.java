// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.drawable.Drawable;
import com.dianxinos.powermanager.menu.AppWhiteListActivity;

public class ali
{

    public boolean a;
    final AppWhiteListActivity b;
    private String c;
    private String d;
    private Drawable e;
    private boolean f;

    private ali(AppWhiteListActivity appwhitelistactivity)
    {
        b = appwhitelistactivity;
        super();
        c = "";
        d = "";
        e = null;
    }

    ali(AppWhiteListActivity appwhitelistactivity, alf alf)
    {
        this(appwhitelistactivity);
    }

    static Drawable a(ali ali1, Drawable drawable)
    {
        ali1.e = drawable;
        return drawable;
    }

    public static String a(ali ali1)
    {
        return ali1.d;
    }

    static String a(ali ali1, String s)
    {
        ali1.d = s;
        return s;
    }

    static String b(ali ali1)
    {
        return ali1.c;
    }

    static String b(ali ali1, String s)
    {
        ali1.c = s;
        return s;
    }

    static Drawable c(ali ali1)
    {
        return ali1.e;
    }

    public String toString()
    {
        return (new StringBuilder()).append("AppInfo: appname ").append(c).append(" , packagename ").append(d).append(", isSys ").append(f).toString();
    }
}
