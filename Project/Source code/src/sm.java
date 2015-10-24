// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;

public final class sm
{

    private static String a;
    private static Context b;
    private static sj c;
    private static boolean d;
    private static int e;
    private static boolean f;
    private final Runnable g = new sn(this);
    private final Runnable h = new so(this);
    private IntentFilter i;
    private BroadcastReceiver j;

    public sm(Context context)
    {
        i = null;
        j = null;
        b = context.getApplicationContext();
        c = new sj(b, "z");
        a = ui.a(context).a();
        e = 0;
        f = false;
    }

    private void a(String s)
    {
        Iterator iterator = ub.a(s).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            sr sr1 = (sr)iterator.next();
            if (!ub.a(sr1) && a(sr1))
            {
                if (ud.b)
                {
                    Log.d("stat.AppInfoService", (new StringBuilder()).append("Success to putToDB with token : ").append(a).append(" packageName: ").append(sr1.a()).toString());
                }
                ub.b(sr1);
            }
        } while (true);
    }

    static void a(sm sm1, String s)
    {
        sm1.a(s);
    }

    static boolean a(sm sm1)
    {
        return sm1.i();
    }

    static boolean a(sm sm1, sr sr1)
    {
        return sm1.a(sr1);
    }

    private boolean a(sr sr1)
    {
        td td1 = b(sr1);
        boolean flag;
        try
        {
            flag = c.a(td1);
        }
        catch (Exception exception)
        {
            if (ud.d)
            {
                Log.e("stat.AppInfoService", "Failed to push DbAppInfo into Datebase!", exception);
            }
            return false;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        if (ud.b)
        {
            Log.d("stat.AppInfoService", (new StringBuilder()).append("Success to putToDB with token : ").append(a).append(" packageName: ").append(sr1.a()).toString());
        }
        return flag;
    }

    static boolean a(boolean flag)
    {
        f = flag;
        return flag;
    }

    private td b(sr sr1)
    {
        String s = tg.a(b);
        if (s == null)
        {
            return null;
        }
        String s1 = tg.a();
        String s2 = te.a(s1, s);
        android.content.ContentResolver contentresolver = b.getContentResolver();
        String s3 = android.provider.Settings.System.getString(contentresolver, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PK}");
        e = android.provider.Settings.System.getInt(contentresolver, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PV}", 0);
        if (s3 != null && !s3.equals(s))
        {
            c.a(e);
        }
        if (s3 == null || !s3.equals(s))
        {
            android.provider.Settings.System.putString(contentresolver, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PK}", s);
            int k = 1 + e;
            e = k;
            android.provider.Settings.System.putInt(contentresolver, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PV}", k);
        }
        return new td(sr1, s2, a, e, s1);
    }

    static boolean d()
    {
        return f;
    }

    static sj e()
    {
        return c;
    }

    private void f()
    {
        if (i == null)
        {
            i = new IntentFilter("android.intent.action.PACKAGE_ADDED");
            i.addAction("android.intent.action.PACKAGE_REMOVED");
            i.addAction("android.intent.action.PACKAGE_REPLACED");
            i.addDataScheme("package");
        }
        if (j == null)
        {
            j = new sp(this);
        }
        b.registerReceiver(j, i);
    }

    private void g()
    {
        if (j != null)
        {
            b.unregisterReceiver(j);
        }
    }

    private boolean h()
    {
        Long long1 = Long.valueOf(b.getSharedPreferences("rt", 0).getLong("al", -1L));
        if (c == null || c.a() <= 20480) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (System.currentTimeMillis() - long1.longValue() <= 0x48190800L)
        {
            break; /* Loop/switch isn't completed */
        }
        if (c != null && !c.b())
        {
            continue; /* Loop/switch isn't completed */
        }
        j();
        break; /* Loop/switch isn't completed */
        if (true) goto _L1; else goto _L3
_L3:
        return false;
    }

    private boolean i()
    {
        if (ud.a(b)) goto _L2; else goto _L1
_L1:
        if (ud.b)
        {
            Log.d("stat.AppInfoService", "Network is unavailable!");
        }
_L4:
        return false;
_L2:
        sk sk1;
        boolean flag;
        String s = ud.a("appInfo", b);
        sk1 = c.b(1000);
        String s1 = tn.b(sk1.a());
        ArrayList arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("token", a));
        String s2 = tg.a(b);
        String s3 = te.a(tg.a(), s2);
        arraylist.add(new BasicNameValuePair("pu", s2));
        arraylist.add(new BasicNameValuePair("ci", s3));
        arraylist.add(new BasicNameValuePair("ap", te.a(s1, tg.b())));
        flag = (new ug(b, s, "DXStatisticAppInfo", "stat.AppInfoService")).a(arraylist);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_283;
        }
        if (ud.b)
        {
            Log.d("stat.AppInfoService", (new StringBuilder()).append("Success to reportAppInfo with maxRowId :").append(sk1.b()).toString());
        }
        c.a(sk1.b());
        android.content.SharedPreferences.Editor editor = b.getSharedPreferences("rt", 0).edit();
        editor.putLong("al", System.currentTimeMillis());
        editor.commit();
        return flag;
        Exception exception;
        exception;
        if (ud.d)
        {
            Log.e("stat.AppInfoService", "Can not report AppInfo!", exception);
            return false;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void j()
    {
        a(new sr(b, "beat"));
    }

    public void a()
    {
        if (ud.b)
        {
            Log.i("stat.AppInfoService", "Start!");
        }
        ub.a(b);
        d = ud.b(b);
        if (!d)
        {
            if (ud.b)
            {
                Log.i("stat.AppInfoService", "Not the app to report!");
            }
            return;
        }
        if (c != null && !c.b())
        {
            uf.a(h);
        }
        uf.a(g);
        f();
    }

    public void b()
    {
        if (!d)
        {
            return;
        }
        if (ud.b)
        {
            Log.d("stat.AppInfoService", "Shutdown!");
        }
        g();
        ud.c(b);
    }

    public void c()
    {
        if (h())
        {
            uf.a(h);
        }
    }
}
