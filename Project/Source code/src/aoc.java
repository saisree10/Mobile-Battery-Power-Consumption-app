// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

class aoc
    implements Runnable
{

    final aob a;

    aoc(aob aob1)
    {
        a = aob1;
        super();
    }

    public void run()
    {
        Iterator iterator = aob.a(a).keySet().iterator();
_L2:
        String s;
        anz anz1;
        long l1;
        do
        {
label0:
            {
                if (iterator.hasNext())
                {
                    s = (String)iterator.next();
                    anz1 = (anz)aob.a(a).get(s);
                    long l = aob.b(a).a(s);
                    l1 = System.currentTimeMillis();
                    if (l1 >= l)
                    {
                        break label0;
                    }
                    aob.a(a, (new StringBuilder()).append("pull after ").append((l - l1) / 1000L / 60L).append(" mins").toString());
                }
                return;
            }
label1:
            {
                if (azx.b(aob.c(a)))
                {
                    break label1;
                }
                aob.a(a, "pull failed caused by no network");
                bal.a(aob.c(a), "msgbox", "mbnn", Integer.valueOf(1));
            }
        } while (true);
        boolean flag = false;
        flag = anz1.a();
        aob.a(a, (new StringBuilder()).append("pull ").append(s).toString());
        if (flag)
        {
            aob.b(a).a(s, l1 + 0x5265c00L);
        } else
        {
            aob.b(a).a(s, l1 + 0x36ee80L);
        }
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        if (flag)
        {
            aob.b(a).a(s, l1 + 0x5265c00L);
        } else
        {
            aob.b(a).a(s, l1 + 0x36ee80L);
        }
        throw exception;
    }
}
