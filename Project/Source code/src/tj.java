// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import org.json.JSONObject;

public final class tj
{

    private static final Long a = Long.valueOf(10000L);
    private ts b;
    private final tr c;
    private final tp d;
    private final to e;
    private final Context f;
    private Runnable g;
    private Queue h;

    public tj(Context context)
    {
        g = new tk(this);
        h = new LinkedList();
        f = context;
        c = new tr(f);
        d = new tp(f);
        e = new to(f, "sk");
    }

    private Number a(Number number, Number number1)
    {
        if (number1 == null)
        {
            number = null;
        } else
        {
            if (number instanceof Byte)
            {
                return Integer.valueOf(number.byteValue() + number1.byteValue());
            }
            if (number instanceof Short)
            {
                return Integer.valueOf(number.intValue() + number1.intValue());
            }
            if (number instanceof Integer)
            {
                return Long.valueOf(number.longValue() + number1.longValue());
            }
            if (number instanceof Long)
            {
                return Long.valueOf(number.longValue() + number1.longValue());
            }
            if (number instanceof Float)
            {
                return Double.valueOf(number.doubleValue() + number1.doubleValue());
            }
            if (number instanceof Double)
            {
                return Double.valueOf(number.doubleValue() + number1.doubleValue());
            }
            if (number instanceof BigInteger)
            {
                return ((BigInteger)number).add((BigInteger)number1);
            }
            if (number instanceof BigDecimal)
            {
                return ((BigDecimal)number).add((BigDecimal)number1);
            }
        }
        return number;
    }

    private static Object a(int i, String s)
    {
        if (10 == i)
        {
            s = s.getBytes();
        } else
        {
            if (9 == i)
            {
                return new JSONObject(s);
            }
            if (i == 0)
            {
                return Byte.valueOf(Byte.parseByte(s));
            }
            if (1 == i)
            {
                return Short.valueOf(Short.parseShort(s));
            }
            if (2 == i)
            {
                return Integer.valueOf(Integer.parseInt(s));
            }
            if (3 == i)
            {
                return Long.valueOf(Long.parseLong(s));
            }
            if (4 == i)
            {
                return Float.valueOf(Float.parseFloat(s));
            }
            if (5 == i)
            {
                return Double.valueOf(Double.parseDouble(s));
            }
            if (6 == i)
            {
                return new BigInteger(s);
            }
            if (7 == i)
            {
                return new BigDecimal(s);
            }
        }
        return s;
    }

    private static String a(int i, Object obj)
    {
        if (10 == i)
        {
            return new String((byte[])(byte[])obj);
        } else
        {
            return obj.toString();
        }
    }

    static Queue a(tj tj1)
    {
        return tj1.h;
    }

    static Queue a(tj tj1, Queue queue)
    {
        tj1.h = queue;
        return queue;
    }

