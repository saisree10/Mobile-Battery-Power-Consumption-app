// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Bundle;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

final class ai
    implements bb
{

    final int a;
    final Bundle b;
    ag c;
    ba d;
    boolean e;
    boolean f;
    Object g;
    boolean h;
    boolean i;
    boolean j;
    boolean k;
    boolean l;
    boolean m;
    ai n;
    final ah o;

    public ai(ah ah1, int i1, Bundle bundle, ag ag1)
    {
        o = ah1;
        super();
        a = i1;
        b = bundle;
        c = ag1;
    }

    void a()
    {
        if (i && j)
        {
            h = true;
        } else
        if (!h)
        {
            h = true;
            if (ah.a)
            {
                Log.v("LoaderManager", (new StringBuilder()).append("  Starting: ").append(this).toString());
            }
            if (d == null && c != null)
            {
                d = c.onCreateLoader(a, b);
            }
            if (d != null)
            {
                if (d.getClass().isMemberClass() && !Modifier.isStatic(d.getClass().getModifiers()))
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("Object returned from onCreateLoader must not be a non-static inner member class: ").append(d).toString());
                }
                if (!m)
                {
                    d.registerListener(a, this);
                    m = true;
                }
                d.startLoading();
                return;
            }
        }
    }

    public void a(ba ba1, Object obj)
    {
        if (ah.a)
        {
            Log.v("LoaderManager", (new StringBuilder()).append("onLoadComplete: ").append(this).toString());
        }
        if (!l) goto _L2; else goto _L1
_L1:
        if (ah.a)
        {
            Log.v("LoaderManager", "  Ignoring load complete -- destroyed");
        }
_L4:
        return;
_L2:
        if (o.b.a(a) == this)
        {
            break; /* Loop/switch isn't completed */
        }
        if (ah.a)
        {
            Log.v("LoaderManager", "  Ignoring load complete -- not active");
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        ai ai1 = n;
        if (ai1 != null)
        {
            if (ah.a)
            {
                Log.v("LoaderManager", (new StringBuilder()).append("  Switching to pending loader: ").append(ai1).toString());
            }
            n = null;
            o.b.b(a, null);
            f();
            o.a(ai1);
            return;
        }
        if (g != obj || !e)
        {
            g = obj;
            e = true;
            if (h)
            {
                b(ba1, obj);
            }
        }
        ai ai2 = (ai)o.c.a(a);
        if (ai2 != null && ai2 != this)
        {
            ai2.f = false;
            ai2.f();
            o.c.c(a);
        }
        if (o.e != null && !o.a())
        {
            o.e.b.d();
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public void a(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        printwriter.print(s);
        printwriter.print("mId=");
        printwriter.print(a);
        printwriter.print(" mArgs=");
        printwriter.println(b);
        printwriter.print(s);
        printwriter.print("mCallbacks=");
        printwriter.println(c);
        printwriter.print(s);
        printwriter.print("mLoader=");
        printwriter.println(d);
        if (d != null)
        {
            d.dump((new StringBuilder()).append(s).append("  ").toString(), filedescriptor, printwriter, as);
        }
        if (e || f)
        {
            printwriter.print(s);
            printwriter.print("mHaveData=");
            printwriter.print(e);
            printwriter.print("  mDeliveredData=");
            printwriter.println(f);
            printwriter.print(s);
            printwriter.print("mData=");
            printwriter.println(g);
        }
        printwriter.print(s);
        printwriter.print("mStarted=");
        printwriter.print(h);
        printwriter.print(" mReportNextStart=");
        printwriter.print(k);
        printwriter.print(" mDestroyed=");
        printwriter.println(l);
        printwriter.print(s);
        printwriter.print("mRetaining=");
        printwriter.print(i);
        printwriter.print(" mRetainingStarted=");
        printwriter.print(j);
        printwriter.print(" mListenerRegistered=");
        printwriter.println(m);
        if (n != null)
        {
            printwriter.print(s);
            printwriter.println("Pending Loader ");
            printwriter.print(n);
            printwriter.println(":");
            n.a((new StringBuilder()).append(s).append("  ").toString(), filedescriptor, printwriter, as);
        }
    }

    void b()
    {
        if (ah.a)
        {
            Log.v("LoaderManager", (new StringBuilder()).append("  Retaining: ").append(this).toString());
        }
        i = true;
        j = h;
        h = false;
        c = null;
    }

    void b(ba ba1, Object obj)
    {
        if (c == null)
        {
            break MISSING_BLOCK_LABEL_134;
        }
        String s;
        Exception exception;
        if (o.e != null)
        {
            String s1 = o.e.b.u;
            o.e.b.u = "onLoadFinished";
            s = s1;
        } else
        {
            s = null;
        }
        if (ah.a)
        {
            Log.v("LoaderManager", (new StringBuilder()).append("  onLoadFinished in ").append(ba1).append(": ").append(ba1.dataToString(obj)).toString());
        }
        c.onLoadFinished(ba1, obj);
        if (o.e != null)
        {
            o.e.b.u = s;
        }
        f = true;
        return;
        exception;
        if (o.e != null)
        {
            o.e.b.u = s;
        }
        throw exception;
    }

    void c()
    {
        if (i)
        {
            if (ah.a)
            {
                Log.v("LoaderManager", (new StringBuilder()).append("  Finished Retaining: ").append(this).toString());
            }
            i = false;
            if (h != j && !h)
            {
                e();
            }
        }
        if (h && e && !k)
        {
            b(d, g);
        }
    }

    void d()
    {
        if (h && k)
        {
            k = false;
            if (e)
            {
                b(d, g);
            }
        }
    }

    void e()
    {
        if (ah.a)
        {
            Log.v("LoaderManager", (new StringBuilder()).append("  Stopping: ").append(this).toString());
        }
        h = false;
        if (!i && d != null && m)
        {
            m = false;
            d.unregisterListener(this);
            d.stopLoading();
        }
    }

    void f()
    {
        if (ah.a)
        {
            Log.v("LoaderManager", (new StringBuilder()).append("  Destroying: ").append(this).toString());
        }
        l = true;
        boolean flag = f;
        f = false;
        if (c == null || d == null || !e || !flag)
        {
            break MISSING_BLOCK_LABEL_185;
        }
        if (ah.a)
        {
            Log.v("LoaderManager", (new StringBuilder()).append("  Reseting: ").append(this).toString());
        }
        String s;
        Exception exception;
        if (o.e != null)
        {
            String s1 = o.e.b.u;
            o.e.b.u = "onLoaderReset";
            s = s1;
        } else
        {
            s = null;
        }
        c.onLoaderReset(d);
        if (o.e != null)
        {
            o.e.b.u = s;
        }
        c = null;
        g = null;
        e = false;
        if (d != null)
        {
            if (m)
            {
                m = false;
                d.unregisterListener(this);
            }
            d.reset();
        }
        if (n != null)
        {
            n.f();
        }
        return;
        exception;
        if (o.e != null)
        {
            o.e.b.u = s;
        }
        throw exception;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(64);
        stringbuilder.append("LoaderInfo{");
        stringbuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringbuilder.append(" #");
        stringbuilder.append(a);
        stringbuilder.append(" : ");
        bo.a(d, stringbuilder);
        stringbuilder.append("}}");
        return stringbuilder.toString();
    }
}
