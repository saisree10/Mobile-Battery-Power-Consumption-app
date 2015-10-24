// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class lh extends lb
{

    public long g;
    public long h;
    public int i;
    public int j;
    public Map k;
    public List l;

    public lh(JSONObject jsonobject, long l1, long l2)
    {
        super(jsonobject);
        f = jsonobject;
        g = l1;
        h = l2;
        i = jsonobject.getInt("contentType");
        j = jsonobject.getInt("total");
        k = b(jsonobject.optJSONArray("images"));
        l = a(jsonobject.optJSONArray("datas"));
    }
}
