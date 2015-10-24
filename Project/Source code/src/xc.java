// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import com.dianxinos.optimizer.analysis.PerformanceMonitorService;
import java.util.Random;
import org.json.JSONObject;

public class xc
{

    public static int a()
    {
        return 2;
    }

    public static JSONObject a(long l)
    {
        return ws.a().d(l);
    }

    public static void a(Context context)
    {
        if (b(context))
        {
            ws.a().b();
            PerformanceMonitorService.a(context);
            if (!wl.c(context))
            {
                wl.a(context, true);
            }
        }
    }

    public static JSONObject b(long l)
    {
        return ws.a().a(l);
    }

    public static boolean b()
    {
        return (0x10 & a()) == 16;
    }

    public static boolean b(Context context)
    {
        return wl.a(context);
    }

    public static JSONObject c(long l)
    {
        return ws.a().b(l);
    }

    public static void c(Context context)
    {
        long l;
        if (wk.a(context))
        {
            if ((l = System.currentTimeMillis()) >= 0x5265c00L + wl.a(context, 0L))
            {
                if (1 + (new Random(l)).nextInt(7) == 4)
                {
                    if (d())
                    {
                        JSONObject jsonobject3 = a(l);
                        if (jsonobject3 != null && jsonobject3.length() != 0)
                        {
                            bal.a("resource", jsonobject3, 2);
                        }
                    }
                    if (e())
                    {
                        JSONObject jsonobject2 = c(l);
                        if (jsonobject2 != null && jsonobject2.length() != 0)
                        {
                            bal.a("resource", jsonobject2, 2);
                        }
                    }
                    if (c())
                    {
                        JSONObject jsonobject1 = d(l);
                        if (jsonobject1 != null && jsonobject1.length() != 0)
                        {
                            bal.a("resource", jsonobject1, 2);
                        }
                    }
                }
                if (f() && l - wl.c(context, 0L) > 0x240c8400L)
                {
                    JSONObject jsonobject = b(l);
                    if (jsonobject != null && jsonobject.length() != 0)
                    {
                        bal.a("resource", jsonobject, 2);
                    }
                }
                wl.d(context, xi.n(l));
                wl.b(context, l);
                return;
            }
        }
    }

    public static boolean c()
    {
        return (1 & a()) == 1;
    }

    public static JSONObject d(long l)
    {
        return ws.a().c(l);
    }

    public static boolean d()
    {
        return (2 & a()) == 2;
    }

    public static boolean e()
    {
        return (4 & a()) == 4;
    }

    public static boolean f()
    {
        return (8 & a()) == 8;
    }
}
