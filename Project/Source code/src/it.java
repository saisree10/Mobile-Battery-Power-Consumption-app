// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.HashSet;
import java.util.Set;

public class it
{

    public static boolean a = false;
    public static int b = 15;
    public static String c = "http://t1.tira.cn:8007/api/apps";
    public static final Set d;
    private static final Set e;
    private static volatile String f = "prod";

    public static int a()
    {
        String s = f;
        if ("prod".equals(s))
        {
            return 1;
        }
        if ("test".equals(s))
        {
            return 2;
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("illegal env:").append(s).toString());
        }
    }

    public static void a(String s)
    {
        if (e.contains(s))
        {
            f = s;
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("illegal env ").append(s).append(", only prod or test is available").toString());
        }
    }

    static 
    {
        e = new HashSet();
        e.add("prod");
        e.add("test");
        d = new HashSet();
        d.add("pkg");
        d.add("ver");
        d.add("asv");
        d.add("mod");
        d.add("dev");
        d.add("fig");
        d.add("size");
        d.add("md5");
        d.add("vc");
        d.add("vn");
        d.add("dspt");
        d.add("prt");
        d.add("time");
        d.add("sig");
        d.add("loc");
    }
}
