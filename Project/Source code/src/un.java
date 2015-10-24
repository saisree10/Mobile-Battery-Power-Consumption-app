// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import com.dianxinos.feedback.NotifyReceiver;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class un
{

    private static String a = "dev";
    private static ut b;
    private static un c;
    private static ThreadPoolExecutor d;
    private static RejectedExecutionHandler e;
    private static String f = "10.18.102.101";
    private static int g = 4333;
    private Context h;
    private uv i;

    private un(Context context)
    {
        h = context;
        b = new ut(h);
        d = new ThreadPoolExecutor(1, 2, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(10));
        e = new uo(this);
        d.setRejectedExecutionHandler(e);
        i = new uv(h);
    }

    static Context a(un un1)
    {
        return un1.h;
    }

    public static String a()
    {
        return a;
    }

    public static un a(Context context)
    {
        if (c == null)
        {
            c = new un(context);
        }
        return c;
    }

    private void b(String s)
    {
        if ("prod".equals(s))
        {
            f = "fbapi.dxsvr.com";
            g = 80;
        }
        if ("test".equals(s))
        {
            f = "t1.tira.cn";
            g = 8125;
        }
        if ("dev".equals(s))
        {
            f = "10.18.102.101";
            g = 4333;
        }
    }

    static String c()
    {
        return f;
    }

    static int d()
    {
        return g;
    }

    static ut e()
    {
        return b;
    }

    public void a(int j, int k, ur ur1)
    {
        if (k <= 0)
        {
            if (ur1 != null)
            {
                ur1.a(j, 2, null);
            }
            return;
        } else
        {
            d.execute(new up(this, k, ur1, j));
            return;
        }
    }

    public void a(long l, String s)
    {
        i.a(l, s);
    }

    public void a(Context context, Intent intent)
    {
        long l;
label0:
        {
            vt.c("DXFBManager", " OnReceive ~");
            if (intent == null)
            {
                vt.a("DXFBManager", (new StringBuilder()).append(" DXFBManager get intent null ").append(context.getPackageName()).toString());
            }
            if ("com.dianxinos.feedback.CHECK_UPDATE".equals(intent.getAction()) || "android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()))
            {
                l = vu.a(context, NotifyReceiver.a, -1L);
                if (l >= System.currentTimeMillis())
                {
                    break label0;
                }
                a(context).b();
            }
            return;
        }
        a(l, "com.dianxinos.feedback.CHECK_UPDATE");
    }

    public boolean a(String s)
    {
        if ("dev".equals(s) || "test".equals(s) || "prod".equals(s))
        {
            a = s;
            b(s);
            vt.b("DXFBManager", (new StringBuilder()).append(" setMode ok ").append(s).toString());
            h.sendBroadcast(new Intent("com.dianxinos.feedback.FIRST_"));
            return true;
        } else
        {
            return false;
        }
    }

    public void b()
    {
        d.execute(new uq(this));
    }

}
