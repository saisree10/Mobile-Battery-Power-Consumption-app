// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Parcel;
import android.os.SystemClock;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class xr
{

    private rj a;
    private final int b;

    private xr()
    {
        a = rj.a(gl.a("batteryinfo"));
        b = c();
    }

    xr(xs xs)
    {
        this();
    }

    public static xr a()
    {
        return xt.a;
    }

    private static void a(Context context, xu xu1, int i, HashSet hashset)
    {
        long l = xu1.a.a(1000L * SystemClock.elapsedRealtime(), i);
        xu1.b = System.currentTimeMillis();
        xu1.c = l / 1000L;
        a(context, xu1, l, i, hashset);
    }

    private static void a(Context context, xu xu1, long l, int i, HashSet hashset)
    {
        ws ws1;
        SparseArray sparsearray;
        int j;
        int k;
        ws1 = ws.a();
        xu1.d = new ArrayList();
        sparsearray = xu1.a.c();
        j = sparsearray.size();
        k = 0;
_L3:
        ru ru1;
        int i1;
        if (k >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        ru1 = (ru)sparsearray.valueAt(k);
        i1 = ru1.g();
          goto _L1
_L5:
        k++;
        if (true) goto _L3; else goto _L2
_L1:
        if (ws1.b(i1) || hashset != null && !hashset.contains(Integer.valueOf(i1))) goto _L5; else goto _L4
_L4:
        xq xq1 = new xq();
        xq1.a = i1;
        Map map = ru1.e();
        long l1;
        Iterator iterator;
        long l2;
        long l3;
        long l4;
        Iterator iterator1;
        long l5;
        int j1;
        Iterator iterator2;
        rx rx1;
        int k1;
        rt rt1;
        long l6;
        if (map.size() > 0)
        {
            Iterator iterator3 = map.entrySet().iterator();
            long l7 = 0L;
            do
            {
                if (!iterator3.hasNext())
                {
                    break;
                }
                rw rw1 = (rw)((java.util.Map.Entry)iterator3.next()).getValue();
                long l8 = 10L * (rw1.a(i) + rw1.b(i));
                if (l8 >= 0L)
                {
                    l7 += l8;
                }
            } while (true);
            l1 = l7;
        } else
        {
            l1 = 0L;
        }
        if (l1 == 0L) goto _L5; else goto _L6
_L6:
        xq1.b = l1;
        iterator = ru1.c().entrySet().iterator();
        l2 = 0L;
        while (iterator.hasNext()) 
        {
            rt1 = ((ry)((java.util.Map.Entry)iterator.next()).getValue()).b(0);
            if (rt1 != null)
            {
                l6 = l2 + rt1.a(l, i);
            } else
            {
                l6 = l2;
            }
            l2 = l6;
        }
        l3 = l2 / 1000L;
        xq1.c = l3;
        xu1.f = l1 + xu1.f;
        xu1.g = l3 + xu1.g;
        l4 = ru1.c(l, i) / 1000L;
        xq1.e = l4;
        xu1.e = l4 + xu1.e;
        iterator1 = ru1.d().entrySet().iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break MISSING_BLOCK_LABEL_583;
            }
            rx1 = (rx)((java.util.Map.Entry)iterator1.next()).getValue();
            k1 = rx1.c();
            l5 = rx1.e().a(l, i) / 1000L;
        } while (k1 != -10000);
        xq1.f = l5;
        xq1.g = ru1.a(l, i) / 1000L;
        xq1.h = ru1.b(l, i) / 1000L;
        j1 = 0;
        for (iterator2 = ru1.f().entrySet().iterator(); iterator2.hasNext();)
        {
            j1 += ((rv)((java.util.Map.Entry)iterator2.next()).getValue()).a(i);
        }

        xq1.d = j1;
        xu1.d.add(xq1);
          goto _L5
_L2:
        return;
        l5 = 0L;
        break MISSING_BLOCK_LABEL_458;
    }

    private rk b()
    {
        if (azf.p())
        {
            return null;
        }
        rk rk1;
        Parcel parcel;
        byte abyte0[] = a.c();
        parcel = Parcel.obtain();
        parcel.unmarshall(abyte0, 0, abyte0.length);
        parcel.setDataPosition(0);
        rk1 = (rk)rk.a.createFromParcel(parcel);
        if (d())
        {
            rk1.a(b);
        }
        parcel.recycle();
        return rk1;
        ri ri2;
        ri2;
_L4:
        zs.b("PowerUsageStats", "compat exception", ri2);
        return rk1;
        Exception exception;
        exception;
        Exception exception1;
        rk1 = null;
        exception1 = exception;
_L2:
        zs.b("PowerUsageStats", "unexpected exception", exception1);
        return rk1;
        exception1;
        if (true) goto _L2; else goto _L1
_L1:
        ri ri1;
        ri1;
        ri2 = ri1;
        rk1 = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static int c()
    {
        return android.os.Build.VERSION.SDK_INT < 9 ? 3 : 0;
    }

    private static boolean d()
    {
        return android.os.Build.VERSION.SDK_INT >= 9;
    }

    public xp a(Context context, HashSet hashset)
    {
        if (hashset == null || hashset.size() != 0)
        {
            xu xu1 = new xu();
            xu1.a = b();
            if (xu1.a != null)
            {
                a(context, xu1, b, hashset);
                xu1.a = null;
                xp xp1 = new xp();
                xp1.a = xu1.b;
                xp1.b = xu1.c;
                xp1.c = xu1.d;
                return xp1;
            }
        }
        return null;
    }
}
