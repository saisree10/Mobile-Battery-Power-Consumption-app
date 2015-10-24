// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class aoi
{

    private static String a = "http://t1.tira.cn:8125/toolsmisc/sa";
    private static int b = 0x7fffffff;
    private static boolean c = false;
    private static long d = 0x7fffffffffffffffL;
    private static long e = 0L;

    public static void a(String s)
    {
        if (s.equals("prod"))
        {
            a = "http://tls.dxsvr.com/sa";
            return;
        }
        if (s.equals("test"))
        {
            a = "http://t1.tira.cn:8125/toolsmisc/sa";
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("illegal env ").append(s).append(", only prod, test and dev is available").toString());
        }
    }

}
