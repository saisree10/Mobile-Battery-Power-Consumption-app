// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.util.HashMap;

public class aot extends aou
{

    private static aot d;

    private aot(Context context)
    {
        super(context);
    }

    public static aot a(Context context)
    {
        if (d != null) goto _L2; else goto _L1
_L1:
        aot;
        JVM INSTR monitorenter ;
        if (d == null)
        {
            d = new aot(context);
        }
        aot;
        JVM INSTR monitorexit ;
_L2:
        return d;
        Exception exception;
        exception;
        aot;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void a()
    {
        HashMap hashmap = b;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        hashmap.put("sep", new aow("sep", 0x7f0a0196, -1, 0));
    }

    protected void a(int i)
    {
        if (i == 120)
        {
            HashMap hashmap3 = b;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            hashmap3.put("brightness", new aow("brightness", 0x7f0a0198, 0x7f0203ef, 1));
            return;
        }
        if (i >= 100)
        {
            HashMap hashmap2 = b;
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
            hashmap2.put("brightness", new aow("brightness", 0x7f0a0198, 0x7f0203f0, 1));
            return;
        }
        if (i >= 50)
        {
            HashMap hashmap1 = b;
            com.dianxinos.dxbs.R.string _tmp4 = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
            hashmap1.put("brightness", new aow("brightness", 0x7f0a0198, 0x7f0203f1, 1));
            return;
        } else
        {
            HashMap hashmap = b;
            com.dianxinos.dxbs.R.string _tmp6 = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
            hashmap.put("brightness", new aow("brightness", 0x7f0a0198, 0x7f020402, 0));
            return;
        }
    }

    protected void a(boolean flag)
    {
        if (flag)
        {
            HashMap hashmap1 = b;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            hashmap1.put("wifi", new aow("wifi", 0x7f0a0197, 0x7f0203fa, 1));
            return;
        } else
        {
            HashMap hashmap = b;
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
            hashmap.put("wifi", new aow("wifi", 0x7f0a0197, 0x7f020404, 0));
            return;
        }
    }

    protected void b(int i)
    {
        if (i == 1 || i == 2)
        {
            HashMap hashmap = b;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            hashmap.put("vibrate", new aow("vibrate", 0x7f0a019b, 0x7f0203ec, 1));
            return;
        } else
        {
            HashMap hashmap1 = b;
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
            hashmap1.put("vibrate", new aow("vibrate", 0x7f0a019b, 0x7f0203eb, 1));
            return;
        }
    }

    protected void b(boolean flag)
    {
        if (flag)
        {
            HashMap hashmap2 = b;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            hashmap2.put("mobileData", new aow("mobileData", 0x7f0a019d, 0x7f020400, 1));
        } else
        {
            HashMap hashmap = b;
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
            hashmap.put("mobileData", new aow("mobileData", 0x7f0a019d, 0x7f0203ff, 0));
        }
        if (azf.i() && c)
        {
            HashMap hashmap1 = b;
            com.dianxinos.dxbs.R.string _tmp4 = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
            hashmap1.put("mobileData", new aow("mobileData", 0x7f0a019d, 0x7f0203ff, 0));
        }
    }

    protected void c(boolean flag)
    {
        c = flag;
        if (flag)
        {
            HashMap hashmap1 = b;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            hashmap1.put("airplane", new aow("airplane", 0x7f0a019e, 0x7f0203e7, 1));
            return;
        } else
        {
            HashMap hashmap = b;
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
            hashmap.put("airplane", new aow("airplane", 0x7f0a019e, 0x7f0203e6, 0));
            return;
        }
    }

    protected void d(boolean flag)
    {
        if (flag)
        {
            HashMap hashmap1 = b;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            hashmap1.put("GPS", new aow("GPS", 0x7f0a0199, 0x7f0203ea, 1));
            return;
        } else
        {
            HashMap hashmap = b;
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
            hashmap.put("GPS", new aow("GPS", 0x7f0a0199, 0x7f0203fd, 0));
            return;
        }
    }

    protected void e(boolean flag)
    {
        if (flag)
        {
            HashMap hashmap1 = b;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            hashmap1.put("bluetooth", new aow("bluetooth", 0x7f0a019f, 0x7f0203e9, 1));
            return;
        } else
        {
            HashMap hashmap = b;
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
            hashmap.put("bluetooth", new aow("bluetooth", 0x7f0a019f, 0x7f0203fc, 0));
            return;
        }
    }

    protected void f(boolean flag)
    {
        if (flag)
        {
            HashMap hashmap1 = b;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            hashmap1.put("sync", new aow("sync", 0x7f0a01a1, 0x7f0203f6, 1));
            return;
        } else
        {
            HashMap hashmap = b;
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
            hashmap.put("sync", new aow("sync", 0x7f0a01a1, 0x7f020403, 0));
            return;
        }
    }
}
