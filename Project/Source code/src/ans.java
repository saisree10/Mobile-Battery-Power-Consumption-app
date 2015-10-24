// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;

class ans
    implements Runnable
{

    final anr a;

    ans(anr anr1)
    {
        a = anr1;
        super();
    }

    public void run()
    {
        try
        {
            anr.a(a);
            return;
        }
        catch (IOException ioexception)
        {
            azt.b("Shell", "IO Exception", ioexception);
        }
    }
}
