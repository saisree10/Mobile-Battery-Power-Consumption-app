// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;

public class bag
{

    private static bag a;
    private static boolean b = false;
    private anr c;
    private volatile boolean d;

    private bag()
    {
    }

    static anr a(bag bag1, anr anr1)
    {
        bag1.c = anr1;
        return anr1;
    }

    public static bag a()
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        bag;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new bag();
        }
        bag;
        JVM INSTR monitorexit ;
_L2:
        return a;
        Exception exception;
        exception;
        bag;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static boolean a(Context context)
    {
        if (b)
        {
            return b;
        } else
        {
            b = anr.a();
            return b;
        }
    }

    static boolean a(bag bag1, boolean flag)
    {
        bag1.d = flag;
        return flag;
    }

    public void a(bai bai)
    {
        this;
        JVM INSTR monitorenter ;
        azi.a().a(new bah(this, bai));
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (s == null) goto _L2; else goto _L1
_L1:
        boolean flag1 = s.equals("");
        if (!flag1) goto _L3; else goto _L2
_L2:
        boolean flag = false;
_L5:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L3:
        boolean flag2;
        ArrayList arraylist = new ArrayList();
        arraylist.add(s);
        flag2 = a(arraylist);
        flag = flag2;
        if (true) goto _L5; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    public boolean a(ArrayList arraylist)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = false;
        if (arraylist == null) goto _L2; else goto _L1
_L1:
        int i = arraylist.size();
        flag = false;
        if (i != 0) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L3:
        anu anu1 = null;
        if (c == null)
        {
            c = anr.b();
        }
        if (c != null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        d = false;
        flag = false;
        continue; /* Loop/switch isn't completed */
        Iterator iterator;
        d = true;
        iterator = arraylist.iterator();
_L4:
        anu anu2;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_143;
        }
        String s = (String)iterator.next();
        anu2 = new anu(new String[] {
            s
        });
        c.a(new anu(new String[] {
            s
        })).b();
        anu1 = anu2;
          goto _L4
        flag = false;
        if (anu1 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        int j = anu1.c();
        boolean flag1;
        if (j == 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        flag = flag1;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        throw exception;
        Exception exception1;
        exception1;
        flag = false;
        if (true) goto _L2; else goto _L5
_L5:
    }

    public boolean b()
    {
        return d;
    }

}
