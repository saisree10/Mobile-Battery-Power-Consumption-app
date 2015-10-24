// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.View;

public class aqh extends aqf
{

    aeu a;
    private aev b;
    private Context c;

    public aqh(Context context, aeu aeu1)
    {
        a = aeu1;
        c = context;
    }

    public void a(aev aev)
    {
        b = aev;
    }

    public void onClick(View view)
    {
        bal.h(c);
        a.b(b);
    }
}
