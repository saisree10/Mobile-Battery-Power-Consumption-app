// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.os.Handler;
import android.view.View;

class axk
    implements android.view.View.OnClickListener
{

    final axi a;

    axk(axi axi1)
    {
        a = axi1;
        super();
    }

    public void onClick(View view)
    {
        a.dismiss();
        if (axi.a(a) != null)
        {
            axi.a(a).sendEmptyMessage(0);
            axi.a(a, null);
        }
        axn.a((Activity)axi.b(a));
    }
}
