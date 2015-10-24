// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.SharedPreferences;

public class zw
{

    public static long a(SharedPreferences sharedpreferences, String s, long l)
    {
        if (!sharedpreferences.contains(s))
        {
            gm.a(sharedpreferences.edit().putLong(s, l));
            return l;
        } else
        {
            return sharedpreferences.getLong(s, l);
        }
    }

    public static boolean a(SharedPreferences sharedpreferences, String s, boolean flag)
    {
        if (!sharedpreferences.contains(s))
        {
            gm.a(sharedpreferences.edit().putBoolean(s, flag));
            return flag;
        } else
        {
            return sharedpreferences.getBoolean(s, flag);
        }
    }
}
