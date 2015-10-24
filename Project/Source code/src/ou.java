// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.HashSet;

public class ou
{

    private static final HashSet x;
    public long a;
    public long b;
    public long c;
    public long d;
    public String e;
    public String f;
    public String g;
    public String h;
    public int i;
    public int j;
    public String k;
    public String l;
    public String m;
    public String n;
    public int o;
    public int p;
    public String q;
    public boolean r;
    public long s;
    public boolean t;
    public boolean u;
    public long v;
    public long w;

    public ou()
    {
        j = -1;
        k = "none";
        r = false;
    }

    private static boolean a(String s1, String s2)
    {
        if (s1 == null)
        {
            return s2 == null;
        } else
        {
            return s1.equals(s2);
        }
    }

    public boolean a()
    {
        return j == 0 || j == 1;
    }

    public boolean a(ou ou1)
    {
        return a(m, ou1.m) && a(n, ou1.n) && a(f, ou1.f) && a(h, ou1.h) && a(e, ou1.e) && a(l, ou1.l) && a == ou1.a && b == ou1.b && c == ou1.c && d == ou1.d && o == ou1.o && p == ou1.p && r == ou1.r;
    }

    public String b()
    {
        return "adTag=" + q + "; openType=" + j + "; urlSource=" + k + "; name=" + e + "; pkgName=" + f + "; pos=" + i;
    }

    public String toString()
    {
        return "adTag=" + q + "; pid=" + a + "; tid=" + b + "; gid=" + c + "; iid=" + d + "; name=" + e + "; pkgName=" + f + "; shortDesc=" + h + "; pos=" + i + "; openType=" + j + "; urlSource=" + k + "; iconUrl=" + l + "; playUrl=" + m + "; pts=" + o + "; points=" + p;
    }

    static 
    {
        x = new HashSet();
        x.add("sites");
        x.add("yeahmobi");
        x.add("matomy");
        x.add("kissmyads");
        x.add("applift");
        x.add("glispa");
        x.add("appflood");
        x.add("efun");
        x.add("motiveinteractive");
        x.add("apploop");
        x.add("performence");
        x.add("admobix");
    }
}
