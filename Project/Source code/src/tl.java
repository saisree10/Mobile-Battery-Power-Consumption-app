// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;
import java.util.Queue;

class tl
    implements Runnable
{

    final tf a;
    final tj b;

    tl(tj tj1, tf tf)
    {
        b = tj1;
        a = tf;
        super();
    }

    public void run()
    {
        if (ud.b)
        {
            Log.d("stat.EventDispatcher", (new StringBuilder()).append("Enter in addEventJob!\nAdd event:").append(a).toString());
        }
        tj.a(b).offer(a);
        uf.a(tj.b(b));
    }
}
