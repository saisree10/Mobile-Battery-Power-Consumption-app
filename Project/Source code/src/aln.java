// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class aln
{

    private static aln d;
    private SharedPreferences a;
    private ArrayList b;
    private PackageManager c;
    private Context e;
    private android.content.SharedPreferences.OnSharedPreferenceChangeListener f;

    private aln(Context context)
    {
        e = context;
        b = new ArrayList();
        a = context.getSharedPreferences("AppWhiteList", 0);
        c = context.getPackageManager();
        c();
        d();
        c(context);
    }

    public static aln a(Context context)
    {
        if (d != null) goto _L2; else goto _L1
_L1:
        aln;
        JVM INSTR monitorenter ;
        if (d == null)
        {
            d = new aln(context);
        }
        aln;
        JVM INSTR monitorexit ;
_L2:
        return d;
        Exception exception;
        exception;
        aln;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean b(String s)
    {
        boolean flag;
        try
        {
            flag = acq.e(s).c;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            namenotfoundexception.printStackTrace();
            return false;
        }
        return !flag;
    }

    private void c()
    {
        Iterator iterator = a.getAll().keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            if (-2 != a.getInt(s, 0) && b(s))
            {
                b.add(s);
            }
        } while (true);
    }

    private void c(Context context)
    {
        c("com.tencent.mobileqq");
        c("com.tencent.qq");
        c("com.tencent.android.pad");
        Intent intent = new Intent("android.intent.action.MAIN", null);
        intent.addCategory("android.intent.category.HOME");
        List list = context.getPackageManager().queryIntentActivities(intent, 0);
        for (int i = 0; i < list.size(); i++)
        {
            c(((ResolveInfo)list.get(i)).activityInfo.packageName);
        }

    }

    private void c(String s)
    {
        if (b.contains(s) || a.getInt(s, 0) == -2)
        {
            return;
        }
        if (b(s))
        {
            b.add(s);
        }
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putInt(s, 2);
        gm.a(editor);
    }

    private void d()
    {
        if (a != null)
        {
            a.registerOnSharedPreferenceChangeListener(f);
        }
    }

    public ArrayList a()
    {
        return b;
    }

    public void a(ArrayList arraylist)
    {
        android.content.SharedPreferences.Editor editor = a.edit();
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            b.remove(s);
            if (2 == a.getInt(s, 0))
            {
                editor.putInt(s, -2);
            } else
            {
                editor.remove(s);
            }
        }

        gm.a(editor);
    }

    public void a(LinkedHashSet linkedhashset)
    {
        if (!b.isEmpty())
        {
            Iterator iterator1 = linkedhashset.iterator();
            do
            {
                if (!iterator1.hasNext())
                {
                    break;
                }
                String s1 = (String)iterator1.next();
                if (!b.contains(s1))
                {
                    if (b(s1))
                    {
                        b.add(s1);
                    }
                    android.content.SharedPreferences.Editor editor1 = a.edit();
                    if (-2 == a.getInt(s1, 0))
                    {
                        editor1.putInt(s1, 2);
                    } else
                    {
                        editor1.putInt(s1, 1);
                    }
                    gm.a(editor1);
                }
            } while (true);
        } else
        if (!linkedhashset.isEmpty())
        {
            Iterator iterator = linkedhashset.iterator();
            while (iterator.hasNext()) 
            {
                String s = (String)iterator.next();
                if (b(s))
                {
                    b.add(s);
                }
                android.content.SharedPreferences.Editor editor = a.edit();
                if (-2 == a.getInt(s, 0))
                {
                    editor.putInt(s, 2);
                } else
                {
                    editor.putInt(s, 1);
                }
                gm.a(editor);
            }
        }
    }

    public boolean a(String s)
    {
        return b.contains(s);
    }

    public void b()
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = b.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            if (b(s))
            {
                arraylist.add(s);
            }
        } while (true);
        b.clear();
        b = arraylist;
    }

    public void b(Context context)
    {
        c(context);
    }
}
