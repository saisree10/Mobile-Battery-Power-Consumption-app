// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class aev extends lb
{

    public String g;
    public aew h;
    public float i;
    public int j;
    public String k;
    public String l;
    public String m;
    public String n;
    public long o;
    public String p;
    public String q;
    public long r;
    public long s;
    public long t;
    public long u;
    public boolean v;

    public aev(JSONObject jsonobject)
    {
        super(jsonobject);
        i = 0.99F;
        v = false;
        k = b();
        p = jsonobject.optString("downloadUrl");
        i = (float)jsonobject.optDouble("free");
        j = jsonobject.optInt("payIntegral");
        g = jsonobject.optString("item");
        l = jsonobject.optString("title");
        m = jsonobject.optString("shortDesc");
        n = jsonobject.optString("signmd5");
        o = jsonobject.optLong("size");
        String s1 = jsonobject.optString("gmd5", null);
        if (s1 == null)
        {
            s1 = aze.a(p);
        }
        q = s1;
        r = jsonobject.optLong("pid");
        s = jsonobject.optLong("tid");
        t = jsonobject.optLong("gid");
        u = jsonobject.optLong("id");
    }

    private String b()
    {
        String s1;
        try
        {
            s1 = ((lg)((List)b(f.optJSONArray("images")).get(Integer.valueOf(1))).get(0)).h;
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
            return "";
        }
        return s1;
    }

    public String a()
    {
        try
        {
            f.put("id", a);
            f.put("downloadUrl", p);
            f.put("free", i);
            f.put("item", g);
            f.put("title", l);
            JSONArray jsonarray = f.optJSONArray("images");
            jsonarray.getJSONObject(0).put("url", k);
            f.put("images", jsonarray);
            f.put("gmd5", q);
            f.put("pid", r);
            f.put("tid", s);
            f.put("gid", t);
            f.put("id", u);
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        return f.toString();
    }

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        aev aev1;
        if (obj == null)
        {
            return false;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        }
        aev1 = (aev)obj;
        if (t != aev1.t)
        {
            return false;
        }
        if (q == null)
        {
            if (aev1.q != null)
            {
                return false;
            }
        } else
        if (!q.equals(aev1.q))
        {
            return false;
        }
        if (r != aev1.r)
        {
            return false;
        }
        if (k == null)
        {
            if (aev1.k != null)
            {
                return false;
            }
        } else
        if (!k.equals(aev1.k))
        {
            return false;
        }
        if (Float.floatToIntBits(i) != Float.floatToIntBits(aev1.i))
        {
            return false;
        }
        if (g == null)
        {
            if (aev1.g != null)
            {
                return false;
            }
        } else
        if (!g.equals(aev1.g))
        {
            return false;
        }
        if (j != aev1.j)
        {
            return false;
        }
        if (m == null)
        {
            if (aev1.m != null)
            {
                return false;
            }
        } else
        if (!m.equals(aev1.m))
        {
            return false;
        }
        if (u != aev1.u)
        {
            return false;
        }
        if (n == null)
        {
            if (aev1.n != null)
            {
                return false;
            }
        } else
        if (!n.equals(aev1.n))
        {
            return false;
        }
        if (o != aev1.o)
        {
            return false;
        }
        if (h != aev1.h)
        {
            return false;
        }
        if (s != aev1.s)
        {
            return false;
        }
        if (l == null)
        {
            if (aev1.l != null)
            {
                return false;
            }
        } else
        if (!l.equals(aev1.l))
        {
            return false;
        }
        if (v != aev1.v)
        {
            return false;
        }
        if (p != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (aev1.p == null) goto _L1; else goto _L3
_L3:
        return false;
        if (p.equals(aev1.p)) goto _L1; else goto _L4
_L4:
        return false;
    }

    public int hashCode()
    {
        int i1 = 31 * (31 + (int)(t ^ t >>> 32));
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        int j3;
        int k3;
        int l3;
        int i4;
        int j4;
        int k4;
        char c;
        int l4;
        String s1;
        int i5;
        if (q == null)
        {
            j1 = 0;
        } else
        {
            j1 = q.hashCode();
        }
        k1 = 31 * (31 * (j1 + i1) + (int)(r ^ r >>> 32));
        if (k == null)
        {
            l1 = 0;
        } else
        {
            l1 = k.hashCode();
        }
        i2 = 31 * (31 * (l1 + k1) + Float.floatToIntBits(i));
        if (g == null)
        {
            j2 = 0;
        } else
        {
            j2 = g.hashCode();
        }
        k2 = 31 * (31 * (j2 + i2) + j);
        if (m == null)
        {
            l2 = 0;
        } else
        {
            l2 = m.hashCode();
        }
        i3 = 31 * (31 * (l2 + k2) + (int)(u ^ u >>> 32));
        if (n == null)
        {
            j3 = 0;
        } else
        {
            j3 = n.hashCode();
        }
        k3 = 31 * (31 * (j3 + i3) + (int)(o ^ o >>> 32));
        if (h == null)
        {
            l3 = 0;
        } else
        {
            l3 = h.hashCode();
        }
        i4 = 31 * (31 * (l3 + k3) + (int)(s ^ s >>> 32));
        if (l == null)
        {
            j4 = 0;
        } else
        {
            j4 = l.hashCode();
        }
        k4 = 31 * (j4 + i4);
        if (v)
        {
            c = '\u04CF';
        } else
        {
            c = '\u04D5';
        }
        l4 = 31 * (c + k4);
        s1 = p;
        i5 = 0;
        if (s1 != null)
        {
            i5 = p.hashCode();
        }
        return l4 + i5;
    }
}
