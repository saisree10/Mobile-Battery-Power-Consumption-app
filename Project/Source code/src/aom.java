// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.List;
import java.util.concurrent.Future;

class aom
    implements kz
{

    final aoj a;

    private aom(aoj aoj1)
    {
        a = aoj1;
        super();
    }

    aom(aoj aoj1, aok aok)
    {
        this(aoj1);
    }

    public volatile void a(int i, Object obj)
    {
        a(i, (lj)obj);
    }

    public void a(int i, String s)
    {
        aoj.b("project onFail");
    }

    public void a(int i, lj lj1)
    {
        aoj.b("project onSuccess");
        if (lj1 != null && lj1.a() > 0)
        {
            lk lk1 = (lk)lj1.g.get(0);
            aop aop1 = new aop(a, null);
            long al[] = lk1.a(100);
            if (al != null)
            {
                aoj.h().a(lj1.a, lk1.a, al, aop1);
            }
        }
    }

    public volatile void a(Exception exception, Object obj)
    {
        a(exception, (lj)obj);
    }

    public void a(Exception exception, lj lj1)
    {
        exception.printStackTrace();
        aoj.b("project onException");
    }

    public void a(Future future)
    {
        aoj.b("project onSubmit");
    }
}
