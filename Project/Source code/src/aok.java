// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Iterator;

class aok extends Handler
{

    final aoj a;
    private int b;

    aok(aoj aoj1, Looper looper)
    {
        a = aoj1;
        super(looper);
        b = 0;
    }

    public void handleMessage(Message message)
    {
        aoj.b((new StringBuilder()).append("handle msg ").append(message.what).toString());
        message.what;
        JVM INSTR tableswitch 1 3: default 56
    //                   1 173
    //                   2 57
    //                   3 202;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L3:
        aoj.b(a).append(message.arg1, (aon)message.obj);
        if (aoj.b(a).size() == b)
        {
            aoj.c(a).clear();
            int i;
            for (Iterator iterator = aoj.d(a).iterator(); iterator.hasNext(); aoj.c(a).add(aoj.b(a).get(i)))
            {
                i = ((Integer)iterator.next()).intValue();
            }

            a.c();
            return;
        }
          goto _L1
_L2:
        aoj.d(a).clear();
        aoj.b(a).clear();
        b = message.arg1;
        return;
_L4:
        aoj.d(a).add(Integer.valueOf(message.arg1));
        return;
    }
}
