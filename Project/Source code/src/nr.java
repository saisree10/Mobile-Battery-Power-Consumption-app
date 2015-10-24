// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.List;

class nr
    implements Runnable
{

    final String a;
    final int b;
    final nq c;

    nr(nq nq1, String s, int i)
    {
        c = nq1;
        a = s;
        b = i;
        super();
    }

    public void run()
    {
        nz.b("BaseDataPuller", (new StringBuilder()).append("Pull icon for missing: ").append(a).toString());
        List list = nq.a(c).b(a);
        int i = list.size();
        int j = 0;
        int k = 0;
        while (j < i && j < b) 
        {
            ou ou1 = (ou)list.get(j);
            int l;
            if (c.c(ou1.l))
            {
                l = k + 1;
            } else
            {
                l = k;
            }
            j++;
            k = l;
        }
        if (k > 0)
        {
            nq.a(c).a();
            c.a(a, k);
        }
    }
}
