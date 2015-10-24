// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class tm
    implements Runnable
{

    final tj a;
    private int b;

    public tm(tj tj1)
    {
        a = tj1;
        super();
        b = 0;
    }

    public void run()
    {
        if (!tj.c(a).a() && b == 0)
        {
            b = 1 + b;
            uf.a(this, tj.d().longValue());
        }
    }
}
