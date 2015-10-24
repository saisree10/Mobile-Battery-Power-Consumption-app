// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class aon
{

    public ArrayList a;
    public String b;
    public String c;
    public String d;

    public aon()
    {
        a = new ArrayList();
    }

    public static aon a(String s)
    {
        aon aon1 = new aon();
        JSONArray jsonarray;
        JSONObject jsonobject = new JSONObject(s);
        aon1.b = jsonobject.optString("title");
        aon1.c = jsonobject.optString("des");
        aon1.d = jsonobject.optString("imageUrl");
        jsonarray = jsonobject.optJSONArray("items");
        int i = 0;
_L2:
        if (i >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject1 = (JSONObject)jsonarray.get(i);
        aon1.a.add(new aev(jsonobject1));
        i++;
        if (true) goto _L2; else goto _L1
        JSONException jsonexception;
        jsonexception;
        jsonexception.printStackTrace();
        aoj.b(jsonexception.getMessage());
_L1:
        return aon1;
    }

    public String a()
    {
        JSONObject jsonobject = new JSONObject();
        JSONException jsonexception;
        JSONArray jsonarray;
        jsonobject.putOpt("title", b);
        jsonobject.putOpt("des", c);
        jsonobject.putOpt("imageUrl", d);
        jsonarray = new JSONArray();
        for (Iterator iterator = a.iterator(); iterator.hasNext(); jsonarray.put(((aev)iterator.next()).f)) { }
          goto _L1
_L3:
        return jsonobject.toString();
_L1:
        try
        {
            jsonobject.put("items", jsonarray);
        }
        // Misplaced declaration of an exception variable
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
            aoj.b(jsonexception.getMessage());
        }
        if (true) goto _L3; else goto _L2
_L2:
    }
}
