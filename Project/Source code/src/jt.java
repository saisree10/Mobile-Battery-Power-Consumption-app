// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class jt
{

    private static jt c;
    protected iv a;
    protected jz b;

    jt()
    {
    }

    protected static jt a()
    {
        if (c == null)
        {
            c = new jt();
        }
        return c;
    }

    protected void a(iv iv1)
    {
        a = iv1;
    }

    protected void a(jz jz1)
    {
        b = jz1;
    }

    protected void b()
    {
        if (a != null && b != null)
        {
            a.a(b.a, b.b, b.d, b.c, b.e);
        }
    }
}
