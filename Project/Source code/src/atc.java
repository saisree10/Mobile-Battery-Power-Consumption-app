// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.util.ArrayList;
import java.util.ListIterator;

class atc extends atl
{

    atc()
    {
    }

    public atd a(int i)
    {
        for (ListIterator listiterator = g.listIterator(); listiterator.hasNext();)
        {
            atd atd2 = (atd)listiterator.next();
            if (atd2.a == i)
            {
                return atd2;
            }
        }

        atd atd1 = new atd(i);
        g.add(atd1);
        return atd1;
    }

    public void a(Context context, int i, double d)
    {
        int j = g.size();
        int k = 0;
        do
        {
            if (k >= j || ((atl)g.get(k)).e < d)
            {
                for (; k < g.size(); g.remove(k)) { }
                break;
            }
            k++;
        } while (true);
    }
}
