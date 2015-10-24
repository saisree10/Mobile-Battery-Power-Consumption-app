// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.text.TextUtils;
import android.util.Log;
import java.io.File;

class kd
    implements Runnable
{

    final jl a;
    final ju b;
    final boolean c;
    final boolean d;
    final ka e;

    kd(ka ka1, jl jl1, ju ju1, boolean flag, boolean flag1)
    {
        e = ka1;
        a = jl1;
        b = ju1;
        c = flag;
        d = flag1;
        super();
    }

    public void run()
    {
        String s;
        if (ka.p())
        {
            Log.d("UpdateManager", "Start to check archive");
        }
        s = (new StringBuilder()).append(ka.b(e)).append(ka.c(e)).toString();
        if (!TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        if (a != null)
        {
            a.a();
        }
        if (b != null)
        {
            b.a();
        }
_L4:
        synchronized (ka.e(e))
        {
            ka.a(e, null);
        }
        return;
_L2:
        File file = new File(s);
        if (file.exists() && file.isFile())
        {
            int i = is.a(ka.d(e), file.getAbsolutePath());
            if (i == 0)
            {
                if (ka.p())
                {
                    Log.d("UpdateManager", "About to install");
                }
                if (a != null)
                {
                    a.d();
                }
                if (b != null)
                {
                    b.d();
                }
                if (c)
                {
                    if (!ka.a(e, file))
                    {
                        if (d)
                        {
                            if (ka.p())
                            {
                                Log.i("UpdateManager", "Slient installation fails, switch to normal mode");
                            }
                            ka.b(e, file);
                        } else
                        if (b != null)
                        {
                            b.e();
                        }
                    }
                } else
                {
                    ka.b(e, file);
                }
            } else
            if (i == 3)
            {
                if (ka.p())
                {
                    Log.d("UpdateManager", "Package name mismatches");
                }
                if (a != null)
                {
                    a.b();
                }
                if (b != null)
                {
                    b.b();
                }
            } else
            if (i == 2)
            {
                if (ka.p())
                {
                    Log.d("UpdateManager", "Version too old");
                }
                if (a != null)
                {
                    a.c();
                }
                if (b != null)
                {
                    b.c();
                }
            } else
            if (i == 4)
            {
                if (ka.p())
                {
                    Log.d("UpdateManager", "check sum failure");
                }
                if (a != null)
                {
                    a.b();
                }
                if (b != null)
                {
                    b.b();
                }
            } else
            {
                if (ka.p())
                {
                    Log.d("UpdateManager", "Invalid archive");
                }
                if (a != null)
                {
                    a.b();
                }
                if (b != null)
                {
                    b.b();
                }
            }
        } else
        {
            if (ka.p())
            {
                Log.w("UpdateManager", (new StringBuilder()).append("File not found:").append(s).toString());
            }
            if (a != null)
            {
                a.a();
            }
            if (b != null)
            {
                b.a();
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
