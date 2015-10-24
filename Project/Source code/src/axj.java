// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Handler;
import android.view.View;

class axj
    implements android.view.View.OnClickListener
{

    final kh a;
    final axi b;

    axj(axi axi1, kh kh1)
    {
        b = axi1;
        a = kh1;
        super();
    }

    public void onClick(View view)
    {
        b.dismiss();
        if (axi.a(b) != null)
        {
            axi.a(b).sendEmptyMessage(0);
            axi.a(b, null);
        }
        axi.b(b).startActivity(a.c);
    }
}
