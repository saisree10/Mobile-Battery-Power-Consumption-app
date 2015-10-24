// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Bundle;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class ah extends af
{

    static boolean a = false;
    final by b = new by();
    final by c = new by();
    final String d;
    n e;
    boolean f;
    boolean g;
    boolean h;

    ah(String s, n n, boolean flag)
    {
        d = s;
        e = n;
        f = flag;
    }

    private ai b(int i, Bundle bundle, ag ag1)
    {
        ai ai1 = new ai(this, i, bundle, ag1);
        ai1.d = ag1.onCreateLoader(i, bundle);
        return ai1;
    }

    private ai c(int i, Bundle bundle, ag ag1)
    {
        ai ai1;
        h = true;
        ai1 = b(i, bundle, ag1);
        a(ai1);
        h = false;
        return ai1;
        Exception exception;
        exception;
        h = false;
        throw exception;
    }

    public ba a(int i, Bundle bundle, ag ag1)
    {
        if (h)
        {
            throw new IllegalStateException("Called while creating a loader");
        }
        ai ai1 = (ai)b.a(i);
        if (a)
        {
            Log.v("LoaderManager", (new StringBuilder()).append("initLoader in ").append(this).append(": args=").append(bundle).toString());
        }
        if (ai1 == null)
        {
            ai1 = c(i, bundle, ag1);
            if (a)
            {
                Log.v("LoaderManager", (new StringBuilder()).append("  Created new loader ").append(ai1).toString());
            }
        } else
        {
            if (a)
            {
                Log.v("LoaderManager", (new StringBuilder()).append("  Re-using existing loader ").append(ai1).toString());
            }
            ai1.c = ag1;
        }
        if (ai1.e && f)
        {
            ai1.b(ai1.d, ai1.g);
        }
        return ai1.d;
    }

    void a(ai ai1)
    {
        b.b(ai1.a, ai1);
        if (f)
        {
            ai1.a();
        }
    }

    public void a(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        int i = 0;
        if (b.b() > 0)
        {
            printwriter.print(s);
            printwriter.println("Active Loaders:");
            String s2 = (new StringBuilder()).append(s).append("    ").toString();
            for (int j = 0; j < b.b(); j++)
            {
                ai ai2 = (ai)b.e(j);
                printwriter.print(s);
                printwriter.print("  #");
                printwriter.print(b.d(j));
                printwriter.print(": ");
                printwriter.println(ai2.toString());
                ai2.a(s2, filedescriptor, printwriter, as);
            }

        }
        if (c.b() > 0)
        {
            printwriter.print(s);
            printwriter.println("Inactive Loaders:");
            String s1 = (new StringBuilder()).append(s).append("    ").toString();
            for (; i < c.b(); i++)
            {
                ai ai1 = (ai)c.e(i);
                printwriter.print(s);
                printwriter.print("  #");
                printwriter.print(c.d(i));
                printwriter.print(": ");
                printwriter.println(ai1.toString());
                ai1.a(s1, filedescriptor, printwriter, as);
            }

        }
    }

    void a(n n)
    {
        e = n;
    }

    public boolean a()
    {
        int i = b.b();
        int j = 0;
        boolean flag = false;
        while (j < i) 
        {
            ai ai1 = (ai)b.e(j);
            boolean flag1;
            if (ai1.h && !ai1.f)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            flag |= flag1;
            j++;
        }
        return flag;
    }

    public void b()
    {
        if (a)
        {
            Log.v("LoaderManager", (new StringBuilder()).append("Starting in ").append(this).toString());
        }
        if (f)
        {
            RuntimeException runtimeexception = new RuntimeException("here");
            runtimeexception.fillInStackTrace();
            Log.w("LoaderManager", (new StringBuilder()).append("Called doStart when already started: ").append(this).toString(), runtimeexception);
        } else
        {
            f = true;
            int i = -1 + b.b();
            while (i >= 0) 
            {
                ((ai)b.e(i)).a();
                i--;
            }
        }
    }

    public void c()
    {
        if (a)
        {
            Log.v("LoaderManager", (new StringBuilder()).append("Stopping in ").append(this).toString());
        }
        if (!f)
        {
            RuntimeException runtimeexception = new RuntimeException("here");
            runtimeexception.fillInStackTrace();
            Log.w("LoaderManager", (new StringBuilder()).append("Called doStop when not started: ").append(this).toString(), runtimeexception);
            return;
        }
        for (int i = -1 + b.b(); i >= 0; i--)
        {
            ((ai)b.e(i)).e();
        }

        f = false;
    }

    public void d()
    {
        if (a)
        {
            Log.v("LoaderManager", (new StringBuilder()).append("Retaining in ").append(this).toString());
        }
        if (!f)
        {
            RuntimeException runtimeexception = new RuntimeException("here");
            runtimeexception.fillInStackTrace();
            Log.w("LoaderManager", (new StringBuilder()).append("Called doRetain when not started: ").append(this).toString(), runtimeexception);
        } else
        {
            g = true;
            f = false;
            int i = -1 + b.b();
            while (i >= 0) 
            {
                ((ai)b.e(i)).b();
                i--;
            }
        }
    }

    void e()
    {
        if (g)
        {
            if (a)
            {
                Log.v("LoaderManager", (new StringBuilder()).append("Finished Retaining in ").append(this).toString());
            }
            g = false;
            for (int i = -1 + b.b(); i >= 0; i--)
            {
                ((ai)b.e(i)).c();
            }

        }
    }

    public void f()
    {
        for (int i = -1 + b.b(); i >= 0; i--)
        {
            ((ai)b.e(i)).k = true;
        }

    }

    public void g()
    {
        for (int i = -1 + b.b(); i >= 0; i--)
        {
            ((ai)b.e(i)).d();
        }

    }

    public void h()
    {
        if (!g)
        {
            if (a)
            {
                Log.v("LoaderManager", (new StringBuilder()).append("Destroying Active in ").append(this).toString());
            }
            for (int j = -1 + b.b(); j >= 0; j--)
            {
                ((ai)b.e(j)).f();
            }

            b.c();
        }
        if (a)
        {
            Log.v("LoaderManager", (new StringBuilder()).append("Destroying Inactive in ").append(this).toString());
        }
        for (int i = -1 + c.b(); i >= 0; i--)
        {
            ((ai)c.e(i)).f();
        }

        c.c();
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(128);
        stringbuilder.append("LoaderManager{");
        stringbuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringbuilder.append(" in ");
        bo.a(e, stringbuilder);
        stringbuilder.append("}}");
        return stringbuilder.toString();
    }

}
