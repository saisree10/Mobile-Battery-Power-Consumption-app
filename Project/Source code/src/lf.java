// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Map;
import org.json.JSONObject;

public class lf extends lb
{

    public String g;
    public String h;
    public int i;
    public long j;
    public String k;
    public String l;
    public int m;
    public String n;
    public String o;
    public String p;
    public String q;
    public double r;
    public int s;
    public long t;
    public String u;
    public Map v;

    public lf(JSONObject jsonobject)
    {
        super(jsonobject);
        g = jsonobject.getString("pkg");
        h = jsonobject.getString("versionName");
        i = jsonobject.getInt("versionCode");
        j = jsonobject.getLong("size");
        k = jsonobject.optString("author", null);
        l = jsonobject.optString("shortDesc", null);
        m = jsonobject.optInt("downloadCount");
        n = jsonobject.getString("downloadUrl");
        o = jsonobject.optString("language", null);
        p = jsonobject.optString("tags", null);
        q = jsonobject.optString("categories", null);
        r = jsonobject.optDouble("rating");
        s = jsonobject.optInt("ratingCount");
        t = jsonobject.optLong("modifiedTime");
        u = jsonobject.optString("supportUrl", null);
        v = b(jsonobject.optJSONArray("images"));
    }
}
