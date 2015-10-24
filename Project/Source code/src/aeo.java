// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;

public class aeo
{

    private static aem a;

    public aeo()
    {
    }

    static aem a()
    {
        return a;
    }

    public static void a(aem aem1)
    {
        aeo;
        JVM INSTR monitorenter ;
        a = aem1;
        aeo;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static void a(PendingIntent pendingintent, Intent intent)
    {
        if (a == null)
        {
            return;
        } else
        {
            a.a(pendingintent, intent);
            return;
        }
    }

    public static void a(Context context, aeh aeh, akt akt)
    {
        if (a != null)
        {
            a.a(aeh, akt);
        }
    }

    public static void a(Context context, aei aei, akt akt)
    {
        if (a != null)
        {
            a.a(aei, akt);
        }
    }

    public static void a(Context context, aks aks, String s, String s1, long l, String s2)
    {
        azi.a().a(new aep(context, s1, s, aks, l, s2));
    }

    public static void a(boolean flag)
    {
        if (a != null)
        {
            a.a(flag);
        }
    }
}
