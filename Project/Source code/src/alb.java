// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;

class alb
{

    TextView a;
    ImageView b;
    CheckBox c;
    final ala d;

    public alb(ala ala, View view)
    {
        d = ala;
        super();
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        a = (TextView)view.findViewById(0x7f070015);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        b = (ImageView)view.findViewById(0x7f070014);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        c = (CheckBox)view.findViewById(0x7f070016);
        view.setTag(this);
    }

    public void a(akz akz1)
    {
        a.setText(akz.c(akz1));
        b.setImageDrawable(akz.d(akz1));
        if (akz1.a)
        {
            c.setChecked(true);
            return;
        } else
        {
            c.setChecked(false);
            return;
        }
    }
}
