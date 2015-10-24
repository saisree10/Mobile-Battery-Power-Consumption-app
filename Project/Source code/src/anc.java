// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;

public class anc
{

    final anb a;
    private ArrayList b;

    public anc(anb anb1, int i)
    {
        a = anb1;
        super();
        b = new ArrayList();
        int j = amq.a(i);
        if (j == 2)
        {
            int j1 = 0;
            while (j1 < anb.b().c()) 
            {
                if (j1 == 8 || j1 == 11)
                {
                    b.add(Integer.valueOf(1));
                } else
                {
                    b.add(Integer.valueOf(0));
                }
                j1++;
            }
        } else
        if (j == 0)
        {
            int i1 = 0;
            while (i1 < anb.b().c()) 
            {
                if (i1 == 8 || i1 == 11)
                {
                    b.add(Integer.valueOf(1));
                } else
                {
                    b.add(Integer.valueOf(0));
                }
                i1++;
            }
        } else
        {
            int k = 0;
            if (j == 1)
            {
                b.add(Integer.valueOf(ahp.b));
                b.add(Integer.valueOf(1));
                b.add(Integer.valueOf(0));
                b.add(Integer.valueOf(0));
                b.add(Integer.valueOf(1));
                b.add(Integer.valueOf(0));
                b.add(Integer.valueOf(0));
                b.add(Integer.valueOf(0));
                b.add(Integer.valueOf(0));
                b.add(Integer.valueOf(0));
                b.add(Integer.valueOf(0));
                b.add(Integer.valueOf(0));
                b.add(Integer.valueOf(0));
            } else
            {
                while (k < anb.b().c()) 
                {
                    int l = anb.a(anb1).b(i, k);
                    ahp ahp1 = (ahp)anb.b().a().get(k);
                    b.add(Integer.valueOf(ahp1.c(l)));
                    k++;
                }
            }
        }
    }

    public ArrayList a()
    {
        return b;
    }
}
