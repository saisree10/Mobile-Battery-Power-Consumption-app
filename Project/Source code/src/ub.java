// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ub
{

    private static Context a;
    private static PackageManager b;
    private static ContentResolver c;

    public static List a(String s)
    {
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = b.getInstalledApplications(0).iterator(); iterator.hasNext(); arraylist.add(a(((ApplicationInfo)iterator.next()).packageName, s))) { }
        return arraylist;
    }

    public static sr a(String s, String s1)
    {
        return new sr(s, a, s1);
    }

    public static void a(Context context)
    {
        a = context.getApplicationContext();
        b = a.getPackageManager();
        c = a.getContentResolver();
    }

    public static boolean a(sr sr1)
    {
        String s = android.provider.Settings.System.getString(c, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PN}");
        if (s != null)
        {
            String as[] = s.split(",");
            String s1 = ud.a(sr1.a());
            int i = as.length;
            int j = 0;
            while (j < i) 
            {
                if (as[j].equals(s1))
                {
                    return true;
                }
                j++;
            }
        }
        return false;
    }

    public static void b(sr sr1)
    {
        String s = ud.a(sr1.a());
        String s1 = android.provider.Settings.System.getString(c, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PN}");
        if (s1 == null)
        {
            android.provider.Settings.System.putString(c, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PN}", s);
            return;
        } else
        {
            String s2 = (new StringBuilder()).append(s1).append(",").append(s).toString();
            android.provider.Settings.System.putString(c, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PN}", s2);
            return;
        }
    }
}
