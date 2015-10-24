// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;

public class anh
{

    private static volatile anh a;
    private Context b;
    private SharedPreferences c;

    public anh(Context context)
    {
        b = context;
        c = context.getSharedPreferences("mode_change_reason_pref", 0);
    }

    public static anh a(Context context)
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        anh;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new anh(context);
        }
        anh;
        JVM INSTR monitorexit ;
_L2:
        return a;
        Exception exception;
        exception;
        anh;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int a()
    {
        return c.getInt("version", 0);
    }

    public void a(int i)
    {
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putInt("version", i);
        gm.a(editor);
    }

    public void a(int i, String s)
    {
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putInt((new StringBuilder()).append("mode_index_").append(s).toString(), i);
        gm.a(editor);
    }

    public void a(String s, ArrayList arraylist)
    {
        android.content.SharedPreferences.Editor editor = c.edit();
        String s1 = (new StringBuilder()).append("reason_").append(s).toString();
        int i = arraylist.size();
        for (int j = 0; j < i; j++)
        {
            int k = ((Integer)arraylist.get(j)).intValue();
            editor.putInt((new StringBuilder()).append(s1).append("_").append(j).toString(), k);
        }

        editor.putInt((new StringBuilder()).append(s1).append("_setting_size").toString(), i);
        gm.a(editor);
    }
}
