// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.widget.ArrayAdapter;

class qq extends mc
{

    final qp a;

    qq(qp qp1)
    {
        a = qp1;
        super();
    }

    public void a(Context context, com.dianxinos.common.coins.CoinManager.RequestResult requestresult, String s)
    {
        if ("22".equals(s))
        {
            a.b.notifyDataSetChanged();
        }
    }
}
