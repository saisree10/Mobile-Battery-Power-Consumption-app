// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import org.json.JSONObject;
import org.json.JSONStringer;

public class ns
{

    public long a;
    public long b;
    public long c;
    public long d;
    public int e;
    public String f;
    public String g;
    public long h;
    public String i;
    public boolean j;
    public boolean k;
    public long l;

    public ns()
    {
        e = 0;
        f = "empty_record";
    }

    public ns(ou ou1)
    {
        e = 0;
        a(ou1);
    }

    public String a()
    {
        return (new JSONStringer()).object().key("pid").value(a).key("tid").value(b).key("gid").value(c).key("id").value(d).key("points").value(e).key("pkg_name").value(f).key("ad_tag").value(g).key("time_clicked").value(h).key("source").value(i).key("new").value(j).key("recently").value(k).key("logId").value(l).endObject().toString();
    }

    public void a(String s)
    {
        if (s == null)
        {
            return;
        } else
        {
            JSONObject jsonobject = new JSONObject(s);
            a = jsonobject.getLong("pid");
            b = jsonobject.getLong("tid");
            c = jsonobject.getLong("gid");
            d = jsonobject.getLong("id");
            e = jsonobject.optInt("points");
            f = jsonobject.getString("pkg_name");
            g = jsonobject.optString("ad_tag", "DEFAULT");
            h = jsonobject.getLong("time_clicked");
            i = jsonobject.optString("source");
            j = jsonobject.optBoolean("new");
            k = jsonobject.optBoolean("recently");
            l = jsonobject.optLong("logId");
            return;
        }
    }

    public void a(ou ou1)
    {
        a = ou1.a;
        b = ou1.b;
        c = ou1.c;
        d = ou1.d;
        e = ou1.p;
        f = ou1.f;
        g = ou1.q;
        i = ou1.k;
        j = ou1.r;
        k = ou1.u;
        l = ou1.w;
    }
}
