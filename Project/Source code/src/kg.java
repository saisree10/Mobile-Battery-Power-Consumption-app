// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Log;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.Callable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class kg extends Thread
{

    final ka a;
    private iv b;
    private boolean c;
    private Callable d;
    private boolean e;

    public kg(ka ka1, iv iv1, Callable callable)
    {
        a = ka1;
        super((new StringBuilder()).append("CheckUpdateThread-").append(ka.q()).toString());
        c = false;
        e = false;
        b = iv1;
        d = callable;
    }

    public void a()
    {
        this;
        JVM INSTR monitorenter ;
        c = true;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(boolean flag)
    {
        e = flag;
    }

    public void run()
    {
        PackageManager packagemanager;
        if (d != null)
        {
            try
            {
                d.call();
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }
        if (e && !gu.a(ka.d(a)).a())
        {
            if (ka.p())
            {
                Log.d("UpdateManager", "delay clock is active, check aborted");
            }
            if (!c && b != null)
            {
                b.b();
            }
            return;
        }
        packagemanager = ka.d(a).getPackageManager();
        if (ka.r() != null)
        {
            break MISSING_BLOCK_LABEL_220;
        }
        byte abyte0[];
        StringBuilder stringbuilder;
        PackageInfo packageinfo = packagemanager.getPackageInfo(ka.d(a).getPackageName(), 64);
        abyte0 = MessageDigest.getInstance("MD5").digest(packageinfo.signatures[0].toByteArray());
        stringbuilder = new StringBuilder();
        int i = 0;
_L2:
        if (i >= abyte0.length)
        {
            break; /* Loop/switch isn't completed */
        }
        String s = Integer.toHexString(0xff & abyte0[i]).toUpperCase();
        if (s.length() < 2)
        {
            stringbuilder.append('0');
        }
        stringbuilder.append(s);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        js js1;
        try
        {
            ka.d(stringbuilder.toString());
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            namenotfoundexception.printStackTrace();
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            nosuchalgorithmexception.printStackTrace();
        }
        js1 = ka.j(a).a(ka.i(a), ka.r(), ka.d(a));
        if (js1 != null) goto _L4; else goto _L3
_L3:
        if (ka.p())
        {
            Log.d("UpdateManager", "No update info returned");
        }
        if (!c && b != null)
        {
            b.a();
        }
        jo.b(ka.d(a), "pref-last-check", System.currentTimeMillis());
_L6:
        ka.a(a, null);
        return;
_L4:
        if (!js1.a || js1.f == null || js1.c <= ka.i(a) || js1.c <= ka.k(a))
        {
            jo.b(ka.d(a), "pref-last-check", System.currentTimeMillis());
            ka.a(a, null);
            jo.b(ka.d(a), "pref-update-info", null);
            if (ka.p())
            {
                Log.d("UpdateManager", "Download url pref cleared dut to no available update");
            }
            if (!c && b != null)
            {
                b.b();
            }
        } else
        {
            if (ka.p())
            {
                Log.d("UpdateManager", "Update is available");
            }
            jo.b(ka.d(a), "pref-last-check", System.currentTimeMillis());
            if (jn.b.matcher(js1.f).matches())
            {
                if (!js1.f.equals(jo.a(ka.d(a), "pref-last-down-url")))
                {
                    a.d();
                    File file = new File((new StringBuilder()).append(ix.a(ka.d(a), 0)).append(ka.c(a)).toString());
                    if (file.delete())
                    {
                        Log.i("UpdateManager", (new StringBuilder()).append("Delete obsoleted file in sdcard:").append(file.getAbsolutePath()).toString());
                    }
                    File file1 = new File((new StringBuilder()).append(ix.a(ka.d(a), 5)).append(ka.c(a)).toString());
                    if (file1.delete())
                    {
                        Log.i("UpdateManager", (new StringBuilder()).append("Delete obsoleted file in data:").append(file1.getAbsolutePath()).toString());
                    }
                    jo.b(ka.d(a), "pref-retry-count", 0);
                }
                ka.a(a, js1.f);
                ka.a(a, new jz());
                jz jz1 = ka.l(a);
                jz1.a = js1.c;
                jz1.b = js1.b;
                jz1.d = js1.d;
                jz1.c = js1.e;
                jz1.e = js1.g;
                jz1.f = System.currentTimeMillis();
                jz1.g = js1.h;
                jz1.i = js1.i;
                jz1.h = js1.j;
                jz1.j = (new StringBuilder()).append(ix.a(ka.d(a), 0)).append(ka.c(a)).toString();
                a.a(jz1);
                if (!c)
                {
                    if (js1.e == 3)
                    {
                        jt jt1 = jt.a();
                        jt1.a(b);
                        jt1.a(jz1);
                        a.a(null, false, 2);
                    } else
                    if (b != null)
                    {
                        b.a(js1.c, js1.b, js1.d, js1.e, js1.g);
                    }
                }
            } else
            {
                if (ka.p())
                {
                    Log.w("UpdateManager", (new StringBuilder()).append("Invalid download URL:").append(js1.f).toString());
                }
                jo.b(ka.d(a), "pref-update-info", null);
                if (ka.p())
                {
                    Log.d("UpdateManager", "Download url pref cleared due to invalid download url");
                }
                if (!c && b != null)
                {
                    b.b();
                }
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
