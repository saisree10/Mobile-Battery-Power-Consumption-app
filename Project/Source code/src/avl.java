// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.dianxinos.powermanager.ui.Integratelottery.WheelView;
import java.util.ArrayList;

public class avl extends LinearLayout
    implements android.view.View.OnClickListener
{

    private avv a;
    private avu b;
    private Context c;
    private RelativeLayout d;
    private Button e;
    private ArrayList f;
    private avm g;

    static Context a(avl avl1)
    {
        return avl1.c;
    }

    private void a()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        a(0x7f070232);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        a(0x7f070233);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        a(0x7f070234);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        d = (RelativeLayout)findViewById(0x7f070237);
        d.setOnClickListener(this);
        d.setClickable(false);
        d.setEnabled(false);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        e = (Button)findViewById(0x7f070236);
        e.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        ((TextView)findViewById(0x7f070239)).setTypeface(azp.a(c).d());
    }

    private void a(int i)
    {
        WheelView wheelview = b(i);
        wheelview.setViewAdapter(new avn(this, c));
        wheelview.setCurrentItem(0);
        wheelview.a(b);
        wheelview.a(a);
        wheelview.setCyclic(true);
        wheelview.setEnabled(false);
    }

    private WheelView b(int i)
    {
        return (WheelView)findViewById(i);
    }

    public void onClick(View view)
    {
        if (d == view)
        {
            me.e(c);
            if (!azx.b(c))
            {
                me.f(c);
            }
            Intent intent = new Intent("goto_personal_center");
            intent.putExtra("lottery_result", g.b);
            c.sendBroadcast(intent);
        }
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        a();
        f = avm.a();
    }
}
