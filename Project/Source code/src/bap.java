// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.text.format.DateFormat;
import java.util.Calendar;

public class bap
{

    public static int a(long l)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(l);
        return calendar.get(11);
    }

    public static long a()
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.add(10, -24);
        return calendar.getTimeInMillis();
    }

    public static boolean a(long l, long l1)
    {
        return a(b(l), b(l1));
    }

    public static boolean a(Context context)
    {
        amb amb1 = amb.a(context);
        if (amb1.n()) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        int j;
        int ai[];
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        int i = calendar.get(11);
        j = calendar.get(12) + i * 100;
        ai = amb1.o();
        if (ai[0] > ai[1])
        {
            continue; /* Loop/switch isn't completed */
        }
        if (j < ai[0] || j >= ai[1]) goto _L1; else goto _L3
_L3:
        return false;
        if (j >= ai[1] && j < ai[0]) goto _L1; else goto _L4
_L4:
        return false;
    }

    public static boolean a(baq baq1, baq baq2)
    {
        return baq1.a == baq2.a && baq1.b == baq2.b && baq1.c == baq2.c;
    }

    public static long b()
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        return calendar.getTimeInMillis();
    }

    public static long b(long l, long l1)
    {
        long l2 = Math.abs(l1 - l) / 0x5265c00L;
        if (l2 == 0L)
        {
            l2 = 1L;
        }
        if (l1 > l)
        {
            return l2;
        } else
        {
            return -l2;
        }
    }

    public static baq b(long l)
    {
        baq baq1 = new baq();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(l);
        baq1.a = calendar.get(1);
        baq1.b = 1 + calendar.get(2);
        baq1.c = calendar.get(5);
        return baq1;
    }

    public static boolean b(Context context)
    {
        return DateFormat.is24HourFormat(context);
    }
}
