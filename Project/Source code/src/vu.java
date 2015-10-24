// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

public class vu
{

    public static long a(Context context, String s, long l)
    {
        return PreferenceManager.getDefaultSharedPreferences(context).getLong(s, l);
    }

    public static void b(Context context, String s, long l)
    {
        android.content.SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(context).edit();
        editor.putLong(s, l);
        editor.commit();
    }
}
