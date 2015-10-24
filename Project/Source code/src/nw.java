// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;

class nw extends nv
{

    final nt a;
    private final long b;
    private final lk c;
    private final od d;

    private nw(nt nt1, od od1)
    {
        a = nt1;
        super();
        d = od1;
        c = od1.g;
        b = od1.e;
    }

    nw(nt nt1, od od1, nu nu)
    {
        this(nt1, od1);
    }

    public void a(int i)
    {
        nt.a(c.h, "[Material]", (new StringBuilder()).append(" Pull failed: status = ").append(i).toString());
        a.a(d, 403);
    }

    public volatile void a(int i, Object obj)
    {
        a(i, (List)obj);
    }

    public void a(int i, List list)
    {
        String s;
        ArrayList arraylist;
        int j;
        int k;
        s = c.h;
        nt.a(s, "[Material]", (new StringBuilder()).append(" Pull success: size = ").append(list.size()).toString());
        arraylist = new ArrayList();
        j = list.size();
        k = 0;
_L2:
        lb lb1;
        if (k >= j)
        {
            break MISSING_BLOCK_LABEL_192;
        }
        lb1 = (lb)list.get(k);
        ou ou1 = nt.a(c, b, k, lb1.f);
        if (!ou1.a())
        {
            nt.a(s, "[Material]", (new StringBuilder()).append(" Unsupported open type: ").append(ou1.j).toString());
            break MISSING_BLOCK_LABEL_268;
        }
        try
        {
            a.a(ou1);
            arraylist.add(ou1);
        }
        catch (JSONException jsonexception)
        {
            nt.a(s, "[Material]", (new StringBuilder()).append(" Parse json failed: ").append(lb1.f).toString());
        }
        break MISSING_BLOCK_LABEL_268;
        nt.a(s, "[Material]", (new StringBuilder()).append(" Pull completed: size = ").append(arraylist.size()).toString());
        oe oe1 = new oe(d, 403, arraylist);
        ob.a(a.b, d.a, "sc");
        a.a(oe1);
        return;
        k++;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
