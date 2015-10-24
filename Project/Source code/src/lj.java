// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class lj extends lb
{

    public List g;

    public lj(JSONObject jsonobject)
    {
        super(jsonobject);
        g = a(jsonobject.optJSONArray("tabs"), a);
    }

    private static List a(JSONArray jsonarray, long l)
    {
        Object obj;
        if (jsonarray == null || jsonarray.length() == 0)
        {
            obj = null;
        } else
        {
            int i = jsonarray.length();
            obj = new ArrayList(i);
            int j = 0;
            while (j < i) 
            {
                ((List) (obj)).add(new lk(jsonarray.getJSONObject(j), l));
                j++;
            }
        }
        return ((List) (obj));
    }

    public int a()
    {
        if (g != null)
        {
            return g.size();
        } else
        {
            return 0;
        }
    }
}
