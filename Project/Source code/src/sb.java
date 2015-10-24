// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.util.Log;
import org.json.JSONObject;

public class sb
{

    private static volatile sb a;
    private Context b;
    private boolean c;

    private sb(Context context)
    {
        b = context.getApplicationContext();
        if (!gu.a(b).a())
        {
            if (ud.b)
            {
                Log.w("stat.DXCore", "The app is in silent period!");
            }
            c = false;
            return;
        } else
        {
            c = true;
            return;
        }
    }

    static Context a(sb sb1)
    {
        return sb1.b;
    }

    private String a(String s)
    {
        if (s != null)
        {
            return (new StringBuilder()).append("_aip_").append(s).toString();
        } else
        {
            return "_appinfo_";
        }
    }

    static String a(sb sb1, String s)
    {
        return sb1.a(s);
    }

    public static sb a(Context context)
    {
        sb;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new sb(context);
        }
        sb;
        JVM INSTR monitorexit ;
        return a;
        Exception exception;
        exception;
        sb;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean a(String s, int i, int j, int k, JSONObject jsonobject)
    {
        return uf.a(new sc(this, jsonobject, k, s, i, j));
    }

    public void a()
    {
    }

    public void a(int i)
    {
        gw.a(i);
    }

    public boolean a(String s, int i, int j, int k, Object obj)
    {
        if (c) goto _L2; else goto _L1
_L1:
        if (ud.d)
        {
            Log.w("stat.DXCore", "The service is not start up!");
        }
_L4:
        return false;
_L2:
        if (s != null && s.length() != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        if (ud.d)
        {
            Log.e("stat.DXCore", (new StringBuilder()).append("Invalid key: ").append(s).append("! Please refer to api doc!").toString());
            return false;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (sv.a(i))
        {
            break; /* Loop/switch isn't completed */
        }
        if (ud.d)
        {
            Log.e("stat.DXCore", (new StringBuilder()).append("Invalid data policy: ").append(i).append("! Please refer to api doc!").toString());
            return false;
        }
        if (true) goto _L4; else goto _L5
_L5:
        if (sx.a(j))
        {
            break; /* Loop/switch isn't completed */
        }
        if (ud.d)
        {
            Log.e("stat.DXCore", (new StringBuilder()).append("Invalid report policy: ").append(j).append("! Please refer to api doc!").toString());
            return false;
        }
        if (true) goto _L4; else goto _L6
_L6:
        if (sy.a(k))
        {
            break; /* Loop/switch isn't completed */
        }
        if (ud.d)
        {
            Log.e("stat.DXCore", (new StringBuilder()).append("Invalid priority: ").append(k).append("! Please refer to api doc!").toString());
            return false;
        }
        if (true) goto _L4; else goto _L7
_L7:
        if (obj != null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (ud.d)
        {
            Log.e("stat.DXCore", "Invalid value which should be required.");
            return false;
        }
        if (true) goto _L4; else goto _L8
_L8:
        int l = sw.a(i, obj);
        if (!sw.a(l))
        {
            if (ud.d)
            {
                Log.e("stat.DXCore", (new StringBuilder()).append("Invalid data type for data policy ").append(i).append(": ").append(obj.getClass().getName()).append("! Please refer to api doc!").toString());
                return false;
            }
        } else
        {
            tf tf1 = new tf(j, l, i, tf.a(b, s), k, obj, null);
            return se.a(b).a(tf1);
        }
        if (true) goto _L4; else goto _L9
_L9:
    }

    public boolean a(String s, int i, int j, Object obj)
    {
        return a(s, i, j, 3, obj);
    }

    public boolean a(String s, int i, Object obj)
    {
        return a(s, i, 1, obj);
    }

    public boolean a(String s, String s1, Number number)
    {
        return a(s, 1, ud.a(s1, number));
    }

    public boolean a(String s, JSONObject jsonobject, int i)
    {
        return a(s, 1, 3, i, jsonobject);
    }

    public boolean a(tx tx1, Object obj)
    {
        if (!c)
        {
            if (ud.c)
            {
                Log.i("stat.DXCore", "The service is not start up!");
            }
            return false;
        } else
        {
            tf tf1 = new tf(tx1, obj);
            return se.a(b).a(tf1);
        }
    }

    public boolean b()
    {
        return a(new tx(0, 2, 1, tf.a(b, "start"), 1), Integer.valueOf(1));
    }

    public boolean c()
    {
        uf.a(new tz(b));
        return a(new tx(0, 2, 1, tf.a(b, "alive"), 1), Integer.valueOf(1));
    }
}
