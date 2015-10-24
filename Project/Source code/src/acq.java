// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public final class acq
{

    private static acq a;
    private static Drawable b;
    private Context c;
    private PackageManager d;
    private ConcurrentHashMap e;
    private ConcurrentHashMap f;
    private ConcurrentHashMap g;
    private String h;
    private Object i;
    private ArrayList j;
    private BroadcastReceiver k;

    private acq()
    {
        i = new Object();
        j = new ArrayList();
        k = new acr(this);
        c = wh.a();
        d = c.getPackageManager();
        e = new ConcurrentHashMap();
        f = new ConcurrentHashMap();
        g = new ConcurrentHashMap();
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE");
        intentfilter.addAction("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE");
        c.registerReceiver(k, intentfilter);
        IntentFilter intentfilter1 = new IntentFilter();
        intentfilter1.addAction("android.intent.action.PACKAGE_ADDED");
        intentfilter1.addAction("android.intent.action.PACKAGE_REPLACED");
        intentfilter1.addAction("android.intent.action.PACKAGE_REMOVED");
        intentfilter1.addAction("android.intent.action.PACKAGE_CHANGED");
        intentfilter1.addDataScheme("package");
        c.registerReceiver(k, intentfilter1);
    }

    public static acn a(String s, boolean flag)
    {
        acn acn1;
        if (flag)
        {
            acn1 = a().d(s);
        } else
        {
            acn1 = a().c(s);
        }
        if (acn1 == null)
        {
            acn1 = new acn(s);
        }
        return acn1;
    }

    public static acq a()
    {
        if (a == null)
        {
            a = new acq();
            b = wh.a().getResources().getDrawable(0x1080093);
        }
        return a;
    }

    private static acs a(acs acs1, String s, String s1, Drawable drawable)
    {
        if (acs1 == null)
        {
            acs1 = a().k(s);
        }
        if (s1 != null)
        {
            acs1.a = s1;
        }
        if (drawable != null)
        {
            acs1.b = new WeakReference(drawable);
            acs1.c = true;
        }
        return acs1;
    }

    public static String a(acn acn1)
    {
        String s = acn1.a;
        acs acs1 = a().l(s);
        String s1 = null;
        if (acs1 != null)
        {
            s1 = acs1.a;
        }
        if (s1 == null)
        {
            return s;
        } else
        {
            return s1;
        }
    }

    static void a(acq acq1)
    {
        acq1.f();
    }

    static void a(acq acq1, Context context, Intent intent)
    {
        acq1.a(context, intent);
    }

    private void a(Context context, Intent intent)
    {
        String as[];
        boolean flag;
        as = intent.getStringArrayExtra("android.intent.extra.changed_package_list");
        if (as == null || as.length == 0)
        {
            return;
        }
        d();
        flag = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE".equals(intent.getAction());
        Object obj = i;
        obj;
        JVM INSTR monitorenter ;
        int i1 = as.length;
        int j1 = 0;
_L2:
        if (j1 >= i1)
        {
            break MISSING_BLOCK_LABEL_123;
        }
        String s;
        acn acn1;
        s = as[j1];
        acn1 = c(s);
        if (acn1 == null)
        {
            break MISSING_BLOCK_LABEL_133;
        }
        acn1.g();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_110;
        }
        f.put(s, acn1);
        break MISSING_BLOCK_LABEL_133;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        f.remove(s);
        break MISSING_BLOCK_LABEL_133;
        obj;
        JVM INSTR monitorexit ;
        a(0, ((String) (null)));
        return;
        j1++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void a(String s, String s1)
    {
        a(a().l(s), s, s1, null);
    }

    public static int b(String s)
    {
        int i1;
        try
        {
            i1 = a().b().getApplicationEnabledSetting(s);
        }
        catch (Exception exception)
        {
            return 2;
        }
        return i1;
    }

    public static Drawable b(acn acn1)
    {
        String s;
        acs acs1;
        s = acn1.a;
        acs1 = a().l(s);
        if (acs1 == null || acs1.b == null) goto _L2; else goto _L1
_L1:
        Drawable drawable = (Drawable)acs1.b.get();
        if (drawable != null && (acs1.c || !acn1.a())) goto _L4; else goto _L3
_L3:
        PackageInfo packageinfo = acn1.c();
        if (packageinfo == null) goto _L4; else goto _L5
_L5:
        Drawable drawable1 = packageinfo.applicationInfo.loadIcon(a().b());
        drawable = drawable1;
_L6:
        if (drawable != null)
        {
            a(acs1, s, null, drawable);
        }
_L4:
        if (drawable == null)
        {
            drawable = b;
        }
        return drawable;
        Exception exception;
        exception;
        if (true) goto _L6; else goto _L2
_L2:
        drawable = null;
        if (true) goto _L3; else goto _L7
_L7:
    }

    public static ArrayList c()
    {
        return a().a(true);
    }

    private void d()
    {
        this;
        JVM INSTR monitorenter ;
        if (e.size() == 0)
        {
            h = wg.a(c).toString();
            e();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static acn e(String s)
    {
        acn acn1 = a().c(s);
        if (acn1 == null)
        {
            throw new android.content.pm.PackageManager.NameNotFoundException((new StringBuilder()).append(s).append(" not found!").toString());
        } else
        {
            return acn1;
        }
    }

    private void e()
    {
        List list;
        List list1;
        ConcurrentHashMap concurrenthashmap;
        ConcurrentHashMap concurrenthashmap1;
        list = d.getInstalledPackages(512);
        list1 = d.getInstalledPackages(8704);
        concurrenthashmap = new ConcurrentHashMap();
        concurrenthashmap1 = new ConcurrentHashMap();
        Object obj = i;
        obj;
        JVM INSTR monitorenter ;
        acn acn1;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); concurrenthashmap.put(acn1.a, acn1))
        {
            acn1 = new acn((PackageInfo)iterator.next());
        }

        break MISSING_BLOCK_LABEL_108;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        concurrenthashmap1.putAll(concurrenthashmap);
        Iterator iterator1 = list1.iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            PackageInfo packageinfo = (PackageInfo)iterator1.next();
            if (!concurrenthashmap.containsKey(packageinfo.packageName))
            {
                acn acn2 = new acn(packageinfo);
                concurrenthashmap.put(acn2.a, acn2);
            }
        } while (true);
        obj;
        JVM INSTR monitorexit ;
        e = concurrenthashmap;
        f = concurrenthashmap1;
        return;
    }

    public static acn f(String s)
    {
        acn acn1 = a().d(s);
        if (acn1 == null)
        {
            throw new android.content.pm.PackageManager.NameNotFoundException((new StringBuilder()).append(s).append(" not found!").toString());
        } else
        {
            return acn1;
        }
    }

    private void f()
    {
        List list;
        ConcurrentHashMap concurrenthashmap;
        list = d.getInstalledPackages(512);
        concurrenthashmap = new ConcurrentHashMap();
        Object obj = i;
        obj;
        JVM INSTR monitorenter ;
        PackageInfo packageinfo;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); concurrenthashmap.put(packageinfo.packageName, e.get(packageinfo.packageName)))
        {
            packageinfo = (PackageInfo)iterator.next();
        }

        break MISSING_BLOCK_LABEL_88;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
        f = concurrenthashmap;
        a(0, ((String) (null)));
        return;
    }

    public static acn g(String s)
    {
        return a(s, false);
    }

    private acs k(String s)
    {
        acs acs1 = new acs(null);
        g.put(s, acs1);
        return acs1;
    }

    private acs l(String s)
    {
        return (acs)g.get(s);
    }

    private void m(String s)
    {
        acs acs1 = (acs)g.get(s);
        if (acs1 != null)
        {
            acs1.c = false;
        }
    }

    PackageInfo a(String s)
    {
        PackageInfo packageinfo1;
        try
        {
            packageinfo1 = d.getPackageInfo(s, 576);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            PackageInfo packageinfo;
            try
            {
                packageinfo = d.getPackageInfo(s, 8768);
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception1)
            {
                return null;
            }
            return packageinfo;
        }
        return packageinfo1;
    }

    public ArrayList a(boolean flag)
    {
        d();
        Object obj = i;
        obj;
        JVM INSTR monitorenter ;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        ArrayList arraylist1 = new ArrayList(e.values());
        obj;
        JVM INSTR monitorexit ;
        return arraylist1;
        ArrayList arraylist;
        arraylist = new ArrayList();
        Iterator iterator = e.values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            acn acn1 = (acn)iterator.next();
            if (acn1.b())
            {
                arraylist.add(acn1);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_105;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
        return arraylist;
    }

    public void a(int i1, String s)
    {
        ArrayList arraylist1;
        synchronized (j)
        {
            arraylist1 = new ArrayList(j);
        }
        for (Iterator iterator = arraylist1.iterator(); iterator.hasNext(); ((act)iterator.next()).a(i1, s)) { }
        break MISSING_BLOCK_LABEL_66;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public PackageManager b()
    {
        return d;
    }

    public acn c(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return null;
        } else
        {
            d();
            return (acn)e.get(s);
        }
    }

    public acn d(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return null;
        } else
        {
            d();
            return (acn)f.get(s);
        }
    }

    public void h(String s)
    {
        d();
        PackageInfo packageinfo = a(s);
        if (packageinfo == null)
        {
            return;
        }
        synchronized (i)
        {
            acn acn1 = new acn(packageinfo);
            e.put(acn1.a, acn1);
            if (acn1.f() > 0L)
            {
                f.put(acn1.a, acn1);
            }
        }
        a(1, s);
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void i(String s)
    {
        d();
        synchronized (i)
        {
            e.remove(s);
            f.remove(s);
            m(s);
        }
        a(2, s);
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void j(String s)
    {
        d();
        Object obj = i;
        obj;
        JVM INSTR monitorenter ;
        PackageInfo packageinfo;
        e.remove(s);
        f.remove(s);
        m(s);
        packageinfo = a(s);
        if (packageinfo != null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        boolean flag;
        acn acn1 = new acn(packageinfo);
        flag = acn1.c;
        e.put(acn1.a, acn1);
        if (acn1.f() > 0L)
        {
            f.put(acn1.a, acn1);
        }
        obj;
        JVM INSTR monitorexit ;
        a(3, s);
        Exception exception;
        if (flag)
        {
            a(4, s);
            return;
        } else
        {
            return;
        }
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
