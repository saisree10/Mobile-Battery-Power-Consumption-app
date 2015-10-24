// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

public class ip
{

    public static int a(Context context, String s, int i)
    {
        return PreferenceManager.getDefaultSharedPreferences(context).getInt(s, i);
    }

    public static void b(Context context, String s, int i)
    {
        android.content.SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(context).edit();
        editor.putInt(s, i);
        editor.commit();
    }
}
