// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;

public class aod
{

    public static int a(Context context, aoe aoe1)
    {
        if (aoe1.c() != -1)
        {
            return aoe1.c();
        }
        int i = aoe1.d();
        int j = mf.a(context).a(aoe1.b());
        if (j != -1)
        {
            aoe1.a(j);
            return j;
        } else
        {
            return i;
        }
    }

    public static int a(Context context, aoe aoe1, int i)
    {
        if (i < 0)
        {
            i = aoe1.d();
        }
        mf.a(context).a(aoe1.b(), i);
        return i;
    }
}
