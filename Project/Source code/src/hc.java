// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class hc
{

    public String a;
    public String b;
    public String c;
    public String d;
    public long e;
    public int f;
    public int g;
    public String h;
    public long i;
    public ArrayList j;
    public String k;
    public String l;
    public hd m[];

    public hc(JSONObject jsonobject)
    {
        b = "default_not_null";
        g = -1;
        h = "";
        i = 0L;
        j = new ArrayList();
        in.b("ADResponseContent", (new StringBuilder()).append(" got jso object for content: ").append(jsonobject.toString()).toString());
        JSONArray jsonarray;
        if (jsonobject.has("id"))
        {
            b = jsonobject.getString("id");
        }
        if (jsonobject.has("title"))
        {
            c = jsonobject.getString("title");
        }
        if (jsonobject.has("statusBarIcon"))
        {
            h = jsonobject.getString("statusBarIcon");
        }
        i = jsonobject.optInt("allowDelay", 0);
        jsonarray = jsonobject.optJSONArray("blackPkgs");
        if (jsonarray == null) goto _L2; else goto _L1
_L1:
        int i2 = 0;
_L3:
        if (i2 >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        in.b("ADResponseContent", (new StringBuilder()).append(" black list get index ").append(i2).append(" pkgname ").append(jsonarray.getString(i2)).toString());
        j.add(jsonarray.getString(i2));
        i2++;
        if (true) goto _L3; else goto _L2
_L2:
        if (jsonobject.has("id"))
        {
            a = jsonobject.getString("id");
        }
        if (jsonobject.has("description"))
        {
            d = jsonobject.getString("description");
        }
        if (jsonobject.has("next"))
        {
            e = jsonobject.getLong("next");
        }
        if (jsonobject.has("icon"))
        {
            l = jsonobject.getString("icon");
        }
        if (jsonobject.has("type"))
        {
            g = jsonobject.getInt("type");
        }
        if (jsonobject.has("version"))
        {
            k = jsonobject.getString("version");
        }
        if (jsonobject.has("action"))
        {
            f = jsonobject.getInt("action");
        }
        if (!jsonobject.has("datas")) goto _L5; else goto _L4
_L4:
        JSONArray jsonarray1;
        int i1;
        jsonarray1 = jsonobject.getJSONArray("datas");
        i1 = jsonarray1.length();
        m = new hd[i1];
        int j1 = 0;
_L13:
        if (j1 >= i1) goto _L5; else goto _L6
_L6:
        JSONObject jsonobject1;
        jsonobject1 = jsonarray1.getJSONObject(j1);
        m[j1] = new hd();
        m[j1].d = jsonobject1.optString("description");
        m[j1].g = jsonobject1.optString("download");
        m[j1].f = jsonobject1.optString("pkg");
        m[j1].a = jsonobject1.optString("summary");
        m[j1].b = jsonobject1.optString("title");
        m[j1].k = jsonobject1.optInt("template");
        if (m[j1].k == 0)
        {
            m[j1].k = 3;
        }
        if (m[j1].k != 2) goto _L8; else goto _L7
_L7:
        m[j1].c = 1;
_L11:
        JSONArray jsonarray2;
        in.b("ADResponseContent", (new StringBuilder()).append(" got title: ").append(m[j1].b).toString());
        m[j1].i = jsonobject1.optInt("type");
        if (m[j1].i < 1)
        {
            m[j1].i = 1;
        }
        m[j1].e = jsonobject1.optInt("versionCode");
        m[j1].h = jsonobject1.optString("versionName");
        jsonarray2 = jsonobject1.getJSONArray("icons");
        int k1 = jsonarray2.length();
        m[j1].j = new String[k1];
        int l1 = 0;
_L10:
        if (l1 >= jsonarray2.length())
        {
            break; /* Loop/switch isn't completed */
        }
        m[j1].j[l1] = jsonarray2.getString(l1);
        in.b("ADResponseContent", (new StringBuilder()).append(" got url ").append(l1).append(" :").append(m[j1].j[l1]).toString());
        l1++;
        if (true) goto _L10; else goto _L9
_L8:
        m[j1].c = 0;
          goto _L11
        JSONException jsonexception;
        jsonexception;
        jsonexception.printStackTrace();
_L5:
        return;
_L9:
        m[j1].l = jsonobject1.optString("button");
        j1++;
        if (true) goto _L13; else goto _L12
_L12:
    }

    public int a(Context context)
    {
        if (c == null || d == null)
        {
            in.b("ADResponseContent", (new StringBuilder()).append(" title: ").append(c).append("  des: ").append(d).append("  ").append(l).toString());
            return -1;
        } else
        {
            return b(context);
        }
    }

    public void a()
    {
        try
        {
            in.b("ADResponseContent", (new StringBuilder()).append("show content:    ").append(c).append("  ").append(d).append("").append(f).toString());
            if (ij.a && m != null && m[0] != null)
            {
                hd hd1 = m[0];
                in.b("ADResponseContent", (new StringBuilder()).append(" ").append(hd1.b).append(" ").append(hd1.d).append("  ").append(hd1.g).toString());
            }
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public int b(Context context)
    {
        return im.a(context, l) == null ? 0 : 1;
    }

    public JSONObject b()
    {
        JSONObject jsonobject;
        JSONArray jsonarray;
        jsonobject = new JSONObject();
        try
        {
            jsonobject.put("id", b);
            jsonobject.put("title", c);
            jsonobject.put("description", d);
            jsonobject.put("next", e);
            jsonobject.put("icon", l);
            jsonobject.put("type", g);
            jsonobject.put("version", k);
            jsonobject.put("id", a);
            jsonobject.put("allowDelay", i);
            jsonobject.put("statusBarIcon", h);
            jsonarray = new JSONArray();
            for (Iterator iterator = j.iterator(); iterator.hasNext(); jsonarray.put((String)iterator.next())) { }
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
            return jsonobject;
        }
        JSONArray jsonarray1;
        jsonobject.put("blackPkgs", jsonarray);
        jsonarray1 = new JSONArray();
        new JSONObject();
        new JSONArray();
        if (m == null) goto _L2; else goto _L1
_L1:
        int i1 = m.length;
        int j1 = 0;
_L5:
        if (j1 >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject1;
        JSONArray jsonarray2;
        jsonobject1 = new JSONObject();
        jsonobject1.put("description", m[j1].d);
        jsonobject1.put("download", m[j1].g);
        jsonobject1.put("pkg", m[j1].f);
        jsonobject1.put("summary", m[j1].a);
        jsonobject1.put("title", m[j1].b);
        jsonobject1.put("type", m[j1].i);
        jsonobject1.put("versionCode", m[j1].e);
        jsonobject1.put("versionName", m[j1].h);
        jsonobject1.put("template", m[j1].k);
        jsonobject1.put("button", m[j1].l);
        jsonarray2 = new JSONArray();
        int k1 = 0;
_L4:
        if (k1 >= m[j1].j.length)
        {
            break; /* Loop/switch isn't completed */
        }
        jsonarray2.put(m[j1].j[k1]);
        k1++;
        if (true) goto _L4; else goto _L3
_L3:
        jsonobject1.put("icons", jsonarray2);
        jsonarray1.put(jsonobject1);
        j1++;
        if (true) goto _L5; else goto _L2
_L2:
        jsonobject.put("datas", jsonarray1);
        return jsonobject;
    }

    public int c(Context context)
    {
        int i1 = a(context);
        in.b("ADResponseContent", (new StringBuilder()).append(" status state: ").append(i1).toString());
        if (i1 < 1)
        {
            return i1;
        }
        if (m == null || m.length < 1)
        {
            return -2;
        }
        int j1 = m.length;
        for (int k1 = 0; k1 < j1; k1++)
        {
            int l1 = m[k1].a(context);
            if (l1 != 1)
            {
                in.b("ADResponseContent", (new StringBuilder()).append(" data of index: ").append(k1).append(" can't be shown").toString());
                return l1;
            }
        }

        return 1;
    }
}
