// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import org.json.JSONException;
import org.json.JSONObject;

public class hb
{

    public he a;
    public hc b;
    public String c;

    public hb(String s, int i)
    {
        JSONObject jsonobject;
        jsonobject = new JSONObject(s);
        if (ij.a)
        {
            in.b("ADResponse", (new StringBuilder()).append(" got jso : ").append(jsonobject.toString()).toString());
        }
        if (jsonobject.has("responseHeader")) goto _L2; else goto _L1
_L1:
        a = null;
_L8:
        if (jsonobject.has("response")) goto _L4; else goto _L3
_L3:
        b = null;
_L6:
        in.b("ADResponse", (new StringBuilder()).append(" -------------------- has id align response.  ").append(jsonobject.has("id")).toString());
        if (jsonobject.has("id"))
        {
            c = jsonobject.getString("id");
            return;
        }
          goto _L5
_L2:
        JSONException jsonexception;
        a = new he();
        JSONObject jsonobject1 = jsonobject.getJSONObject("responseHeader");
        if (jsonobject1.has("status"))
        {
            a.a = jsonobject1.getString("status");
        }
        if (jsonobject1.has("errcode"))
        {
            a.b = jsonobject1.getInt("errcode");
        }
        if (jsonobject1.has("time"))
        {
            a.c = jsonobject1.getInt("time");
        }
        continue; /* Loop/switch isn't completed */
_L4:
        try
        {
            b = new hc(jsonobject.getJSONObject("response"));
        }
        // Misplaced declaration of an exception variable
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
            return;
        }
          goto _L6
_L5:
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public boolean a()
    {
        return a != null && a.b != 500;
    }

    public String toString()
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            if (a != null)
            {
                jsonobject.put("responseHeader", a.a());
            }
            if (b != null)
            {
                jsonobject.put("response", b.b());
            }
            if (c != null)
            {
                jsonobject.put("id", c);
            }
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        return jsonobject.toString();
    }
}
