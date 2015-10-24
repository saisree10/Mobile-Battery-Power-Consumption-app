// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class aco extends Thread
{

    final acp a;
    final acn b;

    aco(acn acn1, acp acp)
    {
        b = acn1;
        a = acp;
        super();
    }

    public void run()
    {
        acn.a(b);
        acn.a(b, a);
    }
}
