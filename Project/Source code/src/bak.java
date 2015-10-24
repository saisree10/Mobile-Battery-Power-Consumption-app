// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;

public class bak
{

    public static void a(Context context, String s)
    {
        if (s == null || b(context, s))
        {
            return;
        } else
        {
            String s1 = c(context);
            android.content.SharedPreferences.Editor editor = context.getSharedPreferences("statsreport_config", 0).edit();
            editor.putString("sm", (new StringBuilder()).append(s1).append(",").append(s).toString());
            gm.a(editor);
            return;
        }
    }

    public static boolean a(Context context)
    {
        return context.getSharedPreferences("statsreport_config", 0).getBoolean("rr", false);
    }

    public static void b(Context context)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("statsreport_config", 0).edit();
        editor.putBoolean("rr", true);
        gm.a(editor);
    }

    public static boolean b(Context context, String s)
    {
        String as[] = c(context).split(",");
        if (as != null && as.length != 0)
        {
            int i = as.length;
            int j = 0;
            while (j < i) 
            {
                if (as[j].equals(s))
                {
                    return true;
                }
                j++;
            }
        }
        return false;
    }

    private static String c(Context context)
    {
        return context.getSharedPreferences("statsreport_config", 0).getString("sm", "");
    }

    public static void c(Context context, String s)
    {
        String as[];
        if (s != null && b(context, s))
        {
            if ((as = c(context).split(",")) != null && as.length != 0)
            {
                for (int i = 0; i < as.length; i++)
                {
                    if (as[i].equals(s))
                    {
                        as[i] = null;
                    }
                }

                StringBuilder stringbuilder = new StringBuilder();
                int j = as.length;
                for (int k = 0; k < j; k++)
                {
                    String s1 = as[k];
                    if (s1 != null && !s1.equals(""))
                    {
                        stringbuilder.append(s1);
                        stringbuilder.append(",");
                    }
                }

                android.content.SharedPreferences.Editor editor = context.getSharedPreferences("statsreport_config", 0).edit();
                editor.putString("sm", stringbuilder.toString());
                gm.a(editor);
                return;
            }
        }
    }
}
