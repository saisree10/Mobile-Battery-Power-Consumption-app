// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public abstract class lb
{

    public long a;
    public int b;
    public String c;
    public String d;
    public String e;
    public JSONObject f;

    public lb(JSONObject jsonobject)
    {
        f = jsonobject;
        a = jsonobject.getLong("id");
        c = jsonobject.optString("title", null);
        d = jsonobject.optString("description", null);
        e = jsonobject.optString("ext", null);
        b = jsonobject.optInt("type", -1);
    }

    public static List a(JSONArray jsonarray)
    {
        ArrayList arraylist = new ArrayList();
        if (jsonarray == null) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        i = jsonarray.length();
        j = 0;
_L5:
        if (j < i) goto _L3; else goto _L2
_L2:
        return arraylist;
_L3:
        arraylist.add(a(jsonarray.getJSONObject(j)));
        j++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static List a(JSONArray jsonarray, long l, long l1)
    {
        ArrayList arraylist = new ArrayList();
        int i = jsonarray.length();
        int j = 0;
        do
        {
            if (j >= i)
            {
                return arraylist;
            }
            arraylist.add(new lh(jsonarray.getJSONObject(j), l, l1));
            j++;
        } while (true);
    }

    public static lb a(JSONObject jsonobject)
    {
        if (jsonobject.length() < 1)
        {
            return null;
        }
        int i = jsonobject.getInt("type");
        if (i == 2)
        {
            return new le(jsonobject);
        }
        if (i == 1)
        {
            return new lf(jsonobject);
        }
        if (i == 3)
        {
            return new ll(jsonobject);
        }
        if (i == 9)
        {
            return new lc(jsonobject);
        } else
        {
            return new ld(jsonobject);
        }
    }

    public static Map b(JSONArray jsonarray)
    {
        if (jsonarray == null || jsonarray.length() == 0)
        {
            return null;
        }
        HashMap hashmap = new HashMap();
        int i = jsonarray.length();
        int j = 0;
        do
        {
            if (j >= i)
            {
                return hashmap;
            }
            lg lg1 = new lg(jsonarray.getJSONObject(j));
            Object obj = (List)hashmap.get(Integer.valueOf(lg1.b));
            if (obj == null)
            {
                obj = new ArrayList();
                hashmap.put(Integer.valueOf(lg1.b), obj);
            }
            ((List) (obj)).add(lg1);
            j++;
        } while (true);
    }
}
