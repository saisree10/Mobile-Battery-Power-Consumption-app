// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.Toast;

public class aqo extends aqf
{

    final aqj a;
    private Context b;
    private int c;

    public aqo(aqj aqj1, Context context, int i)
    {
        a = aqj1;
        super();
        b = context;
        c = i;
    }

    public void a(int i)
    {
        c = i;
    }

    public void onClick(View view)
    {
        bal.h(aqj.a(a));
        adp adp1 = aqj.b(a);
        String s;
        Context context;
        if (c == 0)
        {
            s = "dt";
        } else
        {
            s = "pt_";
        }
        adp1.a(s);
        aqj.b(a).a(-1 + c);
        context = b;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        Toast.makeText(context, 0x7f0a02bd, 0).show();
        a.a();
        bc.a(b).a(new Intent("use_default_skin"));
    }
}
