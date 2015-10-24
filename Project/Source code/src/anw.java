// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class anw
{

    private static String a = "http://t1.tira.cn:8125/toolsmisc/umtab";
    private static boolean b = false;

    public static void a(String s)
    {
        if (s.equals("prod"))
        {
            a = "http://tls.dxsvr.com/umtab";
            return;
        }
        if (s.equals("test"))
        {
            a = "http://t1.tira.cn:8125/toolsmisc/umtab";
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("illegal env ").append(s).append(", only prod, test and dev is available").toString());
        }
    }

}
