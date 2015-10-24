// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;

class auj
    implements android.view.View.OnClickListener
{

    final aui a;

    auj(aui aui1)
    {
        a = aui1;
        super();
    }

    public void onClick(View view)
    {
        int i = view.getId();
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        if (i == 0x7f070026)
        {
            a.dismiss();
        }
    }
}
