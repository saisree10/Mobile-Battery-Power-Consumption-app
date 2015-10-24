// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class ank
{

    public static boolean a = false;
    public static String b;
    public static String c;

    public static void a(String s)
    {
        if (s.equals("prod"))
        {
            a = false;
            b = "http://mk.jccjd.com/cf/";
            c = "http://mk.jccjd.com/cf/rs";
            return;
        }
        if (s.equals("test"))
        {
            a = true;
            b = "http://t1.tira.cn:8125/cms/";
            c = "http://t1.tira.cn:8125/cms/rs";
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("illegal env ").append(s).append(", only prod, test and dev is available").toString());
        }
    }

}
