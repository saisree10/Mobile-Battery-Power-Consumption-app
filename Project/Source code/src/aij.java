// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class aij
{

    public static boolean a = false;
    public static String b = "http://t1.tira.cn:8125/recommend/apk/get?";

    public static void a(String s)
    {
        if (s.equals("prod"))
        {
            a = false;
            b = "http://ak.dxsvr.com/rec/apk/get?";
            return;
        }
        if (s.equals("test"))
        {
            a = true;
            b = "http://t1.tira.cn:8125/recommend/apk/get?";
            return;
        }
        if (s.equals("dev"))
        {
            a = true;
            b = "http://t1.tira.cn:8125/recommend/apk/get?";
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("illegal env ").append(s).append(", only prod, test and dev is available").toString());
        }
    }

}
