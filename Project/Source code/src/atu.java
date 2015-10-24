// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Parcel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class atu extends atl
{

    public int a;
    public String b;
    public List h;
    public long i;
    public long j;
    public long k;
    public long l;
    public long m;
    public long n;
    public long o;
    public long p;
    public long q;
    public long r;
    public int s;
    public long t;
    public long u;
    public double v;
    public double w;

    public atu(int i1)
    {
        h = new LinkedList();
        a = i1;
    }

    public void a()
    {
        super.a();
        a = 0;
        b = null;
        h.clear();
    }

    public void a(Parcel parcel)
    {
        parcel.writeInt(0xa398d3c);
        parcel.writeLong(i);
        parcel.writeLong(j);
        parcel.writeLong(k);
        parcel.writeLong(l);
        parcel.writeLong(m);
        parcel.writeLong(n);
        parcel.writeLong(o);
        parcel.writeLong(p);
        parcel.writeInt(s);
        parcel.writeLong(t);
        parcel.writeLong(u);
        parcel.writeDouble(d);
        parcel.writeDouble(v);
        parcel.writeInt(a);
        parcel.writeString(b);
        parcel.writeInt(g.size());
        for (Iterator iterator = g.iterator(); iterator.hasNext(); atx.a((atx)(atl)iterator.next(), parcel)) { }
        parcel.writeInt(h.size());
        for (Iterator iterator1 = h.iterator(); iterator1.hasNext(); parcel.writeString((String)iterator1.next())) { }
    }

    protected void a(atl atl1)
    {
        super.a(atl1);
        atu atu1 = (atu)atl1;
        a = atu1.a;
        b = atu1.b;
        h.clear();
        int i1 = atu1.h.size();
        for (int j1 = 0; j1 < i1; j1++)
        {
            h.add(atu1.h.get(j1));
        }

        i = atu1.i;
        j = atu1.j;
        k = atu1.k;
        l = atu1.l;
        m = atu1.m;
        n = atu1.n;
        o = atu1.o;
        p = atu1.p;
        s = atu1.s;
        t = atu1.t;
        u = atu1.u;
        v = atu1.v;
        w = atu1.w;
    }

    public void a(atu atu1)
    {
        if (a == atu1.a) goto _L2; else goto _L1
_L1:
        azt.d("UidStatsEntry", (new StringBuilder()).append("Not the same app, uid1: ").append(a).append(", pkg1: ").append(b).append(", uid2: ").append(atu1.a).append(", pkg2: ").append(atu1.b).toString());
_L4:
        return;
_L2:
        i = i - atu1.i;
        j = j - atu1.j;
        k = k - atu1.k;
        l = l - atu1.l;
        m = m - atu1.m;
        n = n - atu1.n;
        o = o - atu1.o;
        p = p - atu1.p;
        s = s - atu1.s;
        t = t - atu1.t;
        u = u - atu1.u;
        v = v - atu1.v;
        if (v < 0.0D)
        {
            v = 0.0D;
        }
        Iterator iterator = atu1.g.iterator();
label0:
        do
        {
            if (!iterator.hasNext())
            {
                continue;
            }
            atx atx1 = (atx)(atl)iterator.next();
            Iterator iterator1 = g.iterator();
            atx atx2;
            do
            {
                if (!iterator1.hasNext())
                {
                    break label0;
                }
                atx2 = (atx)(atl)iterator1.next();
            } while (atx2.a != atx1.a);
            atx2.d = atx2.d - atx1.d;
            atx2.b = atx2.b - atx1.b;
            if (atx2.d < 0.0D)
            {
                atx2.d = 0.0D;
                atx2.b = 0L;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean b(Parcel parcel)
    {
        int i1 = 0;
        int j1 = parcel.readInt();
        if (j1 != 0xa398d3c)
        {
            azt.d("UidStatsEntry", (new StringBuilder()).append("Data corrupted with magic number: ").append(j1).toString());
            return false;
        }
        i = parcel.readLong();
        j = parcel.readLong();
        k = parcel.readLong();
        l = parcel.readLong();
        m = parcel.readLong();
        n = parcel.readLong();
        o = parcel.readLong();
        p = parcel.readLong();
        s = parcel.readInt();
        t = parcel.readLong();
        u = parcel.readLong();
        d = parcel.readDouble();
        v = parcel.readDouble();
        a = parcel.readInt();
        b = parcel.readString();
        int k1 = parcel.readInt();
        g.clear();
        for (int l1 = 0; l1 < k1; l1++)
        {
            g.add(new atx(parcel, null));
        }

        int i2 = parcel.readInt();
        h.clear();
        for (; i1 < i2; i1++)
        {
            h.add(parcel.readString());
        }

        return true;
    }

    protected atl c()
    {
        return f();
    }

    public void c(atl atl1)
    {
        Iterator iterator;
        atu atu1 = (atu)atl1;
        d = d + atu1.d;
        e = e + atu1.e;
        i = i + atu1.i;
        j = j + atu1.j;
        l = l + atu1.l;
        m = m + atu1.m;
        n = n + atu1.n;
        o = o + atu1.o;
        p = p + atu1.p;
        s = s + atu1.s;
        t = t + atu1.t;
        u = u + atu1.u;
        v = v + atu1.v;
        w = w + atu1.w;
        h.addAll(atu1.h);
        iterator = atu1.g.iterator();
_L2:
        atl atl2;
        boolean flag;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        atl2 = (atl)iterator.next();
        atx atx1 = (atx)atl2;
        Iterator iterator1 = g.iterator();
        atx atx2;
        do
        {
            if (!iterator1.hasNext())
            {
                break MISSING_BLOCK_LABEL_356;
            }
            atx2 = (atx)(atl)iterator1.next();
        } while (atx2.a != atx1.a);
        atx2.d = atx2.d + atx1.d;
        atx2.e = atx2.e + atx1.e;
        atx2.b = atx2.b + atx1.b;
        flag = true;
_L3:
        if (!flag)
        {
            g.add(atl2);
        }
        if (true) goto _L2; else goto _L1
_L1:
        return;
        flag = false;
          goto _L3
    }

    protected void d()
    {
        super.d();
        if (d < v)
        {
            d = v;
        }
    }

    public JSONObject e()
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("cpuTime", i);
            jsonobject.put("fgTime", j);
            jsonobject.put("bgTime", k);
            jsonobject.put("wakelockTime", m);
            jsonobject.put("gpsTime", n);
            jsonobject.put("sensorsTime", o);
            jsonobject.put("wifiOnTime", p);
            jsonobject.put("wifiScanTime", q);
            jsonobject.put("wifiFullTime", r);
            jsonobject.put("wakeupTime", s);
            jsonobject.put("tcpBytesReceived", t);
            jsonobject.put("tcpBytesSent", u);
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
            return jsonobject;
        }
        return jsonobject;
    }

    protected atu f()
    {
        return new atu(a);
    }
}
