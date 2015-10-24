// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class ays
{

    public static boolean a = false;

    public ays()
    {
    }

    private void a(View view)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        TextView textview = (TextView)view.findViewById(0x7f070012);
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        textview.setText(0x7f0a008b);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        ((Button)view.findViewById(0x7f0701cc)).setVisibility(0);
    }

    public void a(Context context, View view)
    {
        if (a)
        {
            a(view);
        } else
        {
            com.dianxinos.dxbs.R.id _tmp = ly.f;
            TextView textview = (TextView)view.findViewById(0x7f070012);
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            textview.setText(0x7f0a008c);
            if (azf.b)
            {
                com.dianxinos.dxbs.R.string _tmp2 = ly.i;
                textview.setText(0x7f0a0133);
                com.dianxinos.dxbs.R.id _tmp3 = ly.f;
                Button button = (Button)view.findViewById(0x7f0701cc);
                button.setVisibility(0);
                button.setOnClickListener(new ayt(this, context));
                return;
            }
        }
    }

    public boolean a()
    {
        return a;
    }

    public void b()
    {
        a = false;
    }

}
