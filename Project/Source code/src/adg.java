// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;

public class adg
{

    private int a;
    private SharedPreferences b;
    private boolean c;
    private Context d;
    private AlarmManager e;
    private PendingIntent f;
    private long g;
    private long h;
    private int i;
    private long j;
    private int k;
    private int l;
    private int m;
    private aff n;
    private b o;

    public adg(Context context, b b1)
    {
        c = false;
        if (!azf.q() || azf.b)
        {
            return;
        } else
        {
            c = true;
            d = context;
            b = d.getSharedPreferences("battery_fix_config", 0);
            a = b.getInt("fixed_percent", -1);
            e = (AlarmManager)d.getSystemService("alarm");
            n = aff.a(d);
            o = b1;
            return;
        }
    }

    private void a()
    {
        if (f != null)
        {
            e.cancel(f);
            f = null;
        }
    }

    private void a(int i1, int j1, boolean flag)
    {
        long l1 = o.a();
        if (l == i1)
        {
            long l2 = l1 - j;
            int k1 = h != 0L;
            float f1 = 0.0F;
            if (k1 != 0)
            {
                f1 = (float)l2 / (float)h;
            }
            if (flag)
            {
                h = 1000 * (j1 / (100 - i1));
            } else
            {
                h = 1000 * (j1 / i1);
            }
            g = l1 + (long)((float)h * (1.0F - f1));
        } else
        {
            l = i1;
            if (flag)
            {
                h = 1000 * (j1 / (100 - i1));
            } else
            {
                h = 1000 * (j1 / i1);
            }
            g = l1 + h;
            j = l1;
        }
        i = j1 - (int)(h / 1000L);
    }

    private void a(boolean flag)
    {
        a();
        Intent intent = new Intent("com.dianxinos.dxbs.BATTERY_UPDATE");
        intent.putExtra("percent", m);
        intent.putExtra("fix_time", i);
        f = PendingIntent.getBroadcast(d, 0, intent, 0x8000000);
        e.set(3, g, f);
    }

    private boolean a(int i1, boolean flag, boolean flag1)
    {
        if ((i1 < 100 || !flag1) && (i1 > 1 || flag1))
        {
            if (flag)
            {
                m = i1 + 1;
            } else
            {
                m = i1 - 1;
            }
            if ((m >= 20 || m % 5 != 0) && (m < 20 || m % 10 != 0))
            {
                return true;
            }
        }
        return false;
    }

    public void a(int i1)
    {
        if (!c)
        {
            return;
        } else
        {
            a = i1;
            android.content.SharedPreferences.Editor editor = b.edit();
            editor.putInt("fixed_percent", a);
            gm.a(editor);
            return;
        }
    }

    public void a(int i1, int j1, int k1, boolean flag, boolean flag1)
    {
        if (!c)
        {
            return;
        }
        boolean flag2 = n.g();
        if (k != k1)
        {
            j = o.a();
            h = 0L;
        }
        k = k1;
        if (a(i1, flag2, flag1))
        {
            a(i1, j1, flag);
            a(flag2);
            return;
        } else
        {
            a();
            return;
        }
    }
}
