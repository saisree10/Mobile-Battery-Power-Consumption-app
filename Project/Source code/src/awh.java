// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.Toast;

class awh
    implements android.view.View.OnClickListener
{

    final awg a;

    awh(awg awg1)
    {
        a = awg1;
        super();
    }

    public void onClick(View view)
    {
        awg.a(a).startActivity(azz.b(awg.a(a)));
        bc.a(awg.a(a)).a(new Intent("go_rate"));
        a.dismiss();
        return;
        Exception exception1;
        exception1;
        Context context = awg.a(a);
        ly.i;
        Toast.makeText(context, 0x7f0a01bc, 0).show();
        a.dismiss();
        return;
        Exception exception;
        exception;
        a.dismiss();
        throw exception;
    }
}
