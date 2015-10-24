// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;

class ant
    implements Runnable
{

    final anr a;

    ant(anr anr1)
    {
        a = anr1;
        super();
    }

    public void run()
    {
        try
        {
            anr.b(a);
            return;
        }
        catch (IOException ioexception)
        {
            azt.b("Shell", "IOException", ioexception);
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            azt.b("Shell", "InterruptedException", interruptedexception);
        }
    }
}
