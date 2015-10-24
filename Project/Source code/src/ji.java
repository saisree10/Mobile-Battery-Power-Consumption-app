// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class ji extends Throwable
{

    public int a;
    final jd b;

    public ji(jd jd, int i, String s)
    {
        b = jd;
        super(s);
        a = i;
    }

    public ji(jd jd, int i, String s, Throwable throwable)
    {
        b = jd;
        super(s, throwable);
        a = i;
    }
}
