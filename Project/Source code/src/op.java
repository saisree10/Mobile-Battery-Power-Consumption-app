// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONStringer;

public class op
{

    private static String a(Context context, String s, List list, boolean flag)
    {
        JSONStringer jsonstringer1;
        long l1;
        ou ou1 = (ou)list.get(0);
        String s1 = gy.o(context);
        String s2 = gy.s(context);
        JSONStringer jsonstringer;
        long l;
        Iterator iterator;
        ou ou2;
        JSONStringer jsonstringer2;
        try
        {
            jsonstringer = (new JSONStringer()).object().key("tb_action").value(s).key("ad_tag").value(ou1.q).key("pid").value(ou1.a).key("tid").value(ou1.b).key("gid").value(ou1.c).key("op").value(s1).key("locale").value(s2).key("logId").value(ou1.w).key("ts").value(System.currentTimeMillis()).key("back");
        }
        catch (JSONException jsonexception)
        {
            return "";
        }
        if (flag)
        {
            l = 1L;
        } else
        {
            l = 0L;
        }
        jsonstringer1 = jsonstringer.value(l).key("ads").array();
        iterator = list.iterator();
_L1:
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_322;
        }
        ou2 = (ou)iterator.next();
        jsonstringer2 = jsonstringer1.object().key("pkg_name").value(ou2.f).key("id").value(ou2.d).key("show_pos").value(1 + ou2.i).key("ins");
        if (ou2.t)
        {
            l1 = 1L;
        } else
        {
            l1 = 0L;
        }
        jsonstringer2.value(l1).key("new").value(ou2.r).key("recently").value(ou2.u).endObject();
          goto _L1
        String s3;
        jsonstringer1.endArray().endObject();
        s3 = jsonstringer1.toString();
        return s3;
    }

    private static String a(Context context, String s, ou ou1)
    {
        String s1 = gy.o(context);
        String s2 = gy.s(context);
        String s3;
        try
        {
            s3 = (new JSONStringer()).object().key("tb_action").value(s).key("ad_tag").value(ou1.q).key("pkg_name").value(ou1.f).key("id").value(ou1.d).key("pid").value(ou1.a).key("tid").value(ou1.b).key("gid").value(ou1.c).key("show_pos").value(1 + ou1.i).key("op").value(s1).key("locale").value(s2).key("logId").value(ou1.w).key("recently").value(ou1.u).key("ts").value(System.currentTimeMillis()).endObject().toString();
        }
        catch (JSONException jsonexception)
        {
            return "";
        }
        return s3;
    }

    private static String a(Context context, String s, ou ou1, String s1)
    {
        String s2 = gy.o(context);
        String s3 = gy.s(context);
        String s4;
        try
        {
            JSONStringer jsonstringer = (new JSONStringer()).object().key("tb_action").value(s).key("ad_tag").value(ou1.q).key("pkg_name").value(ou1.f).key("id").value(ou1.d).key("pid").value(ou1.a).key("tid").value(ou1.b).key("gid").value(ou1.c).key("show_pos").value(1 + ou1.i).key("op").value(s2).key("locale").value(s3).key("logId").value(ou1.w).key("recently").value(ou1.u).key("ts").value(System.currentTimeMillis());
            if (!TextUtils.isEmpty(s1) && s1.length() < 500)
            {
                jsonstringer.key("url").value(s1);
            }
            jsonstringer.endObject();
            s4 = jsonstringer.toString();
        }
        catch (JSONException jsonexception)
        {
            return "";
        }
        return s4;
    }

    public static void a(Context context)
    {
        a(context, "toolbox", b(context, "home", null));
    }

    public static void a(Context context, String s)
    {
        a(context, "toolbox", b(context, "toolbox", s));
    }

    private static void a(Context context, String s, String s1)
    {
        nz.b("StatsReportHelper", s1);
        sb.a(context).a(s, 0, 1, 4, s1);
    }

    public static void a(Context context, List list, boolean flag)
    {
        if (list == null || list.size() == 0)
        {
            return;
        } else
        {
            a(context, "toolbox", a(context, "tsl", list, flag));
            return;
        }
    }

    public static void a(Context context, ns ns1)
    {
        a(context, "toolbox", b(context, ns1));
    }

    public static void a(Context context, ou ou1)
    {
        if (ou1 == null)
        {
            return;
        } else
        {
            ArrayList arraylist = new ArrayList();
            arraylist.add(ou1);
            a(context, ((List) (arraylist)), false);
            return;
        }
    }

    public static void a(Context context, ou ou1, String s)
    {
        oq.a(context).b(ou1);
        a(context, "toolbox", a(context, "tctb", ou1, s));
    }

    private static String b(Context context, String s, String s1)
    {
        String s2 = gy.o(context);
        String s3 = gy.s(context);
        JSONStringer jsonstringer;
        String s4;
        try
        {
            jsonstringer = (new JSONStringer()).object().key("tb_action").value(s).key("op").value(s2).key("locale").value(s3).key("ts").value(System.currentTimeMillis());
        }
        catch (JSONException jsonexception)
        {
            return "";
        }
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        jsonstringer.key("ad_tag").value(s1);
        jsonstringer.endObject();
        s4 = jsonstringer.toString();
        return s4;
    }

    private static String b(Context context, ns ns1)
    {
        String s2;
        try
        {
            long l = System.currentTimeMillis() - ns1.h;
            String s = gy.o(context);
            String s1 = gy.s(context);
            s2 = (new JSONStringer()).object().key("tb_action").value("thi").key("pid").value(ns1.a).key("tid").value(ns1.b).key("gid").value(ns1.c).key("ad_tag").value(ns1.g).key("id").value(ns1.d).key("pkg_name").value(ns1.f).key("time_diff").value(l).key("op").value(s).key("locale").value(s1).key("new").value(ns1.j).key("recently").value(ns1.k).key("logId").value(ns1.l).key("ts").value(System.currentTimeMillis()).endObject().toString();
        }
        catch (JSONException jsonexception)
        {
            return "";
        }
        return s2;
    }

    public static void b(Context context, ou ou1)
    {
        a(context, "toolbox", a(context, "tctc", ou1));
    }

    public static void c(Context context, ou ou1)
    {
        oq.a(context).b(ou1);
        a(context, "toolbox", a(context, "tctp", ou1));
    }

    public static void d(Context context, ou ou1)
    {
        a(context, "toolbox", a(context, "tcta", ou1));
    }

    public static void e(Context context, ou ou1)
    {
        a(context, "toolbox", a(context, "tct", ou1));
    }

    public static void f(Context context, ou ou1)
    {
        a(context, "toolbox", a(context, "tcnn", ou1));
    }

    public static void g(Context context, ou ou1)
    {
        a(context, "toolbox", a(context, "tccu", ou1));
    }
}
