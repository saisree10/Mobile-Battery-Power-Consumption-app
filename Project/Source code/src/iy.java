// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;

public class iy
{

    public String a;
    public boolean b;
    public String c;
    public String d;
    public int e;
    public int f;
    public int g;
    public int h;
    public String i;
    public long j;
    public String k;
    public String l;
    public int m;
    public String n;
    public String o;
    public int p;
    public boolean q;
    private jw r;
    private Context s;

    public iy(Context context, jw jw1)
    {
        s = context;
        r = jw1;
    }

    private int b(int i1)
    {
        return c(i1);
    }

    private int c(int i1)
    {
        if (j > 0L && i1 != 1)
        {
            Long long1 = r.d();
            if (long1 != null && j > long1.longValue())
            {
                return 3;
            }
            if (p == 0)
            {
                Long long2 = r.e();
                if (long2 != null && j > long2.longValue())
                {
                    return 4;
                }
            }
        }
        return 1;
    }

    public int a()
    {
        byte byte0 = 1;
        Integer integer = r.b();
        if (integer == null)
        {
            byte0 = 2;
        } else
        if (integer.intValue() != byte0)
        {
            if (r.c() && r.f())
            {
                return 5;
            } else
            {
                return b(integer.intValue());
            }
        }
        return byte0;
    }

    public String a(int i1)
    {
        switch (i1)
        {
        default:
            return "unknown error with network connectivity";

        case 4: // '\004'
            return "download size exceeds recommended limit for mobile network";

        case 3: // '\003'
            return "download size exceeds limit for mobile network";

        case 2: // '\002'
            return "no network connection available";

        case 5: // '\005'
            return "download cannot use the current network connection because it is roaming";

        case 6: // '\006'
            return "download was requested to not use the current network type";
        }
    }
}
