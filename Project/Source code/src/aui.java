// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;

public class aui extends auu
{

    private android.view.View.OnClickListener c;

    public aui(Context context)
    {
        super(context);
        c = new auj(this);
        h();
        i();
        LayoutInflater layoutinflater = getLayoutInflater();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater.inflate(0x7f030019, null);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        view.findViewById(0x7f070026).setOnClickListener(c);
        b(view);
    }
}
