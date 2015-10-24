// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Map;
import org.json.JSONObject;

public class ll extends lb
{

    public String g;
    public String h;
    public int i;
    public String j;
    public Map k;

    public ll(JSONObject jsonobject)
    {
        super(jsonobject);
        g = jsonobject.optString("shortDesc", null);
        h = jsonobject.optString("author", null);
        i = jsonobject.getInt("downloadCount");
        j = jsonobject.optString("tags", null);
        k = b(jsonobject.optJSONArray("images"));
    }
}
