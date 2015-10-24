// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;
import java.util.LinkedList;
import java.util.Queue;

class tk
    implements Runnable
{

    final tj a;

    tk(tj tj1)
    {
        a = tj1;
        super();
    }

    public void run()
    {
        if (ud.b)
        {
            Log.d("stat.EventDispatcher", "Enter in HandleEventQueue!");
        }
        Queue queue = tj.a(a);
        tj.a(a, new LinkedList());
        do
        {
            if (queue.isEmpty())
            {
                break;
            }
            tf tf1 = (tf)queue.poll();
            int i = tf1.j();
            if (!tj.a(a, tf1) && i < 3)
            {
                if (ud.c)
                {
                    Log.i("stat.EventDispatcher", (new StringBuilder()).append("Retry to handle Event ").append(tf1.toString()).append(" count:").append(i).toString());
                }
                tf1.a(i + 1);
                tj.a(a).add(tf1);
            }
        } while (true);
    }
}
