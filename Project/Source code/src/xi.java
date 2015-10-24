// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.database.sqlite.SQLiteDatabase;
import java.util.Calendar;

public abstract class xi
{

    protected SQLiteDatabase a;

    public xi(SQLiteDatabase sqlitedatabase)
    {
        a = sqlitedatabase;
    }

    public static String a(String as[])
    {
        int i1 = 1;
        if (as == null || as.length == 0)
        {
            return null;
        }
        if (as.length == i1)
        {
            return as[0];
        }
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(as[0]);
        for (; i1 < as.length; i1++)
        {
            stringbuilder.append("#").append(as[i1]);
        }

        return stringbuilder.toString();
    }

    private static Calendar a(long l1)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(l1);
        calendar.add(3, -1);
        for (; calendar.get(7) != 1; calendar.add(5, 1)) { }
        return calendar;
    }

    public static String b(String s)
    {
        int i1 = s.indexOf('#');
        if (i1 != -1)
        {
            s = s.substring(0, i1);
        }
        return s;
    }

    public static int c(String s)
    {
        if (s == null)
        {
            return -1;
        } else
        {
            return azy.b(b(s));
        }
    }

    public static long e(long l1)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(l1);
        return (long)(10000 * calendar.get(1) + 100 * (1 + calendar.get(2)) + calendar.get(5));
    }

    public static long f(long l1)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(l1);
        return (long)(0xf4240 * calendar.get(1) + 10000 * (1 + calendar.get(2)) + 100 * calendar.get(5) + calendar.get(11));
    }

    public static long g(long l1)
    {
        return 2L * (f(l1) / 2L);
    }

    public static long h(long l1)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(l1);
        calendar.add(6, -1);
        return (long)(0xf4240 * calendar.get(1) + 10000 * (1 + calendar.get(2)) + 100 * calendar.get(5));
    }

    public static long i(long l1)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(l1);
        calendar.add(6, -1);
        return (long)(23 + (0xf4240 * calendar.get(1) + 10000 * (1 + calendar.get(2)) + 100 * calendar.get(5)));
    }

    public static long j(long l1)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(l1);
        calendar.add(6, -1);
        return (long)(10000 * calendar.get(1) + 100 * (1 + calendar.get(2)) + calendar.get(5));
    }

    public static long k(long l1)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(l1);
        calendar.add(6, -2);
        return (long)(10000 * calendar.get(1) + 100 * (1 + calendar.get(2)) + calendar.get(5));
    }

    public static long l(long l1)
    {
        Calendar calendar = a(l1);
        return (long)(10000 * calendar.get(1) + 100 * (1 + calendar.get(2)) + calendar.get(5));
    }

    public static long m(long l1)
    {
        Calendar calendar = a(l1);
        calendar.add(6, -6);
        return (long)(10000 * calendar.get(1) + 100 * (1 + calendar.get(2)) + calendar.get(5));
    }

    public static long n(long l1)
    {
        Calendar calendar = a(l1);
        calendar.set(11, 23);
        return 0x36ee80L + calendar.getTimeInMillis();
    }
}
