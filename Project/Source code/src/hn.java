// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class hn
{

    private static hn a;
    private hb b;
    private long c;
    private Object d;
    private Context e;
    private hk f;

    public hn(Context context)
    {
        d = new Object();
        f = new ho(this);
        String s = im.b(context, "dxad_c.s");
        if (!TextUtils.isEmpty(s))
        {
            b = new hb(s, 0);
        }
        e = context;
    }

    public static int a(Context context, long l)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("ad_check_dx", 0).edit();
        editor.putLong("pref_key_ad_next_rtc", l);
        editor.commit();
        PendingIntent pendingintent = PendingIntent.getBroadcast(context, 0x131228, new Intent("com.dianxinos.acomponent.CHECK_"), 0x8000000);
        ((AlarmManager)context.getSystemService("alarm")).set(1, l, pendingintent);
        return 0;
    }

    private int a(Context context, String s)
    {
        return im.a(context, s, "dxad_c.s");
    }

    static int a(hn hn1, Context context)
    {
        return hn1.h(context);
    }

    static Context a(hn hn1)
    {
        return hn1.e;
    }

    private void b()
    {
        in.b("ADCheckManager", (new StringBuilder()).append(" setAlarm for show ").append(b.b.i).toString());
        if (b.b.i > 0L)
        {
            Intent intent = new Intent("com.dianxinos.acomponent.NOTIFICATION_CHECK");
            PendingIntent pendingintent = PendingIntent.getBroadcast(e, 0x148647, intent, 0x8000000);
            ((AlarmManager)e.getSystemService("alarm")).set(1, System.currentTimeMillis() + 1000L * (60L * b.b.i), pendingintent);
        }
    }

    public static hn c(Context context)
    {
        if (a == null)
        {
            a = new hn(context);
        }
        return a;
    }

    private void d(Context context)
    {
        ip.b(context, "show_notification_flag", 1);
        if (iq.b(context))
        {
            hj.a(context).a(f);
            hj.a(context).a(b, 0);
            ip.b(context, "show_notification_flag", -1);
        }
    }

    private boolean e(Context context)
    {
        for (Iterator iterator = b.b.j.iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            if (iq.a(context, s))
            {
                in.b("ADCheckManager", (new StringBuilder()).append(" find black pkg not show notification").append(s).toString());
                return true;
            }
        }

        return false;
    }

    private void f(Context context)
    {
        if (ij.a)
        {
            in.b("ADCheckManager", " cancel other showing one. ");
        }
        Intent intent = new Intent("com.dianxinos.acomponent.CANCEL_SP");
        intent.putExtra("id", b.b.b);
        intent.putExtra("from", il.i(context));
        context.sendBroadcast(intent);
    }

    private int g(Context context)
    {
        in.b("ADCheckManager", "try , removeContentApkCantBeInstalled ");
        if (b == null || b.b == null)
        {
            return 0;
        }
        hd ahd[] = b.b.m;
        if (ahd == null)
        {
            return 0;
        }
        int j = ahd.length;
        ArrayList arraylist = new ArrayList();
        int k = 0;
        int l = 0;
        while (k < j) 
        {
            hd hd1 = ahd[k];
            int i1;
            hd ahd1[];
            int j1;
            int k1;
            if (hd1.i == 1)
            {
                String s = hd1.f;
                int l1 = hd1.e;
                int i2 = iq.b(context, s);
                in.b("ADCheckManager", (new StringBuilder()).append(" local : ").append(i2).append("   ad version : ").append(l1).toString());
                if (i2 < l1)
                {
                    arraylist.add(hd1);
                    k1 = l;
                } else
                {
                    ahd[k] = null;
                    k1 = l + 1;
                }
            } else
            {
                k1 = l;
            }
            k++;
            l = k1;
        }
        i1 = arraylist.size();
        ahd1 = null;
        j1 = 0;
        if (i1 != 0)
        {
            ahd1 = new hd[arraylist.size()];
            j1 = 0;
        }
        for (; j1 < i1; j1++)
        {
            ahd1[j1] = (hd)arraylist.get(j1);
        }

        b.b.m = ahd1;
        return l;
    }

    private int h(Context context)
    {
label0:
        {
            in.b("ADCheckManager", " ok , ==========================  show status bar notification. ");
            int j;
            ic ic2;
            boolean flag;
            try
            {
                ic ic1 = new ic(context);
                ic1.b();
                flag = ic1.a;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
                j = -1;
                break label0;
            }
            Exception exception1;
            if (flag)
            {
                j = 0;
            } else
            {
                j = -1;
            }
        }
        in.b("ADCheckManager", (new StringBuilder()).append(" luancher ok : ").append(j).toString());
        if (j == -1)
        {
            try
            {
                ic2 = new ic(context);
                ic2.a();
                ic2.b();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception1)
            {
                exception1.printStackTrace();
                j = -1;
            }
        }
        if (j == 0)
        {
            i(context);
            ip.b(context, "show_notification_flag", -1);
        }
        return j;
    }

    private void i(Context context)
    {
        int j = ij.a(context, "key_ad_success_today");
        if (j < 0)
        {
            j = 0;
        }
        ij.a(context, "key_ad_success_today", j + 1);
        hs.a(context).a("pn", null);
    }

    public int a(Context context)
    {
        SharedPreferences sharedpreferences = context.getSharedPreferences("ad_check_dx", 0);
        if (sharedpreferences == null)
        {
            return -1;
        }
        long l = sharedpreferences.getLong("pref_key_ad_next_rtc", -1L);
        long l1 = System.currentTimeMillis();
        if (l == -1L)
        {
            in.b("ADCheckManager", " delay 5 min for first time installed");
            a(context, 0x493e0L + l1);
            return -1;
        }
        if (l1 > l)
        {
            in.b("ADCheckManager", " got it . DO it! ");
            return 1;
        } else
        {
            in.b("ADCheckManager", (new StringBuilder()).append(" not yet.  ").append((l - l1) / 60000L).append("   mins to wait before next check.").toString());
            in.b("ADCheckManager", (new StringBuilder()).append(" cur : ").append(l1).append(" next time ").append(l).toString());
            return -1;
        }
    }

    public int a(Context context, boolean flag)
    {
        long l = System.currentTimeMillis();
        long _tmp = l + 0xdbba00L;
        long l1;
        if (flag)
        {
            if (b.b.e > 0L)
            {
                in.b("ADCheckManager", (new StringBuilder()).append(" got iterval for next : ").append(b.b.e).toString());
                l1 = l + b.b.e;
                in.b("ADCheckManager", (new StringBuilder()).append(" save next check time : ").append(l1).toString());
            } else
            {
                l1 = l + 0xdbba00L;
            }
        } else
        {
            l1 = l + 0xdbba00L;
        }
        return a(context, l1);
    }

    public hb a()
    {
        return b;
    }

    public void a(Context context, boolean flag, boolean flag1)
    {
        if (b != null && b.a())
        {
            if (g(context) > 0)
            {
                in.b("ADCheckManager", " removed content not for show");
            }
            im.a(context);
            if (b.b.c(context) == 1 && !e(context))
            {
                f(context);
                in.b("ADCheckManager", (new StringBuilder()).append(" delayflag ").append(flag).append(" alldelaytime ").append(b.b.i).toString());
                if (flag && b.b.i > 0L)
                {
                    d(context);
                } else
                {
                    h(context);
                }
                if (flag1)
                {
                    b();
                }
            }
        }
    }

    public int b(Context context)
    {
        in.b("ADCheckManager", (new StringBuilder()).append(" 1do check from package:  ").append(context.getPackageName()).toString());
        this;
        JVM INSTR monitorenter ;
        long l;
        long l1;
        l = 0x493e0L + c;
        l1 = System.currentTimeMillis();
        if (l1 >= l)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        in.b("ADCheckManager", " , some other check working found . !");
        this;
        JVM INSTR monitorexit ;
        return -1;
        c = l1;
        this;
        JVM INSTR monitorexit ;
        Log.d("BroadCastReceiver424 ", "do post  ");
        HashMap hashmap = new HashMap();
        Exception exception;
        String s;
        hb hb1;
        boolean flag;
        if (hq.a() == "dev")
        {
            il.b(context, hashmap);
        } else
        {
            il.a(context, hashmap);
        }
        if (ij.a && ij.b)
        {
            il.b(context, hashmap);
        }
        s = hq.a(context).a(hashmap);
        b = null;
        if (!TextUtils.isEmpty(s))
        {
            b = new hb(s, 0);
        }
        im.c(context, "dxad_c.s");
        hb1 = b;
        flag = false;
        if (hb1 != null)
        {
            boolean flag1 = b.a();
            flag = false;
            if (flag1)
            {
                flag = true;
            }
        }
        a(context, flag);
        if (flag)
        {
            a(context, b.toString());
            a(context, true, true);
        }
        c = 0L;
        return -2;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
