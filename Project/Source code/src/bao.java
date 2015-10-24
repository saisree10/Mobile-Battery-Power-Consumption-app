// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;

public class bao
{

    public static String[] a(Context context, int i)
    {
        String s;
        String s1;
        if (amb.a(context).d())
        {
            s = Double.toString((double)i / 10D);
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            s1 = context.getString(0x7f0a0361);
        } else
        {
            s = Float.toString((float)Math.round(320 + (i * 90) / 50) / 10F);
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            s1 = context.getString(0x7f0a0362);
        }
        return (new String[] {
            s, s1
        });
    }
}
