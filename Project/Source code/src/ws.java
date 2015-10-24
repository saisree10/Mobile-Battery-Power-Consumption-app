// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.SystemClock;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class ws
    implements wj
{

    private Context a;
    private SQLiteDatabase b;
    private Object c;
    private SparseArray d;
    private HashMap e;
    private HashSet f;
    private Object g;
    private SparseArray h;
    private SparseArray i;
    private HashMap j;
    private HashMap k;
    private xb l;
    private long m;
    private long n;
    private long o;

    private ws()
    {
        c = new Object();
        g = new Object();
        a = wh.a();
        b = (new xh(a)).getWritableDatabase();
        d = new SparseArray();
        e = new HashMap();
        f = new HashSet();
        h = new SparseArray();
        i = new SparseArray();
        j = new HashMap();
        k = new HashMap();
        l = new xb();
    }

    ws(wt wt)
    {
        this();
    }

    public static ws a()
    {
        return xa.a;
    }

    private static void a(String s)
    {
    }

    private static void a(wx wx1, long l1, boolean flag)
    {
        if (wx1.b > 0L)
        {
            wx1.c = wx1.c + (l1 - wx1.b);
        }
        wx1.b = l1;
        if (flag)
        {
            if (wx1.d > 0L)
            {
                wx1.e = wx1.e + (l1 - wx1.d);
            }
            wx1.d = l1;
        }
    }

    private void a(xn xn1, boolean flag)
    {
        wy wy1 = (wy)h.get(xn1.a);
        long l1 = SystemClock.elapsedRealtime();
        if (wy1 == null)
        {
            wy1 = new wy();
            wy1.a = xn1.a;
            wy1.b = a(xn1.a);
            h.put(wy1.a, wy1);
        }
        wz wz1;
        if (flag)
        {
            wz1 = wy1.d;
        } else
        {
            wz1 = wy1.e;
        }
        wz1.d = xn1.b;
        wz1.e = xn1.c;
        wz1.f = l1;
    }

    private void a(xq xq1, boolean flag)
    {
        long l1 = SystemClock.elapsedRealtime();
        wu wu1 = (wu)i.get(xq1.a);
        if (wu1 == null)
        {
            wu1 = new wu();
            wu1.a = xq1.a;
            wu1.b = a(wu1.a);
            i.put(wu1.a, wu1);
            a("Adding power snap...");
        }
        wv wv1;
        if (flag)
        {
            wv1 = wu1.e;
        } else
        {
            wv1 = wu1.g;
        }
        wv1.a(xq1);
        wv1.a = l1;
    }

    private void b(xn xn1, boolean flag)
    {
        long l1 = SystemClock.elapsedRealtime();
        wy wy1 = (wy)h.get(xn1.a);
        boolean flag1;
        wy wy3;
        wz wz1;
        if (wy1 != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (!flag1)
        {
            wy wy2 = new wy();
            wy2.a = xn1.a;
            wy2.b = a(xn1.a);
            h.put(xn1.a, wy2);
            wy3 = wy2;
        } else
        {
            wy3 = wy1;
        }
        if (flag)
        {
            wz1 = wy3.d;
        } else
        {
            wz1 = wy3.e;
        }
        if (flag1 && wz1.f > 0L)
        {
            long l2 = xn1.b - wz1.d;
            if (l2 > 0L)
            {
                wz1.a = l2 + wz1.a;
                wy3.c = false;
            }
            long l3 = xn1.c - wz1.e;
            if (l3 > 0L)
            {
                wz1.b = l3 + wz1.b;
                wy3.c = false;
            }
            wz1.c = wz1.c + (l1 - wz1.f);
        }
        wz1.d = xn1.b;
        wz1.e = xn1.c;
        wz1.f = l1;
    }

    private void b(xq xq1, boolean flag)
    {
        long l1 = SystemClock.elapsedRealtime();
        wu wu1 = (wu)i.get(xq1.a);
        boolean flag1;
        wu wu3;
        wv wv1;
        wv wv2;
        if (wu1 != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (!flag1)
        {
            wu wu2 = new wu();
            wu2.a = xq1.a;
            wu2.b = a(xq1.a);
            i.put(xq1.a, wu2);
            a("Add power item...");
            wu3 = wu2;
        } else
        {
            wu3 = wu1;
        }
        if (flag)
        {
            wv1 = wu3.d;
        } else
        {
            wv1 = wu3.f;
        }
        if (flag)
        {
            wv2 = wu3.e;
        } else
        {
            wv2 = wu3.g;
        }
        if (flag1 && wv2.a > 0L)
        {
            long l2 = xq1.b - wv2.b;
            if (l2 > 0L)
            {
                wv1.b = l2 + wv1.b;
                wu3.c = false;
            }
            long l3 = xq1.c - wv2.c;
            if (l3 > 0L)
            {
                wv1.c = l3 + wv1.c;
                wu3.c = false;
            }
            long l4 = xq1.d - wv2.d;
            if (l4 > 0L)
            {
                wv1.d = (int)(l4 + (long)wv1.d);
                wu3.c = false;
            }
            wv1.e = wv1.e + (xq1.e - wv2.e);
            wv1.f = wv1.f + (xq1.f - wv2.f);
            wv1.g = wv1.g + (xq1.g - wv2.g);
            wv1.h = wv1.h + (xq1.h - wv2.h);
            wv1.a = wv1.a + (l1 - wv2.a);
        }
        if (!wu3.c)
        {
            a("Power item updated.");
        }
        wv2.a(xq1);
        wv2.a = l1;
    }

    private void c(String s, boolean flag)
    {
        wx wx1 = (wx)j.get(s);
        if (wx1 == null)
        {
            return;
        } else
        {
            a(wx1, SystemClock.elapsedRealtime(), flag);
            return;
        }
    }

    private void d()
    {
        (new xg(b)).a(j);
        if (xm.a())
        {
            (new xj(b)).a(h, m);
            List list = xm.b();
            if (list != null)
            {
                a(list);
            }
        }
        (new xd(b)).a(i, n);
        xp xp1 = xo.a(a, null);
        if (xp1 != null)
        {
            a(xp1);
        }
        (new xe(b)).a(k, n);
        (new xk(b)).a(l, o);
    }

    private void d(String s, boolean flag)
    {
        wx wx1 = (wx)j.get(s);
        if (wx1 == null)
        {
            return;
        }
        long l1 = SystemClock.elapsedRealtime();
        if (flag)
        {
            wx1.d = l1;
            return;
        }
        if (wx1.d > 0L)
        {
            wx1.e = wx1.e + (l1 - wx1.d);
        }
        wx1.d = 0L;
    }

    private void e()
    {
        int i1 = 0;
        if (xc.e())
        {
            xg xg1 = new xg(b);
            for (Iterator iterator = j.values().iterator(); iterator.hasNext(); xg1.a((wx)iterator.next())) { }
        }
        if (xc.f())
        {
            xj xj1 = new xj(b);
            int j1 = h.size();
            for (int k1 = 0; k1 < j1; k1++)
            {
                wy wy1 = (wy)h.valueAt(k1);
                if (!wy1.c)
                {
                    wy1.c = xj1.a(wy1, m);
                }
            }

        }
        if (xc.d())
        {
            xd xd1 = new xd(b);
            int l1 = i.size();
            while (i1 < l1) 
            {
                wu wu1 = (wu)i.valueAt(i1);
                if (!wu1.c)
                {
                    wu1.c = xd1.a(wu1, n);
                } else
                {
                    a((new StringBuilder()).append("Ignore power item sync cause it is saved. @").append(wu1.b).toString());
                }
                i1++;
            }
        }
        if (xc.b() && l.a())
        {
            (new xk(b)).a(l);
        }
        if (xc.c())
        {
            xe xe1 = new xe(b);
            Iterator iterator1 = k.values().iterator();
            do
            {
                if (!iterator1.hasNext())
                {
                    break;
                }
                ww ww1 = (ww)iterator1.next();
                if (!ww1.d)
                {
                    xe1.a(ww1, n);
                    ww1.d = true;
                }
            } while (true);
        }
    }

    private void f()
    {
        int i1 = h.size();
        for (int j1 = 0; j1 < i1; j1++)
        {
            wy wy1 = (wy)h.valueAt(j1);
            wy1.d.a = 0L;
            wy1.d.b = 0L;
            wy1.d.c = 0L;
            wy1.e.a = 0L;
            wy1.e.b = 0L;
            wy1.e.c = 0L;
        }

    }

    private void g()
    {
        int i1 = i.size();
        for (int j1 = 0; j1 < i1; j1++)
        {
            wu wu1 = (wu)i.valueAt(j1);
            wu1.d.a();
            wu1.f.a();
        }

    }

    private void h()
    {
        ww ww1;
        for (Iterator iterator = k.values().iterator(); iterator.hasNext(); ww1.c.a(-1))
        {
            ww1 = (ww)iterator.next();
            ww1.b.a(-1);
        }

    }

    public String a(int i1)
    {
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        HashSet hashset = (HashSet)d.get(i1);
        if (hashset == null)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        String as[] = (String[])hashset.toArray(new String[hashset.size()]);
_L1:
        obj;
        JVM INSTR monitorexit ;
        return xi.a(as);
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        as = null;
          goto _L1
    }

    public JSONObject a(long l1)
    {
        HashSet hashset = new HashSet();
        SparseArray sparsearray = (new xj(b)).a(hashset, l1);
        int i1 = hashset.size();
        if (i1 < 3)
        {
            return null;
        }
        JSONObject jsonobject = new JSONObject();
        int j1 = sparsearray.size();
        int k1 = 0;
        while (k1 < j1) 
        {
            wy wy1 = (wy)sparsearray.valueAt(k1);
            JSONObject jsonobject1 = new JSONObject();
            JSONObject jsonobject2 = new JSONObject();
            long l2 = wy1.d.a;
            long l3 = wy1.d.b;
            long l4 = wy1.d.c;
            long l5 = wy1.e.a - wy1.d.a;
            long l6 = wy1.e.b - wy1.d.b;
            long l7 = wy1.e.c - wy1.d.c;
            try
            {
                jsonobject1.put("fr", l2);
                jsonobject1.put("fs", l3);
                jsonobject1.put("ftu", l4);
                jsonobject1.put("br", l5);
                jsonobject1.put("bs", l6);
                jsonobject1.put("btu", l7);
                jsonobject1.put("cnt", i1);
                jsonobject2.put("re_ct", jsonobject1);
                jsonobject.put(wy1.b, jsonobject2);
            }
            catch (JSONException jsonexception)
            {
                zs.a("AppsStatsDataMgr", "AppsTraffic JSONException: ", jsonexception);
            }
            k1++;
        }
        return jsonobject;
    }

    public void a(int i1, int j1)
    {
        synchronized (g)
        {
            l.b.a(i1, -1);
            l.c.a(j1, -1);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(Context context, String s, int i1)
    {
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        HashSet hashset = (HashSet)d.get(i1);
        if (hashset != null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        hashset = new HashSet();
        d.append(i1, hashset);
        hashset.add(s);
        e.put(s, Integer.valueOf(i1));
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(String s, int i1)
    {
        ww ww1 = (ww)k.get(s);
        if (ww1 == null)
        {
            ww1 = new ww();
            ww1.a = s;
            k.put(s, ww1);
        }
        ww1.b.a(i1, -1);
        ww1.d = false;
    }

    public void a(String s, String s1, boolean flag)
    {
        long l1 = SystemClock.elapsedRealtime();
        if (s != null)
        {
            wx wx2 = (wx)j.get(s);
            if (wx2 != null && wx2.b > 0L)
            {
                a(wx2, l1, flag);
                wx2.b = 0L;
                wx2.d = 0L;
            }
        }
        if (s1 != null)
        {
            wx wx1 = (wx)j.get(s1);
            if (wx1 == null)
            {
                wx1 = new wx();
                wx1.a = s1;
                j.put(s1, wx1);
            }
            wx1.b = l1;
            if (!flag)
            {
                l1 = 0L;
            }
            wx1.d = l1;
            wx1.f = 1 + wx1.f;
            wx1.g = System.currentTimeMillis();
        }
    }

    public void a(String s, boolean flag)
    {
        synchronized (g)
        {
            c(s, flag);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(List list)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a((xn)iterator.next(), false)) { }
    }

    public void a(xn xn1)
    {
        a(xn1, true);
    }

    public void a(xp xp1)
    {
        for (Iterator iterator = xp1.c.iterator(); iterator.hasNext(); a((xq)iterator.next(), false)) { }
    }

    public void a(xq xq1)
    {
        a("updatePowerFgSnapshotLocked");
        a(xq1, true);
    }

    public void a(xx xx1)
    {
        synchronized (g)
        {
            xx1.a();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public JSONObject b(long l1)
    {
        xf xf1 = new xf(b);
        JSONObject jsonobject = new JSONObject();
        HashMap hashmap = xf1.a(l1);
        HashMap hashmap1 = xf1.b(l1);
        Iterator iterator = hashmap.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            if (hashmap1.containsKey(s))
            {
                JSONObject jsonobject1 = new JSONObject();
                JSONObject jsonobject2 = new JSONObject();
                wx wx1 = (wx)hashmap.get(s);
                wx wx2 = (wx)hashmap1.get(s);
                long l2 = wx1.c - wx2.c;
                long l3 = wx1.e - wx2.e;
                int i1 = wx1.f - wx2.f;
                if (l2 != 0L || l3 != 0L || i1 != 0)
                {
                    try
                    {
                        jsonobject1.put("ft", l2);
                        jsonobject1.put("st", l3);
                        jsonobject1.put("sc", i1);
                        jsonobject2.put("re_cs", jsonobject1);
                        jsonobject.put(wx1.a, jsonobject2);
                    }
                    catch (JSONException jsonexception)
                    {
                        zs.a("AppsStatsDataMgr", "AppsStartup JSONException: ", jsonexception);
                    }
                }
            }
        } while (true);
        return jsonobject;
    }

    public void b()
    {
        ArrayList arraylist = acq.c();
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        Iterator iterator = arraylist.iterator();
_L1:
        acn acn1;
        HashSet hashset;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_148;
        }
        acn1 = (acn)iterator.next();
        hashset = (HashSet)d.get(acn1.b);
        if (hashset != null)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        hashset = new HashSet();
        d.append(acn1.b, hashset);
        hashset.add(acn1.a);
        e.put(acn1.a, Integer.valueOf(acn1.b));
        if (acn1.c)
        {
            f.add(Integer.valueOf(acn1.b));
        }
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
        wi.a(this);
        long l1 = System.currentTimeMillis();
        m = xi.e(l1);
        n = xi.f(l1);
        o = xi.g(l1);
        synchronized (g)
        {
            d();
        }
        return;
        exception1;
        obj1;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    public void b(Context context, String s, int i1)
    {
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        HashSet hashset = (HashSet)d.get(i1);
        if (hashset == null) goto _L2; else goto _L1
_L1:
        hashset.remove(s);
        if (hashset.size() <= 0) goto _L2; else goto _L3
_L3:
        String s2 = xi.a((String[])hashset.toArray(new String[hashset.size()]));
        boolean flag;
        String s1;
        flag = false;
        s1 = s2;
_L9:
        obj;
        JVM INSTR monitorexit ;
        Object obj1 = g;
        obj1;
        JVM INSTR monitorenter ;
        (new xe(b)).a(s);
        k.remove(s);
        (new xg(b)).a(s);
        (new xf(b)).a(s);
        j.remove(s);
        if (!flag) goto _L5; else goto _L4
_L4:
        (new xj(b)).a(i1);
        h.remove(i1);
        (new xd(b)).a(i1);
        i.remove(i1);
_L7:
        obj1;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L5:
        wy wy1;
        (new xj(b)).a(i1, s1);
        wy1 = (wy)h.get(i1);
        if (wy1 == null)
        {
            break MISSING_BLOCK_LABEL_250;
        }
        wy1.b = s1;
        wu wu1;
        (new xd(b)).a(i1, s1);
        wu1 = (wu)i.get(i1);
        if (wu1 == null) goto _L7; else goto _L6
_L6:
        wu1.b = s1;
          goto _L7
        Exception exception1;
        exception1;
        obj1;
        JVM INSTR monitorexit ;
        throw exception1;
_L2:
        flag = true;
        s1 = null;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public void b(String s, int i1)
    {
        ww ww1 = (ww)k.get(s);
        if (ww1 == null)
        {
            ww1 = new ww();
            ww1.a = s;
            k.put(s, ww1);
        }
        ww1.c.a(i1, -1);
        ww1.d = false;
    }

    public void b(String s, boolean flag)
    {
        synchronized (g)
        {
            d(s, flag);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(List list)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext(); b((xn)iterator.next(), false)) { }
    }

    public void b(xn xn1)
    {
        b(xn1, true);
    }

    public void b(xp xp1)
    {
        for (Iterator iterator = xp1.c.iterator(); iterator.hasNext(); b((xq)iterator.next(), false)) { }
    }

    public void b(xq xq1)
    {
        b(xq1, true);
    }

    public boolean b(int i1)
    {
        if (i1 < 10000)
        {
            return true;
        }
        boolean flag;
        synchronized (c)
        {
            flag = f.contains(Integer.valueOf(i1));
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public JSONObject c(long l1)
    {
        JSONObject jsonobject;
        JSONObject jsonobject1;
        Iterator iterator;
        xe xe1 = new xe(b);
        jsonobject = new JSONObject();
        jsonobject1 = new JSONObject();
        iterator = xe1.a(l1).iterator();
_L2:
        ww ww1;
        JSONObject jsonobject2;
        JSONObject jsonobject3;
        int i1;
        int j1;
        int k1;
        int i2;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        ww1 = (ww)iterator.next();
        jsonobject2 = new JSONObject();
        jsonobject3 = new JSONObject();
        i1 = ww1.b.c;
        j1 = ww1.b.d;
        k1 = ww1.c.c;
        i2 = ww1.c.d;
        if (j1 <= 0)
        {
            break MISSING_BLOCK_LABEL_149;
        }
        jsonobject2.put("fa", i1);
        jsonobject2.put("fc", j1);
        if (i2 <= 0)
        {
            break MISSING_BLOCK_LABEL_176;
        }
        jsonobject2.put("ba", k1);
        jsonobject2.put("bc", i2);
        if (jsonobject2.length() != 0)
        {
            jsonobject3.put("re_cr", jsonobject2);
            jsonobject.put(ww1.a, jsonobject3);
        }
        continue; /* Loop/switch isn't completed */
        JSONException jsonexception1;
        jsonexception1;
        zs.a("AppsStatsDataMgr", "AppsRamData JSONException: ", jsonexception1);
        if (true) goto _L2; else goto _L1
_L1:
        if (jsonobject.length() == 0)
        {
            return null;
        }
        try
        {
            jsonobject1.put("sys_heapsize", gn.a("dalvik.vm.heapsize", 0));
            jsonobject1.put("api_level", android.os.Build.VERSION.SDK_INT);
            jsonobject.put("total", jsonobject1);
        }
        catch (JSONException jsonexception)
        {
            zs.a("AppsStatsDataMgr", "AppsRamData JSONException: ", jsonexception);
        }
        return jsonobject;
    }

    public void c()
    {
        long l1;
        long l2;
        long l3;
        long l4;
        l1 = System.currentTimeMillis();
        l2 = xi.e(l1);
        l3 = xi.f(l1);
        l4 = xi.g(l1);
        Object obj = g;
        obj;
        JVM INSTR monitorenter ;
        xf xf1;
        e();
        if (l2 == m)
        {
            break MISSING_BLOCK_LABEL_152;
        }
        if (xc.f())
        {
            f();
            (new xj(b)).a(l1);
        }
        if (!xc.e())
        {
            break MISSING_BLOCK_LABEL_147;
        }
        xf1 = new xf(b);
        for (Iterator iterator = j.values().iterator(); iterator.hasNext(); xf1.a((wx)iterator.next(), m)) { }
        break MISSING_BLOCK_LABEL_141;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        xf1.d(l1);
        m = l2;
        if (l3 != n)
        {
            if (xc.d())
            {
                g();
                (new xd(b)).b(l1);
            }
            if (xc.c())
            {
                h();
                (new xe(b)).b(l1);
            }
            n = l3;
        }
        if (l4 != o)
        {
            if (xc.b())
            {
                l.a(l4);
                (new xk(b)).a(l1);
            }
            o = l4;
        }
        obj;
        JVM INSTR monitorexit ;
    }

    public void c(Context context, String s, int i1)
    {
    }

    public void c(xn xn1)
    {
        b(xn1, false);
    }

    public void c(xq xq1)
    {
        b(xq1, false);
    }

    public JSONObject d(long l1)
    {
        SparseArray sparsearray = (new xd(b)).a(l1);
        JSONObject jsonobject = new JSONObject();
        int i1 = sparsearray.size();
        int j1 = 0;
        while (j1 < i1) 
        {
            wu wu1 = (wu)sparsearray.valueAt(j1);
            JSONObject jsonobject1 = new JSONObject();
            JSONObject jsonobject2 = new JSONObject();
            try
            {
                jsonobject1.put("ftu", wu1.d.a);
                jsonobject1.put("fct", wu1.d.b);
                jsonobject1.put("fcwt", wu1.d.c);
                jsonobject1.put("frcwc", wu1.d.d);
                jsonobject1.put("fwifi", wu1.d.e);
                jsonobject1.put("fgps", wu1.d.f);
                jsonobject1.put("faudio", wu1.d.g);
                jsonobject1.put("fvideo", wu1.d.h);
                jsonobject1.put("btu", wu1.f.a - wu1.d.a);
                jsonobject1.put("bct", wu1.f.b - wu1.d.b);
                jsonobject1.put("bcwt", wu1.f.c - wu1.d.c);
                jsonobject1.put("brcwc", wu1.f.d - wu1.d.d);
                jsonobject1.put("bwifi", wu1.f.e - wu1.d.e);
                jsonobject1.put("bgps", wu1.f.f - wu1.d.f);
                jsonobject1.put("baudio", wu1.f.g - wu1.d.g);
                jsonobject1.put("bvideo", wu1.f.h - wu1.d.h);
                jsonobject2.put("re_cp", jsonobject1);
                jsonobject.put(wu1.b, jsonobject2);
            }
            catch (JSONException jsonexception)
            {
                zs.a("AppsStatsDataMgr", "AppsPower JSONException: ", jsonexception);
            }
            j1++;
        }
        return jsonobject;
    }
}
