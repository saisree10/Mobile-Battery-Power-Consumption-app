// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class bdb extends Exception
{

    private bdc a;

    public bdb(Exception exception, bdc bdc)
    {
        super(exception);
        a = bdc;
    }

    public bdc a()
    {
        return a;
    }
}
