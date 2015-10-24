// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

public class tf
{

    private final int a;
    private final int b;
    private final int c;
    private final String d;
    private final Object e;
    private final String f;
    private int g;
    private final Date h;
    private final String i;
    private final String j;
    private final String k;
    private final String l;
    private final String m;
    private final String n;
    private final String o;
    private final String p;
    private final String q;
    private int r;

    public tf(int i1, int j1, int k1, String s, int l1, Object obj, String s1)
    {
        i = "rp";
        j = "dt";
        k = "dp";
        l = "tag";
        m = "ov";
        n = "ev";
        o = "p";
        p = "t";
        q = "ot";
        a = i1;
        b = j1;
        c = k1;
        d = s;
        g = l1;
        e = obj;
        f = s1;
        Calendar calendar = Calendar.getInstance();
        int i2 = calendar.getTimeZone().getOffset(calendar.getTimeInMillis());
        calendar.add(14, tn.a.getOffset(calendar.getTimeInMillis()) - i2);
        h = calendar.getTime();
        r = 0;
    }

    public tf(Bundle bundle)
    {
        i = "rp";
        j = "dt";
        k = "dp";
        l = "tag";
        m = "ov";
        n = "ev";
        o = "p";
        p = "t";
        q = "ot";
        a = bundle.getInt("rp");
        b = bundle.getInt("dt");
        c = bundle.getInt("dp");
        d = bundle.getString("tag");
        f = bundle.getString("ev");
        g = bundle.getInt("p");
        h = new Date(bundle.getLong("t"));
        e = a(bundle.getString("ov"), bundle.getInt("ot"));
        r = 0;
    }

    public tf(tx tx1, Object obj)
    {
        this(tx1.a(), tx1.b(), tx1.c(), tx1.d(), tx1.e(), obj, null);
    }

    private Object a(String s, int i1)
    {
        switch (i1)
        {
        default:
            s = null;
            // fall through

        case 8: // '\b'
            return s;

        case 10: // '\n'
            return s.getBytes();

        case 9: // '\t'
            JSONObject jsonobject;
            try
            {
                jsonobject = new JSONObject(s);
            }
            catch (JSONException jsonexception)
            {
                if (ud.d)
                {
                    Log.e("stat.Event", "Failed to getOriginalValue!", jsonexception);
                }
                return null;
            }
            return jsonobject;

        case 0: // '\0'
            return Byte.valueOf(Byte.parseByte(s));

        case 1: // '\001'
            return Short.valueOf(Short.parseShort(s));

        case 2: // '\002'
            return Integer.valueOf(Integer.parseInt(s));

        case 3: // '\003'
            return Long.valueOf(Long.parseLong(s));

        case 4: // '\004'
            return Float.valueOf(Float.parseFloat(s));

        case 5: // '\005'
            return Double.valueOf(Double.parseDouble(s));

        case 6: // '\006'
            return new BigInteger(s);

        case 7: // '\007'
            return new BigDecimal(s);
        }
    }

    public static String a(Context context, String s)
    {
        String s1 = context.getPackageName();
        return a(s1, uc.a(context, s1), s);
    }

    public static String a(String s, int i1, String s1)
    {
        return a(s, String.valueOf(i1), s1);
    }

    public static String a(String s, String s1, String s2)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("pkg", s);
            jsonobject.put("ver", s1);
            jsonobject.put("key", s2);
        }
        catch (JSONException jsonexception) { }
        return jsonobject.toString();
    }

    private String k()
    {
        if (e instanceof byte[])
        {
            return Arrays.toString((byte[])(byte[])e);
        }
        if (e instanceof JSONObject)
        {
            return ((JSONObject)e).toString();
        } else
        {
            return String.valueOf(e);
        }
    }

    public Bundle a()
    {
        Bundle bundle = new Bundle();
        bundle.putInt("rp", a);
        bundle.putInt("dt", b);
        bundle.putInt("dp", c);
        bundle.putString("tag", d);
        bundle.putInt("ot", sw.a(c, e));
        bundle.putString("ov", k());
        bundle.putString("ev", f);
        bundle.putInt("p", g);
        bundle.putLong("t", h.getTime());
        return bundle;
    }

    public void a(int i1)
    {
        r = i1;
    }

    public int b()
    {
        return a;
    }

    public void b(int i1)
    {
        g = i1;
    }

    public int c()
    {
        return b;
    }

    public int d()
    {
        return c;
    }

    public String e()
    {
        return d;
    }

    public int f()
    {
        return g;
    }

    public Object g()
    {
        return e;
    }

    public String h()
    {
        return f;
    }

    public Date i()
    {
        return h;
    }

    public int j()
    {
        return r;
    }

    public String toString()
    {
        return (new StringBuilder()).append("[").append(a).append(":").append(b).append(":").append(c).append(":").append(d).append(":").append(h).append(":").append(f).append(":").append(e).append("]").toString();
    }
}
