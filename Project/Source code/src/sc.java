// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

class sc
    implements Runnable
{

    final JSONObject a;
    final int b;
    final String c;
    final int d;
    final int e;
    final sb f;

    sc(sb sb1, JSONObject jsonobject, int i, String s, int j, int k)
    {
        f = sb1;
        a = jsonobject;
        b = i;
        c = s;
        d = j;
        e = k;
        super();
    }

    public void run()
    {
        Iterator iterator;
        JSONObject jsonobject;
        JSONObject jsonobject1;
        JSONObject jsonobject2;
        iterator = a.keys();
        jsonobject = new JSONObject();
        jsonobject1 = new JSONObject();
        jsonobject2 = new JSONObject();
_L8:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Object obj;
        obj = iterator.next();
        if (!(obj instanceof String))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!"total".equals(obj)) goto _L4; else goto _L3
_L3:
        try
        {
            jsonobject2.put("total", a.get("total"));
            continue; /* Loop/switch isn't completed */
        }
        catch (JSONException jsonexception2)
        {
            if (ud.d)
            {
                Log.e("stat.DXCore", "Parse appInfo total has exception!", jsonexception2);
            }
        }
_L6:
        return;
_L4:
        String s = (String)obj;
        String s1 = uc.a(sb.a(f), s);
        String s2 = String.valueOf(uc.b(sb.a(f), s));
        String s3 = uc.c(sb.a(f), s);
        if (s3 != null && s3.length() > 0)
        {
            JSONObject jsonobject3 = new JSONObject();
            try
            {
                jsonobject3.put("vc", s2);
                jsonobject3.put("vn", s1);
                jsonobject3.put("sign", s3);
                jsonobject.put(s, jsonobject3);
                jsonobject1.put(s, a.get(s));
            }
            catch (JSONException jsonexception1)
            {
                if (ud.d)
                {
                    Log.e("stat.DXCore", "Paser appInfo has exception!", jsonexception1);
                }
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        jsonobject2.put("version", b);
        jsonobject2.put("appInfo", jsonobject);
        jsonobject2.put("data", jsonobject1);
        if (ud.c)
        {
            Log.i("stat.DXCore", (new StringBuilder()).append("reportAppInfo : ").append(jsonobject2.toString()).toString());
        }
        f.a(sb.a(f, c), 0, d, e, jsonobject2.toString());
        return;
        JSONException jsonexception;
        jsonexception;
        if (!ud.d) goto _L6; else goto _L5
_L5:
        Log.e("stat.DXCore", "Put to appInfo result has exception!", jsonexception);
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }
}
