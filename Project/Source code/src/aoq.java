// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;

public abstract class aoq
{

    protected static String b;

    public aoq()
    {
    }

    protected static String a(Context context, int i, String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(gt.a(context));
        stringbuilder.append("&net=").append(i);
        stringbuilder.append("&child=").append(s);
        stringbuilder.append("&rv=").append("1.1");
        return stringbuilder.toString();
    }

    public static void a(String s)
    {
        if (s.equals("prod"))
        {
            b = "http://ak.dxsvr.com/rec/get";
            return;
        }
        if (s.equals("test"))
        {
            b = "http://t1.tira.cn:8125/recommend/get";
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("illegal env ").append(s).append(", only prod, test and dev is available").toString());
        }
    }
}
