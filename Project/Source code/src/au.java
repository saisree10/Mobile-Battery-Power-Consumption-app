// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Notification;
import java.util.ArrayList;
import java.util.Iterator;

class au
    implements aq
{

    au()
    {
    }

    public Notification a(ao ao1)
    {
        ay ay1;
        ay1 = new ay(ao1.a, ao1.r, ao1.b, ao1.c, ao1.h, ao1.f, ao1.i, ao1.d, ao1.e, ao1.g, ao1.n, ao1.o, ao1.p, ao1.k, ao1.j, ao1.m);
        al al1;
        for (Iterator iterator = ao1.q.iterator(); iterator.hasNext(); ay1.a(al1.a, al1.b, al1.c))
        {
            al1 = (al)iterator.next();
        }

        if (ao1.l == null) goto _L2; else goto _L1
_L1:
        if (!(ao1.l instanceof an)) goto _L4; else goto _L3
_L3:
        an an1 = (an)ao1.l;
        ay1.a(an1.d, an1.f, an1.e, an1.a);
_L2:
        return ay1.a();
_L4:
        if (ao1.l instanceof ap)
        {
            ap ap1 = (ap)ao1.l;
            ay1.a(ap1.d, ap1.f, ap1.e, ap1.a);
        } else
        if (ao1.l instanceof am)
        {
            am am1 = (am)ao1.l;
            ay1.a(am1.d, am1.f, am1.e, am1.a, am1.b, am1.c);
        }
        if (true) goto _L2; else goto _L5
_L5:
    }
}
