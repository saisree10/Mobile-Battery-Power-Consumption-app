// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.view.View;
import android.widget.TextView;
import com.dianxinos.common.coins.CoinManager;

public class aug
{

    private Activity a;
    private CoinManager b;
    private TextView c;
    private View d;

    public aug(Activity activity, View view)
    {
        a = null;
        b = null;
        a = activity;
        d = view;
        b = CoinManager.a(a);
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        c = (TextView)view.findViewById(0x7f070074);
        d.setOnClickListener(new auh(this));
    }

    public void a()
    {
        int i = b.a();
        c.setText(Integer.toString(i));
    }

    void b()
    {
        (new aui(a)).show();
    }
}
