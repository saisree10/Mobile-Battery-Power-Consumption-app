// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.optimizer.module.messagebox.MessageBoxActivity;

class yt
    implements yg
{

    final View a;
    final yv b;
    final ys c;

    yt(ys ys1, View view, yv yv1)
    {
        c = ys1;
        a = view;
        b = yv1;
        super();
    }

    public void a()
    {
        MessageBoxActivity.a(c.a, a, b.g);
    }

    public void b()
    {
        MessageBoxActivity.a(c.a);
    }

    public void c()
    {
        MessageBoxActivity.a(c.a, b.g);
    }
}
