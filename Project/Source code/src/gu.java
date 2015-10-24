// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;

public class gu
{

    private static volatile gu c;
    private final BroadcastReceiver a = new gv(this);
    private Context b;

    private gu(Context context)
    {
        b = context.getApplicationContext();
    }

    static Context a(gu gu1)
    {
        return gu1.b;
    }

    public static gu a(Context context)
    {
        gu;
        JVM INSTR monitorenter ;
        if (c == null)
        {
            c = new gu(context);
        }
        gu;
        JVM INSTR monitorexit ;
        return c;
        Exception exception;
        exception;
        gu;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private String b()
    {
        String s = b.getPackageName();
        return (new StringBuilder()).append("android.{DL6B117B-CBC7-4ac2-8F3C-43C1649DC7DL}").append(s).toString();
    }

    static String b(gu gu1)
    {
        return gu1.c();
    }

    private String c()
    {
        String s = b.getPackageName();
        return (new StringBuilder()).append("android.{DL6B117B-CBC7-4ac2-8F3C-43C1649DC7LT}").append(s).toString();
    }

    static String c(gu gu1)
    {
        return gu1.b();
    }

    public boolean a()
    {
        return android.provider.Settings.System.getLong(b.getContentResolver(), b(), 0L) <= 0L;
    }
}
