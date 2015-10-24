// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class jk
    implements Runnable
{

    final String a;
    final jj b;

    jk(jj jj1, String s)
    {
        b = jj1;
        a = s;
        super();
    }

    public void run()
    {
        jj.a(b).a("appupdate", 0, 0, a);
    }
}
