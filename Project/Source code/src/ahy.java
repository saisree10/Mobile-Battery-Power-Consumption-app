// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Observable;
import java.util.Observer;

final class ahy
    implements Observer
{

    final ahv a;

    private ahy(ahv ahv1)
    {
        a = ahv1;
        super();
    }

    ahy(ahv ahv1, ahw ahw)
    {
        this(ahv1);
    }

    public void update(Observable observable, Object obj)
    {
        if (a.e != null)
        {
            a.a();
            int i;
            if (a.g)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            a.e.a(a, i, i);
        }
    }
}
