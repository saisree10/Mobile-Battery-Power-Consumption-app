// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class ak
{

    private static final aq a;

    static aq a()
    {
        return a;
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            a = new au();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            a = new at();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            a = new as();
        } else
        {
            a = new ar();
        }
    }
}
