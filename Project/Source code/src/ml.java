// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;

public class ml
{

    private static final boolean a;

    public static String a(Context context, String s, String s1)
    {
        mj mj1 = mj.a();
        String s2 = (new StringBuilder(String.valueOf(s))).append("?").append(s1).toString();
        if (a)
        {
            ms.a("DxHttpUtils", (new StringBuilder("request: ")).append(s2).toString());
        }
        return mj1.a(context, s2, "utf-8");
    }

    static 
    {
        a = mi.a;
    }
}
