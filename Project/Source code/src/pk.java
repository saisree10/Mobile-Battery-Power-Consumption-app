// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.widget.Toast;

class pk
    implements Runnable
{

    final int a;
    final pj b;

    pk(pj pj1, int i)
    {
        b = pj1;
        a = i;
        super();
    }

    public void run()
    {
        if (pj.a(b).isFinishing())
        {
            return;
        }
        if (pj.b(b) == null)
        {
            pj.a(b, Toast.makeText(pj.a(b), a, 0));
        }
        pj.b(b).setText(a);
        pj.b(b).show();
    }
}
