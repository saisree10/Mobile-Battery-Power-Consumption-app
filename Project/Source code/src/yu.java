// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.optimizer.module.messagebox.MessageBoxActivity;

class yu
    implements android.view.View.OnClickListener
{

    final yv a;
    final ys b;

    yu(ys ys1, yv yv1)
    {
        b = ys1;
        a = yv1;
        super();
    }

    public void onClick(View view)
    {
        MessageBoxActivity.b(b.a, a.g);
    }
}
