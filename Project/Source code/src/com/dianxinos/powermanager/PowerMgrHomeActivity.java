// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import aam;
import abb;
import abc;
import acz;
import adc;
import add;
import aff;
import afh;
import amb;
import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.TextView;
import azf;
import azq;
import azy;
import bal;
import com.dianxinos.powermanager.diagnostic.DiagnosticMainActivity;
import com.dianxinos.powermanager.skinshop.OperationConfigActivity;
import com.dianxinos.powermanager.ui.BatteryInfoView;
import com.dianxinos.powermanager.ui.DxBatteryGraph;
import com.dianxinos.powermanager.ui.DxDigitalTimeDisplay;
import com.dianxinos.powermanager.ui.HistoryChartView;
import ly;
import zv;

// Referenced classes of package com.dianxinos.powermanager:
//            BatteryInfoDetailsActivity, BoosterActivity, PowerMgrTabActivity

public class PowerMgrHomeActivity extends aam
    implements adc, android.view.View.OnClickListener
{

    public static String a = "goto_diagnose_page";
    private static int c = 0;
    private abb b;
    private abc d;
    private acz e;
    private DxBatteryGraph f;
    private TextView g;
    private DxDigitalTimeDisplay h;
    private Button i;
    private add j;
    private boolean k;
    private int l;
    private boolean m;
    private aff n;
    private amb o;
    private BatteryInfoView p;
    private View q;
    private HistoryChartView r;
    private TextView s;
    private View t;

    public PowerMgrHomeActivity()
    {
        d = new abc(this, null);
        l = -1;
        m = true;
    }

    public static aff a(PowerMgrHomeActivity powermgrhomeactivity)
    {
        return powermgrhomeactivity.n;
    }

    private void a(int i1)
    {
        if (i1 >= 1800 && !k)
        {
            android.content.Context context = getApplicationContext();
            com.dianxinos.dxbs.R.anim _tmp = ly.a;
            android.view.animation.Animation animation = AnimationUtils.loadAnimation(context, 0x7f040000);
            TextView textview = s;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            Object aobj[] = new Object[1];
            aobj[0] = azq.c(this, i1);
            textview.setText(getString(0x7f0a037e, aobj));
            s.startAnimation(animation);
        }
        o.c(0);
    }

    private void a(int i1, boolean flag)
    {
        int j1 = acz.a(i1);
        f.a(i1, flag, j1);
        int k1 = acz.a(this, j1);
        if (j1 != l)
        {
            l = j1;
            f.a(k1);
        }
        if (flag)
        {
            TextView textview1 = g;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            textview1.setText(0x7f0a0058);
            int i2 = n.f().c();
            if ((long)i2 == -1L)
            {
                h.a(0, 0);
                return;
            } else
            {
                h.a(i2);
                return;
            }
        }
        TextView textview = g;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        textview.setText(0x7f0a0057);
        int l1 = j.k;
        if (l1 == -1)
        {
            h.a(0, 0);
            return;
        } else
        {
            h.a(l1);
            return;
        }
    }

    public static void a(PowerMgrHomeActivity powermgrhomeactivity, int i1, boolean flag)
    {
        powermgrhomeactivity.a(i1, flag);
    }

    public static boolean b(PowerMgrHomeActivity powermgrhomeactivity)
    {
        return powermgrhomeactivity.k;
    }

    public static add c(PowerMgrHomeActivity powermgrhomeactivity)
    {
        return powermgrhomeactivity.j;
    }

    public static BatteryInfoView d(PowerMgrHomeActivity powermgrhomeactivity)
    {
        return powermgrhomeactivity.p;
    }

    public void a(add add1)
    {
        j = add1;
        k = add1.l;
        d.sendEmptyMessage(1);
    }

    public void onBackPressed()
    {
        if (m)
        {
            return;
        }
        Activity activity = getParent();
        if (activity != null)
        {
            activity.onBackPressed();
            return;
        } else
        {
            finish();
            return;
        }
    }

    public void onClick(View view)
    {
        if (view == p)
        {
            startActivity(new Intent(this, com/dianxinos/powermanager/BatteryInfoDetailsActivity));
            bal.a(this, "home", "cbs", Integer.valueOf(1));
        } else
        {
            if (view == f)
            {
                startActivity(new Intent(this, com/dianxinos/powermanager/skinshop/OperationConfigActivity));
                return;
            }
            if (view == h)
            {
                startActivity(new Intent(this, com/dianxinos/powermanager/BatteryInfoDetailsActivity));
                bal.a(this, "home", "ctr", Integer.valueOf(1));
                return;
            }
            if (view == i)
            {
                Intent intent = new Intent(this, com/dianxinos/powermanager/diagnostic/DiagnosticMainActivity);
                bal.a(this, "home", "analysis", Integer.valueOf(1));
                startActivity(intent);
                return;
            }
            if (view == t)
            {
                bal.a(true, this, "dsbdcc", "dsbc", Integer.valueOf(1));
                startActivity(new Intent(this, com/dianxinos/powermanager/BoosterActivity));
                return;
            }
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f03005f);
        e = acz.a(this);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        p = (BatteryInfoView)findViewById(0x7f070195);
        p.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        f = (DxBatteryGraph)findViewById(0x7f07018f);
        f.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        g = (TextView)findViewById(0x7f070190);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        h = (DxDigitalTimeDisplay)findViewById(0x7f070193);
        h.setOnDigitalClickListener(this);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        i = (Button)findViewById(0x7f070194);
        i.setOnClickListener(this);
        n = aff.a(getApplicationContext());
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        r = (HistoryChartView)findViewById(0x7f070196);
        com.dianxinos.dxbs.R.id _tmp7 = ly.f;
        q = findViewById(0x7f070197);
        com.dianxinos.dxbs.R.id _tmp8 = ly.f;
        s = (TextView)findViewById(0x7f070192);
        com.dianxinos.dxbs.R.id _tmp9 = ly.f;
        t = findViewById(0x7f070198);
        t.setOnClickListener(this);
        b = new abb(this, null);
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction(a);
        registerReceiver(b, intentfilter);
    }

    protected void onDestroy()
    {
        f.setOnClickListener(null);
        h.setOnDigitalClickListener(null);
        if (b != null)
        {
            unregisterReceiver(b);
        }
        super.onDestroy();
    }

    protected void onPause()
    {
        super.onPause();
        s.clearAnimation();
        m = true;
        e.b(this);
    }

    protected void onResume()
    {
        super.onResume();
        o = amb.a(this);
        a(o.r());
        m = false;
        PowerMgrTabActivity powermgrtabactivity = (PowerMgrTabActivity)getParent();
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        powermgrtabactivity.setTitle(0x7f0a0228);
        d.sendEmptyMessage(1);
        e.a(this);
        if (r.b())
        {
            r.setVisibility(0);
            r.a();
            q.setVisibility(8);
        } else
        {
            r.setVisibility(8);
            q.setVisibility(0);
        }
        if (azf.c(this))
        {
            p.setVisibility(8);
        }
        if (azy.a(this, "com.dianxinos.optimizer.duplay") || !zv.c(this))
        {
            t.setVisibility(8);
            return;
        } else
        {
            t.setVisibility(0);
            bal.a(true, this, "dsbdcc", "dsbd", Integer.valueOf(1));
            return;
        }
    }

    public void startActivity(Intent intent)
    {
        getParent().startActivity(intent);
    }

}
