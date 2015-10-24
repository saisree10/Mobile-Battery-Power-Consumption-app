// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class ua
{

    final tz a;
    private Integer b;
    private Long c;
    private String d;

    public ua(tz tz)
    {
        a = tz;
        super();
        b = Integer.valueOf(0);
        c = Long.valueOf(0L);
        d = "";
    }

    static Long b(ua ua1)
    {
        return ua1.c;
    }

    static Integer c(ua ua1)
    {
        return ua1.b;
    }

    public String a()
    {
        return d;
    }

    public void a(Integer integer)
    {
        if (integer != null)
        {
            b = integer;
        }
    }

    public void a(Long long1)
    {
        if (long1 != null)
        {
            c = long1;
        }
    }

    public void a(String s)
    {
        d = s;
    }

    public boolean a(ua ua1)
    {
        return c.equals(ua1.c);
    }

    public int b()
    {
        return b.intValue();
    }

    public Long c()
    {
        return c;
    }

    public boolean d()
    {
        return b.intValue() == 0 && c.longValue() == 0L;
    }

    public String toString()
    {
        Object aobj[] = new Object[2];
        aobj[0] = c;
        aobj[1] = b;
        return String.format("[firstInstallTime:%d versionCode:%d]", aobj);
    }
}
