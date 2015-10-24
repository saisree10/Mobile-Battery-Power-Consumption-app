// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;

public class ob
{

    public static void a(Context context, String s)
    {
        String s1 = gy.o(context);
        sb sb1 = sb.a(context);
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("_tbox_ne");
        stringbuilder.append("_");
        stringbuilder.append("ad_icon");
        stringbuilder.append("_");
        stringbuilder.append(s);
        String s2 = stringbuilder.toString();
        nz.b("NetworkErrorReport", s2);
        sb1.a(s2, s1, Integer.valueOf(1));
    }

    public static void a(Context context, String s, String s1)
    {
        String s2;
        sb sb1;
        StringBuilder stringbuilder;
        s2 = gy.o(context);
        sb1 = sb.a(context);
        stringbuilder = new StringBuilder();
        stringbuilder.append("_tbox_ne");
        stringbuilder.append("_");
        stringbuilder.append((new StringBuilder()).append("ad_").append(s).toString());
        stringbuilder.append("_");
        stringbuilder.append(s1);
        if (!"st".equals(s1)) goto _L2; else goto _L1
_L1:
        int i = om.f(context, s);
        stringbuilder.append("_");
        stringbuilder.append(i);
_L4:
        String s3 = stringbuilder.toString();
        nz.b("NetworkErrorReport", s3);
        sb1.a(s3, s2, Integer.valueOf(1));
        return;
_L2:
        if ("sc".equals(s1))
        {
            om.g(context, s);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
