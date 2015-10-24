// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;

class bah
    implements Runnable
{

    final bai a;
    final bag b;

    bah(bag bag1, bai bai1)
    {
        b = bag1;
        a = bai1;
        super();
    }

    public void run()
    {
        try
        {
            bag.a(b, anr.b());
        }
        catch (anq anq1)
        {
            if (a != null)
            {
                a.a(2);
            }
            bag.a(b, false);
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            if (a != null)
            {
                a.a(1);
            }
            bag.a(b, false);
            return;
        }
        bag.a(b, true);
        if (a != null)
        {
            a.a(0);
        }
    }
}
