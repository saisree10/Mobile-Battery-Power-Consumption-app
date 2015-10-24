// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import java.lang.ref.WeakReference;
import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class wi
{

    private static List a = new ArrayList();

    public static void a(Context context, Intent intent)
    {
        intent.getBooleanExtra("android.intent.extra.REPLACING", false);
        b(context, intent);
    }

    private static void a(Context context, String s, int i)
    {
        List list = a;
        list;
        JVM INSTR monitorenter ;
        a.size();
        int j = 0;
_L2:
        wj wj1;
        if (j >= a.size())
        {
            break MISSING_BLOCK_LABEL_94;
        }
        wj1 = (wj)((WeakReference)a.get(j)).get();
        if (wj1 != null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        a.remove(j);
        int k;
        k = j;
        break MISSING_BLOCK_LABEL_104;
        wj1.a(context, s, i);
        k = j + 1;
        break MISSING_BLOCK_LABEL_104;
        list;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        j = k;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void a(wj wj1)
    {
        if (wj1 == null)
        {
            zs.c("PackageChangeReceiver", "null listener not allowed");
            return;
        }
        synchronized (a)
        {
            Iterator iterator = a.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break MISSING_BLOCK_LABEL_60;
                }
            } while (((WeakReference)iterator.next()).get() != wj1);
        }
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        a.add(new WeakReference(wj1));
        list;
        JVM INSTR monitorexit ;
    }

    private static void b(Context context, Intent intent)
    {
        String s = intent.getAction();
        boolean flag = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
        int i = intent.getIntExtra("android.intent.extra.UID", -1);
        String s1 = URI.create(intent.getDataString()).getSchemeSpecificPart();
        if ("android.intent.action.PACKAGE_ADDED".equals(s))
        {
            if (!flag)
            {
                a(context, s1, i);
            }
            ka.a(context).a(context, intent);
        } else
        {
            if ("android.intent.action.PACKAGE_REMOVED".equals(s) && !flag)
            {
                b(context, s1, i);
                return;
            }
            if ("android.intent.action.PACKAGE_REPLACED".equals(s))
            {
                c(context, s1, i);
                return;
            }
        }
    }

    private static void b(Context context, String s, int i)
    {
        List list = a;
        list;
        JVM INSTR monitorenter ;
        a.size();
        int j = 0;
_L2:
        wj wj1;
        if (j >= a.size())
        {
            break MISSING_BLOCK_LABEL_94;
        }
        wj1 = (wj)((WeakReference)a.get(j)).get();
        if (wj1 != null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        a.remove(j);
        int k;
        k = j;
        break MISSING_BLOCK_LABEL_104;
        wj1.b(context, s, i);
        k = j + 1;
        break MISSING_BLOCK_LABEL_104;
        list;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        j = k;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static void c(Context context, String s, int i)
    {
        List list = a;
        list;
        JVM INSTR monitorenter ;
        a.size();
        int j = 0;
_L2:
        wj wj1;
        if (j >= a.size())
        {
            break MISSING_BLOCK_LABEL_94;
        }
        wj1 = (wj)((WeakReference)a.get(j)).get();
        if (wj1 != null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        a.remove(j);
        int k;
        k = j;
        break MISSING_BLOCK_LABEL_104;
        wj1.c(context, s, i);
        k = j + 1;
        break MISSING_BLOCK_LABEL_104;
        list;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        j = k;
        if (true) goto _L2; else goto _L1
_L1:
    }

}
