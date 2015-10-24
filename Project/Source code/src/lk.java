// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class lk extends lb
{

    public long g;
    public String h;
    public HashMap i;
    public boolean j;

    public lk(JSONObject jsonobject, long l)
    {
        super(jsonobject);
        g = l;
        h = jsonobject.optString("type", null);
        j = jsonobject.optBoolean("home");
        i = b(jsonobject.optJSONObject("datas"));
    }

    private static HashMap b(JSONObject jsonobject)
    {
        if (jsonobject == null)
        {
            return null;
        }
        Iterator iterator = jsonobject.keys();
        HashMap hashmap = new HashMap();
        do
        {
            if (!iterator.hasNext())
            {
                return hashmap;
            }
            String s = (String)iterator.next();
            JSONArray jsonarray = jsonobject.getJSONArray(s);
            int k = jsonarray.length();
            ArrayList arraylist = new ArrayList();
            hashmap.put(Integer.valueOf(Integer.parseInt(s)), arraylist);
            int l = 0;
            while (l < k) 
            {
                arraylist.add(c(jsonarray.getJSONObject(l)));
                l++;
            }
        } while (true);
    }

    private static List c(JSONArray jsonarray)
    {
        Object obj;
        if (jsonarray == null || jsonarray.length() == 0)
        {
            obj = null;
        } else
        {
            int k = jsonarray.length();
            obj = new ArrayList(k);
            int l = 0;
            while (l < k) 
            {
                ((List) (obj)).add(Long.valueOf(jsonarray.getLong(l)));
                l++;
            }
        }
        return ((List) (obj));
    }

    private static li c(JSONObject jsonobject)
    {
        return new li(jsonobject.getLong("id"), jsonobject.optLong("sort", 0L), c(jsonobject.optJSONArray("ad")));
    }

    public long[] a(int k)
    {
        List list = (List)i.get(Integer.valueOf(k));
        if (list == null)
        {
            return null;
        }
        long al[] = new long[list.size()];
        int l = 0;
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return al;
            }
            li li1 = (li)iterator.next();
            int i1 = l + 1;
            al[l] = li1.a;
            l = i1;
        } while (true);
    }
}