    private boolean a(String s, tf tf1)
    {
        String s1;
        String s2;
        String s3;
        String s4;
        String s6;
        JSONObject jsonobject;
        JSONObject jsonobject3;
        Iterator iterator1;
        boolean flag3;
        String s14;
        try
        {
            s1 = tg.a(f);
        }
        catch (Exception exception)
        {
            if (ud.d)
            {
                Log.e("stat.EventDispatcher", "Failed to push the event.", exception);
            }
            return false;
        }
        if (s1 == null)
        {
            return false;
        }
        s2 = tg.a();
        s3 = te.b(tf1.e(), s2);
        s4 = te.a(s2, s1);
        if (1 != tf1.d()) goto _L2; else goto _L1
_L1:
        if (9 != tf1.c()) goto _L4; else goto _L3
_L3:
        if (tf1.g() == null) goto _L6; else goto _L5
_L5:
        jsonobject3 = (JSONObject)tf1.g();
_L10:
        jsonobject = new JSONObject();
        iterator1 = jsonobject3.keys();
_L9:
        flag3 = iterator1.hasNext();
        s6 = null;
        if (!flag3) goto _L8; else goto _L7
_L7:
        s14 = (String)iterator1.next();
        jsonobject.put(te.b(s14, s2), jsonobject3.get(s14));
          goto _L9
_L6:
        jsonobject3 = (JSONObject)a(tf1.c(), tf1.h());
          goto _L10
_L2:
        if (3 != tf1.d()) goto _L12; else goto _L11
_L11:
        if (tf1.g() == null) goto _L14; else goto _L13
_L13:
        String s13 = a(tf1.c(), tf1.g());
        jsonobject = null;
        s6 = s13;
_L8:
        th th1;
        SharedPreferences sharedpreferences;
        String s7;
        int i;
        th1 = c.a(s);
        sharedpreferences = f.getSharedPreferences(s, 0);
        s7 = sharedpreferences.getString("pk", null);
        i = sharedpreferences.getInt("pkv", 0);
        th1.a();
        if (s7 == null)
        {
            break MISSING_BLOCK_LABEL_288;
        }
        if (!s7.equals(s1))
        {
            th1.a(i);
        }
        if (s7 == null)
        {
            break MISSING_BLOCK_LABEL_303;
        }
        if (s7.equals(s1))
        {
            break MISSING_BLOCK_LABEL_349;
        }
        android.content.SharedPreferences.Editor editor;
        editor = sharedpreferences.edit();
        editor.putString("pk", s1);
        i++;
        editor.putInt("pkv", i);
        editor.commit();
        if (1 != tf1.d()) goto _L16; else goto _L15
_L15:
        String s8 = th1.a(s3, tf1.i(), s4);
        if (s8 == null) goto _L18; else goto _L17
_L17:
        if (9 != tf1.c()) goto _L20; else goto _L19
_L19:
        JSONObject jsonobject1;
        JSONObject jsonobject2;
        Iterator iterator;
        jsonobject1 = (JSONObject)a(tf1.c(), s8);
        jsonobject2 = (JSONObject)jsonobject;
        iterator = jsonobject2.keys();
_L25:
        if (!iterator.hasNext()) goto _L22; else goto _L21
_L21:
        String s10;
        Number number3;
        s10 = (String)iterator.next();
        number3 = (Number)jsonobject2.get(s10);
        if (!jsonobject1.has(s10)) goto _L24; else goto _L23
_L23:
        jsonobject1.put(s10, a((Number)jsonobject1.get(s10), number3));
          goto _L25
        Exception exception1;
        exception1;
        th1.b();
        throw exception1;
_L14:
        s6 = tf1.h();
        jsonobject = null;
          goto _L8
_L12:
        if (tf1.g() == null)
        {
            break MISSING_BLOCK_LABEL_538;
        }
        s6 = te.b(a(tf1.c(), tf1.g()), s2);
        jsonobject = null;
          goto _L8
        String s5 = te.b(tf1.h(), s2);
        s6 = s5;
        jsonobject = null;
          goto _L8
_L24:
        jsonobject1.put(s10, number3);
          goto _L25
_L22:
        String s9 = a(tf1.c(), jsonobject1);
_L26:
        boolean flag1 = th1.a(s3, s9, tf1.i(), s4);
        th1.b();
        return flag1;
_L20:
        Number number;
        Number number1;
        number = (Number)a(tf1.c(), s8);
        if (tf1.g() == null)
        {
            break MISSING_BLOCK_LABEL_662;
        }
        number1 = (Number)tf1.g();
_L27:
        Number number2 = a(number, number1);
        s9 = a(tf1.c(), number2);
          goto _L26
        number1 = (Number)a(tf1.c(), tf1.h());
          goto _L27
_L18:
        if (9 != tf1.c()) goto _L29; else goto _L28
_L28:
        String s12 = a(tf1.c(), jsonobject);
_L30:
        boolean flag2 = th1.a(s3, tf1.c(), tf1.d(), s12, tf1.i(), s4, i, tf1.f());
        th1.b();
        return flag2;
_L29:
        String s11;
        if (tf1.h() != null)
        {
            s11 = tf1.h();
            break MISSING_BLOCK_LABEL_820;
        }
        s11 = a(tf1.c(), tf1.g());
        break MISSING_BLOCK_LABEL_820;
_L16:
        boolean flag = th1.a(s3, tf1.c(), tf1.d(), s6, tf1.i(), s4, i, tf1.f());
        th1.b();
        return flag;
_L4:
        jsonobject = null;
        s6 = null;
          goto _L8
        s12 = s11;
          goto _L30
    }

    private boolean a(tf tf1)
    {
        return uf.a(new tl(this, tf1));
    }

    private boolean a(tf tf1, String s)
    {
        boolean flag = a(s, tf1);
        if (flag)
        {
            if (ud.c)
            {
                Log.i("stat.EventDispatcher", (new StringBuilder()).append("Push to db ").append(s).append(" success!").toString());
            }
            if ("d".equals(s))
            {
                e.a(tf1.e(), System.currentTimeMillis());
            }
            c();
        } else
        if (ud.c)
        {
            Log.i("stat.EventDispatcher", (new StringBuilder()).append("Push event:").append(tf1).append(" to ").append(s).append(" db failed!").toString());
            return flag;
        }
        return flag;
    }

    static boolean a(tj tj1, tf tf1)
    {
        return tj1.b(tf1);
    }

    static Runnable b(tj tj1)
    {
        return tj1.g;
    }

    private boolean b(tf tf1)
    {
        if (ud.b)
        {
            Log.d("stat.EventDispatcher", (new StringBuilder()).append("HandleEvent :").append(tf1.toString()).toString());
        }
        if (tf1.b() == 0)
        {
            if (e.a(tf1.e()))
            {
                tf1.b(3 + tf1.f());
                return a(tf1, "i");
            } else
            {
                return a(tf1, "d");
            }
        }
        if (1 == tf1.b())
        {
            return a(tf1, "i");
        } else
        {
            return false;
        }
    }

    static tp c(tj tj1)
    {
        return tj1.d;
    }

    static Long d()
    {
        return a;
    }

    public void a()
    {
        if (ud.b)
        {
            Log.d("stat.EventDispatcher", "Start!");
        }
    }

    public boolean a(tf tf1, boolean flag)
    {
        if (ud.b)
        {
            Log.d("stat.EventDispatcher", (new StringBuilder()).append("DispatchEvent:event=").append(tf1).toString());
        }
        if (b == null)
        {
            b = new ts(f);
            b.a();
        }
        if (flag)
        {
            return a(tf1);
        } else
        {
            return b(tf1);
        }
    }

    public void b()
    {
        if (ud.b)
        {
            Log.d("stat.EventDispatcher", "Shutdown!");
        }
        if (b != null)
        {
            b.b();
        }
    }

    public boolean c()
    {
        return uf.a(new tm(this));
    }

}
