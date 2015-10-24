// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;

public class anv
{

    private static String a = "http://t1.tira.cn:8125/toolsmisc/powermanagerAd";
    private static int b = 0x7fffffff;
    private static long c = 0x7fffffffffffffffL;
    private static long d = 0L;

    public static void a(Context context)
    {
        aog.b(context);
        aog.a(context);
        aog.a(context, 0L);
        c = 0x7fffffffffffffffL;
        d = 0L;
    }

    public static void a(String s)
    {
        if (s.equals("prod"))
        {
            a = "http://tls.dxsvr.com/powermanagerAd";
            return;
        }
        if (s.equals("test"))
        {
            a = "http://t1.tira.cn:8125/toolsmisc/powermanagerAd";
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("illegal env ").append(s).append(", only prod, test and dev is available").toString());
        }
    }

}
