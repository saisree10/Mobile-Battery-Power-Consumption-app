// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.graphics.drawable.Drawable;
import java.io.File;
import java.lang.ref.WeakReference;

public class acn
{

    public String a;
    public int b;
    public boolean c;
    private String d;
    private WeakReference e;
    private WeakReference f;
    private File g;
    private int h;
    private int i;
    private long j;
    private long k;
    private long l;
    private boolean m;

    acn(PackageInfo packageinfo)
    {
        b = -1;
        h = 0;
        i = 0;
        j = -1L;
        k = -1L;
        l = -1L;
        m = true;
        a = packageinfo.packageName;
        a(packageinfo);
    }

    acn(String s)
    {
        b = -1;
        h = 0;
        i = 0;
        j = -1L;
        k = -1L;
        l = -1L;
        m = true;
        a = s;
        m = false;
    }

    static Drawable a(acn acn1)
    {
        return acn1.i();
    }

    static void a(acn acn1, acp acp1)
    {
        acn1.b(acp1);
    }

    private void a(PackageInfo packageinfo)
    {
        boolean flag = true;
        this;
        JVM INSTR monitorenter ;
        int i1;
        e = new WeakReference(packageinfo);
        h = packageinfo.applicationInfo.flags;
        i1 = acq.b(a);
        Exception exception;
        int j1;
        String s;
        File file;
        if (i1 != 0 && i1 != flag)
        {
            j1 = -1;
        } else
        {
            j1 = ((flag) ? 1 : 0);
        }
        i = j1;
        b = packageinfo.applicationInfo.uid;
        if ((1 & h) != flag && (0x80 & h) != 128)
        {
            flag = false;
        }
        c = flag;
        s = packageinfo.applicationInfo.sourceDir;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_162;
        }
        file = new File(s);
_L1:
        g = file;
        if (k <= 0L)
        {
            k = -1L;
            f();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        file = null;
          goto _L1
        exception;
        throw exception;
    }

    private void b(acp acp1)
    {
        if (acp1 != null)
        {
            acp1.a(this);
        }
    }

    private void h()
    {
        this;
        JVM INSTR monitorenter ;
        if (m && e == null)
        {
            c();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private Drawable i()
    {
        Drawable drawable = acq.b(this);
        if (drawable != null)
        {
            f = new WeakReference(drawable);
        }
        return drawable;
    }

    public Drawable a(acp acp1)
    {
        if (!m)
        {
            b(acp1);
            return acq.b(this);
        }
        h();
        if (f == null) goto _L2; else goto _L1
_L1:
        Drawable drawable = (Drawable)f.get();
        if (drawable != null) goto _L4; else goto _L3
_L3:
        if (g == null || !g.exists())
        {
            b(acp1);
            return null;
        }
        if (acp1 != null)
        {
            (new aco(this, acp1)).start();
        } else
        {
            drawable = i();
            b(acp1);
        }
_L4:
        return drawable;
_L2:
        drawable = null;
        if (true) goto _L3; else goto _L5
_L5:
    }

    public boolean a()
    {
        return m;
    }

    public boolean b()
    {
        h();
        return i == 1;
    }

    public PackageInfo c()
    {
        if (!m) goto _L2; else goto _L1
_L1:
        PackageInfo packageinfo;
label0:
        {
            if (e != null)
            {
                packageinfo = (PackageInfo)e.get();
                if (packageinfo != null)
                {
                    break label0;
                }
            }
            packageinfo = acq.a().a(a);
            if (packageinfo == null)
            {
                return null;
            }
            a(packageinfo);
        }
_L4:
        return packageinfo;
_L2:
        packageinfo = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public Drawable d()
    {
        return a(((acp) (null)));
    }

    public String e()
    {
        if (!m)
        {
            return acq.a(this);
        }
        h();
        if (d == null)
        {
            if (g == null || !g.exists())
            {
                return a;
            }
            PackageInfo packageinfo = c();
            if (packageinfo == null)
            {
                return a;
            }
            d = zy.a(packageinfo.applicationInfo.loadLabel(acq.a().b()).toString());
            acq.a(a, d);
        }
        return d;
    }

    public long f()
    {
        long l1 = 0L;
        if (!m)
        {
            return l1;
        }
        if (k < l1)
        {
            if (android.os.Build.VERSION.SDK_INT < 9)
            {
                h();
                if (g != null)
                {
                    l1 = g.lastModified();
                }
                k = l1;
            } else
            {
                k = c().firstInstallTime;
            }
        }
        return k;
    }

    public void g()
    {
        e = null;
        f = null;
        d = null;
        j = -1L;
        g = null;
        i = 0;
    }
}
