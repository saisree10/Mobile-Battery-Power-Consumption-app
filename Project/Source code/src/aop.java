// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;

class aop
    implements kz
{

    final aoj a;

    private aop(aoj aoj1)
    {
        a = aoj1;
        super();
    }

    aop(aoj aoj1, aok aok)
    {
        this(aoj1);
    }

    public volatile void a(int i, Object obj)
    {
        a(i, (List)obj);
    }

    public void a(int i, String s)
    {
        aoj.b("group onFail");
    }

    public void a(int i, List list)
    {
        aoj.b("group onSuccess");
        if (list != null && list.size() != 0)
        {
            aoj.a(a).obtainMessage(1, list.size(), 0).sendToTarget();
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                lh lh1 = (lh)iterator.next();
                aoj.a(a).obtainMessage(3, (int)lh1.a, -1).sendToTarget();
                aoj.b((new StringBuilder()).append("group:").append(lh1.d).toString());
                Iterator iterator1;
                try
                {
                    aon aon1 = new aon();
                    aon1.c = lh1.d;
                    aon1.b = lh1.c;
                    aon1.d = ((lg)((List)lh1.k.get(Integer.valueOf(3))).get(0)).h;
                    aol aol1 = new aol(a, lh1.g, lh1.h, lh1.a, null);
                    aol.a(aol1, aon1);
                    aoj.h().a(lh1.g, lh1.h, lh1.a, 1, 20, kr.a, aol1);
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                    aoj.b("invalid data!");
                }
                iterator1 = lh1.l.iterator();
                while (iterator1.hasNext()) 
                {
                    lb lb1 = (lb)iterator1.next();
                    aoj.b((new StringBuilder()).append("material:").append(lb1.d).toString());
                }
            } while (true);
        }
    }

    public volatile void a(Exception exception, Object obj)
    {
        a(exception, (List)obj);
    }

    public void a(Exception exception, List list)
    {
        exception.printStackTrace();
        aoj.b("group onException");
    }

    public void a(Future future)
    {
        aoj.b("group onSubmit");
    }
}
