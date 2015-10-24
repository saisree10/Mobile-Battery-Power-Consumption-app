// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import java.net.URI;
import java.util.List;

public class pa
{

    public static boolean a = false;
    private static int b = 1;
    private static pd c;
    private static pa d;
    private static boolean f = true;
    private static boolean g = false;
    private static int h = 500;
    private static final Object i = new Object();
    private ny e;
    private Context j;

    private pa(Context context)
    {
        j = context;
        e = nq.a(context, oq.a(context));
        b(context);
    }

    public static pa a(Context context)
    {
        pa;
        JVM INSTR monitorenter ;
        pa pa1;
        if (d == null)
        {
            d = new pa(context.getApplicationContext());
        }
        pa1 = d;
        pa;
        JVM INSTR monitorexit ;
        return pa1;
        Exception exception;
        exception;
        throw exception;
    }

    public static void a(int k)
    {
        if (d != null)
        {
            throw new IllegalStateException("Call this method befor getInstance()");
        } else
        {
            b = k;
            return;
        }
    }

    public static void a(Context context, Intent intent)
    {
        if (context == null || intent == null)
        {
            nz.b("ToolboxManager", "Params error.");
        } else
        {
            if (!om.b(context))
            {
                nz.b("ToolboxManager", "Not need show toolbox!");
                return;
            }
            String s = intent.getAction();
            if (!"android.intent.action.PACKAGE_ADDED".equals(s))
            {
                nz.b("ToolboxManager", (new StringBuilder()).append("Not ACTION_PACKAGE_ADDED: ").append(s).toString());
                return;
            }
            boolean flag = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
            nz.b("ToolboxManager", (new StringBuilder()).append("ACTION_PACKAGE_ADDED, replaceing? ").append(flag).toString());
            if (!flag)
            {
                String s1 = URI.create(intent.getDataString()).getSchemeSpecificPart();
                oq oq1 = oq.a(context);
                ns ns1 = oq1.g(s1);
                if (ns1 == null)
                {
                    nz.b("ToolboxManager", "Non-click item, skip.");
                    return;
                }
                if (System.currentTimeMillis() - ns1.h < 0x5265c00L)
                {
                    op.a(context, ns1);
                    if (d() && ns1.e > 0)
                    {
                        oq1.i(s1);
                        a(context, ns1);
                    }
                }
                if (!d() || ns1.e <= 0)
                {
                    oq1.h(s1);
                    return;
                }
            }
        }
    }

    public static void a(Context context, ns ns1)
    {
        pg.a().a(new pb(ns1, context));
    }

    public static void a(String s)
    {
        if (!"prod".equals(s)) goto _L2; else goto _L1
_L1:
        a = false;
_L4:
        kl.a(s);
        nz.a(a);
        return;
_L2:
        if ("dev".equals(s))
        {
            a = true;
        } else
        if ("test".equals(s))
        {
            a = true;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static void a(pa pa1, boolean flag)
    {
        pa1.b(flag);
    }

    public static void a(boolean flag)
    {
        g = flag;
    }

    public static boolean a()
    {
        return c == pd.b;
    }

    public static int b()
    {
        return b;
    }

    private void b(Context context)
    {
        ov.a().a(context);
    }

    public static void b(Context context, Intent intent)
    {
        if (context == null || intent == null)
        {
            nz.b("ToolboxManager", "Params error.");
            return;
        }
        if (!om.b(context))
        {
            nz.b("ToolboxManager", "Not need show toolbox!");
            return;
        }
        String s = intent.getAction();
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(s))
        {
            nz.b("ToolboxManager", (new StringBuilder()).append("Not CONNECTIVITY_ACTION: ").append(s).toString());
            return;
        }
        int k = oa.a(context);
        if (k == 0)
        {
            nz.b("ToolboxManager", (new StringBuilder()).append("Not active network: ").append(k).toString());
            return;
        } else
        {
            nz.b("ToolboxManager", "Connectivity action received!");
            pg.a().a(new pc(context));
            return;
        }
    }

    private void b(boolean flag)
    {
        e.a(flag);
    }

    public static boolean c()
    {
        return f;
    }

    public static boolean d()
    {
        return g;
    }

    static int f()
    {
        return h;
    }

    static Object g()
    {
        return i;
    }

    public void b(String s)
    {
        e.b(s);
    }

    public void c(String s)
    {
        od od1 = new od(s);
        od1.a(true);
        od1.b(true);
        od1.a(0x7fffffff);
        e.b(od1);
    }

    public List d(String s)
    {
        return oq.a(j).b(s);
    }

    public void e()
    {
        e.a(true);
    }

    static 
    {
        c = pd.b;
    }
}
