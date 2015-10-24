// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.skinshop;

import aao;
import adp;
import adz;
import aek;
import aet;
import aeu;
import aev;
import aew;
import aex;
import agz;
import ajy;
import akx;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import aoj;
import apm;
import apn;
import apo;
import app;
import apq;
import apr;
import aps;
import apt;
import apu;
import apv;
import apw;
import apx;
import apz;
import aqa;
import aqb;
import aqc;
import aqj;
import awg;
import azi;
import azz;
import bab;
import bad;
import bak;
import bal;
import bc;
import com.dianxinos.common.coins.CoinManager;
import com.dianxinos.powermanager.batterytheme.BatteryThemeActivity;
import com.dianxinos.powermanager.ui.MainTitle;
import com.facebook.Session;
import java.util.ArrayList;
import ly;
import mc;
import org.json.JSONObject;

// Referenced classes of package com.dianxinos.powermanager.skinshop:
//            SkinShopViewPager

public class OperationConfigActivity extends aao
    implements aeu
{

    protected MainTitle a;
    public aqj b;
    protected SkinShopViewPager c;
    private aex d;
    private aet e;
    private adp f;
    private boolean g;
    private akx h;
    private Drawable i;
    private BroadcastReceiver j;
    private azz k;
    private awg l;
    private mc m;
    private Handler n;
    private adz o;
    private ajy p;
    private Toast q;
    private BroadcastReceiver r;

    public OperationConfigActivity()
    {
        g = false;
        m = new apm(this);
        n = new apu(this);
        p = new aqa(this);
        r = new apo(this);
    }

    public static adp a(OperationConfigActivity operationconfigactivity)
    {
        return operationconfigactivity.f;
    }

    private void a(ImageView imageview)
    {
        android.content.Context context = getApplicationContext();
        com.dianxinos.dxbs.R.anim _tmp = ly.a;
        imageview.startAnimation(AnimationUtils.loadAnimation(context, 0x7f04000a));
    }

    public static void a(OperationConfigActivity operationconfigactivity, String s)
    {
        operationconfigactivity.c(s);
    }

    public static void b(OperationConfigActivity operationconfigactivity)
    {
        operationconfigactivity.e();
    }

    public static Handler c(OperationConfigActivity operationconfigactivity)
    {
        return operationconfigactivity.n;
    }

    private void c(String s)
    {
        long l1 = f.m();
        String s1;
        aev aev1;
        if (l1 >= 0L && String.valueOf(l1).equals(s))
        {
            if (!TextUtils.isEmpty(s1 = f.n()) && (aev1 = aoj.b().b(s1, b.b())) != null)
            {
                azi.a().a(new apt(this, aev1));
                if (CoinManager.a(this).d("9", String.valueOf(aev1.u)))
                {
                    aev1.h = aew.c;
                    b(aev1);
                    return;
                }
            }
        }
    }

    public static boolean d(OperationConfigActivity operationconfigactivity)
    {
        return operationconfigactivity.g;
    }

    public static aet e(OperationConfigActivity operationconfigactivity)
    {
        return operationconfigactivity.e;
    }

    private void e()
    {
        bab bab1 = k.a(bad.b);
        if (bab1 != null)
        {
            if (l == null)
            {
                l = new awg(this);
            }
            l.dismiss();
            awg awg1 = l;
            int i1;
            if (bab1 == bab.b)
            {
                com.dianxinos.dxbs.R.string _tmp = ly.i;
                i1 = 0x7f0a0304;
            } else
            {
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                i1 = 0x7f0a0305;
            }
            awg1.setTitle(i1);
            l.show();
        }
    }

    private void f()
    {
        o.a();
    }

    private void g()
    {
        if (o != null)
        {
            o.b();
            o = null;
        }
    }

    private void h()
    {
        IntentFilter intentfilter = new IntentFilter("purchase_changed_action");
        intentfilter.addAction("use_default_skin");
        bc.a(this).a(r, intentfilter);
    }

    private void i()
    {
        bc.a(this).a(r);
    }

    public aew a(aev aev1)
    {
        boolean flag = true;
        boolean flag1;
        boolean flag2;
        if (Float.compare(aev1.i, 0.0F) > 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (!TextUtils.isEmpty(aev1.g))
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        if (Float.compare(aev1.j, 0.0F) <= 0)
        {
            flag = false;
        }
        if (c(aev1))
        {
            return aew.g;
        }
        if (aev1.v)
        {
            aev1.v = false;
            return aew.f;
        }
        if (b(aev1.p))
        {
            return aew.e;
        }
        if (a(aev1.p))
        {
            return aew.d;
        }
        boolean flag3 = h.b();
        if (flag3 && (!flag1 || !flag2) || !flag3 && !flag)
        {
            return aew.a;
        }
        boolean flag4;
        boolean flag5;
        if (flag)
        {
            flag4 = CoinManager.a(this).d("9", String.valueOf(aev1.u));
        } else
        {
            flag4 = false;
        }
        flag5 = false;
        if (flag1)
        {
            flag5 = false;
            if (flag2)
            {
                flag5 = aek.a(this).a(aev1.g);
            }
        }
        if (!flag4 && !flag5)
        {
            return aew.b;
        } else
        {
            return aew.c;
        }
    }

    protected ArrayList a()
    {
        return aoj.b().e();
    }

    public void a(int i1)
    {
        if (q == null)
        {
            q = Toast.makeText(this, i1, 0);
        }
        q.setText(i1);
        q.show();
    }

    public void a(aet aet)
    {
        e = aet;
    }

    public void a(View view, TextView textview, ImageView imageview, ImageView imageview1, aev aev1)
    {
        switch (aps.a[aev1.h.ordinal()])
        {
        default:
            throw new IllegalStateException((new StringBuilder()).append("You forget handle me: ").append(aev1.h).toString());

        case 2: // '\002'
            view.setVisibility(0);
            textview.setCompoundDrawables(null, null, null, null);
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            textview.setText(getString(0x7f0a02b0));
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            view.setBackgroundResource(0x7f020413);
            Resources resources3 = getResources();
            com.dianxinos.dxbs.R.color _tmp2 = ly.c;
            textview.setTextColor(resources3.getColor(0x7f0900ad));
            imageview.setVisibility(8);
            imageview1.clearAnimation();
            imageview1.setVisibility(8);
            return;

        case 1: // '\001'
            view.setVisibility(0);
            Resources resources2;
            if (h.b())
            {
                textview.setCompoundDrawables(null, null, null, null);
                com.dianxinos.dxbs.R.string _tmp3 = ly.i;
                Object aobj[] = new Object[1];
                aobj[0] = Float.valueOf(aev1.i);
                textview.setText(getString(0x7f0a0385, aobj));
            } else
            {
                textview.setText((new StringBuilder()).append(aev1.j).append("").toString());
                textview.setCompoundDrawablesWithIntrinsicBounds(i, null, null, null);
            }
            com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
            view.setBackgroundResource(0x7f020413);
            resources2 = getResources();
            com.dianxinos.dxbs.R.color _tmp5 = ly.c;
            textview.setTextColor(resources2.getColor(0x7f0900ad));
            imageview.setVisibility(8);
            imageview1.clearAnimation();
            imageview1.setVisibility(8);
            return;

        case 3: // '\003'
            view.setVisibility(0);
            textview.setCompoundDrawables(null, null, null, null);
            com.dianxinos.dxbs.R.string _tmp6 = ly.i;
            textview.setText(0x7f0a02b2);
            com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
            view.setBackgroundResource(0x7f02041e);
            Resources resources1 = getResources();
            com.dianxinos.dxbs.R.color _tmp8 = ly.c;
            textview.setTextColor(resources1.getColor(0x7f0900ae));
            imageview.setVisibility(8);
            imageview1.clearAnimation();
            imageview1.setVisibility(8);
            return;

        case 4: // '\004'
            view.setVisibility(0);
            textview.setCompoundDrawables(null, null, null, null);
            textview.setText("");
            com.dianxinos.dxbs.R.drawable _tmp9 = ly.e;
            view.setBackgroundResource(0x7f020420);
            imageview1.setVisibility(0);
            a(imageview1);
            imageview.setVisibility(8);
            return;

        case 5: // '\005'
            view.setVisibility(0);
            textview.setCompoundDrawables(null, null, null, null);
            com.dianxinos.dxbs.R.string _tmp10 = ly.i;
            textview.setText(0x7f0a02b1);
            com.dianxinos.dxbs.R.drawable _tmp11 = ly.e;
            view.setBackgroundResource(0x7f02041e);
            Resources resources = getResources();
            com.dianxinos.dxbs.R.color _tmp12 = ly.c;
            textview.setTextColor(resources.getColor(0x7f0900ae));
            imageview.setVisibility(8);
            imageview1.clearAnimation();
            imageview1.setVisibility(8);
            return;

        case 6: // '\006'
            view.setVisibility(0);
            textview.setCompoundDrawables(null, null, null, null);
            textview.setText("");
            com.dianxinos.dxbs.R.drawable _tmp13 = ly.e;
            view.setBackgroundResource(0x7f020420);
            imageview1.setVisibility(0);
            a(imageview1);
            imageview.setVisibility(8);
            return;

        case 7: // '\007'
            imageview1.clearAnimation();
            imageview1.setVisibility(8);
            break;
        }
        if (BatteryThemeActivity.c(this))
        {
            com.dianxinos.dxbs.R.drawable _tmp14 = ly.e;
            view.setBackgroundResource(0x7f02041e);
            view.setVisibility(0);
            textview.setCompoundDrawables(null, null, null, null);
            textview.setText("");
            imageview.setVisibility(0);
            return;
        } else
        {
            view.setVisibility(8);
            imageview.setVisibility(8);
            return;
        }
    }

    public void a(String s, int i1)
    {
        if (e == null)
        {
            return;
        } else
        {
            runOnUiThread(new aqb(this, s, i1));
            return;
        }
    }

    public boolean a(String s)
    {
        if (s == null)
        {
            return false;
        } else
        {
            return o.b(s);
        }
    }

    protected void b()
    {
        azi.a().a(new apr(this));
    }

    public void b(aev aev1)
    {
        aps.a[aev1.h.ordinal()];
        JVM INSTR tableswitch 1 7: default 52
    //                   1 53
    //                   2 135
    //                   3 180
    //                   4 52
    //                   5 222
    //                   6 52
    //                   7 298;
           goto _L1 _L2 _L3 _L4 _L1 _L5 _L1 _L6
_L1:
        return;
_L2:
        f.b(aev1.u);
        f.c(aev1.p);
        if (h.b())
        {
            d.a(aev1.g);
            bak.a(this, aev1.g);
            bal.a(this, "ssp", aev1);
            return;
        } else
        {
            (new agz(this, aev1, new app(this))).a(1);
            return;
        }
_L3:
        f.b(aev1.u);
        f.c(aev1.p);
        bal.a(this, "ssf", aev1);
        azi.a().a(new apq(this, aev1));
_L4:
        f.b(aev1.u);
        f.c(aev1.p);
        bal.a(this, "ssd", aev1);
        o.a(aev1.p);
        return;
_L5:
        aev1.v = true;
        d();
        String s = bal.a(this, aev1).toString();
        aqc aqc1 = new aqc(this, this);
        String as[] = new String[4];
        as[0] = aev1.p;
        as[1] = s;
        as[2] = aev1.g;
        as[3] = String.valueOf(aev1.u);
        aqc1.execute(as);
        return;
_L6:
        if (BatteryThemeActivity.c(this))
        {
            n.sendEmptyMessage(256);
            return;
        }
        if (true) goto _L1; else goto _L7
_L7:
    }

    public boolean b(String s)
    {
        if (s == null)
        {
            return false;
        } else
        {
            return adz.b(this, s);
        }
    }

    protected void c()
    {
        CoinManager.a(this, m);
    }

    public boolean c(aev aev1)
    {
        return "ot_".equalsIgnoreCase(f.f()) && (aev1.u == f.h() || aev1.q.equals(f.i()));
    }

    public void d()
    {
        if (e == null)
        {
            return;
        } else
        {
            runOnUiThread(new apn(this));
            return;
        }
    }

    public void finish()
    {
        super.finish();
        if (g)
        {
            com.dianxinos.dxbs.R.anim _tmp = ly.a;
            com.dianxinos.dxbs.R.anim _tmp1 = ly.a;
            overridePendingTransition(0x7f040004, 0x7f040005);
        }
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        super.onActivityResult(i1, j1, intent);
        if (i1 == 260 && j1 == -1)
        {
            finish();
        }
        Session session = Session.getActiveSession();
        if (session != null)
        {
            session.onActivityResult(this, i1, j1, intent);
        }
    }

    public void onBackPressed()
    {
        finish();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        f = adp.a(this);
        c();
        Resources resources = getResources();
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        i = resources.getDrawable(0x7f020127);
        h = akx.a(this);
        Intent intent = getIntent();
        if (intent != null)
        {
            g = intent.getBooleanExtra("from_arc", false);
        }
        com.dianxinos.dxbs.R.layout _tmp1 = ly.g;
        setContentView(0x7f03007c);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        a = (MainTitle)findViewById(0x7f070007);
        a.setVisibility(0);
        MainTitle maintitle = a;
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        maintitle.setLeftButtonIcon(0x7f020450);
        a.setLeftButtonOnclickListener(new apv(this));
        MainTitle maintitle1 = a;
        com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
        maintitle1.setRightButtonIcon(0x7f020205);
        a.setRightButtonOnclickListener(new apw(this));
        a.a();
        o = new adz(p);
        d = new aex(this);
        f();
        h();
        ArrayList arraylist = a();
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        c = (SkinShopViewPager)findViewById(0x7f0701fe);
        c.setOnPageChangeListener(new apx(this, arraylist));
        b = new aqj(this);
        b.a(arraylist);
        c.setAdapter(b);
        c.f();
        c.setCurrentItemInCenter(1);
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("com.dianxinos.dxbs.GOTO_TOOLBOX");
        j = new apz(this);
        registerReceiver(j, intentfilter);
        k = azz.a(this);
    }

    protected void onDestroy()
    {
        super.onDestroy();
        g();
        i();
        CoinManager.b(this, m);
        if (j != null)
        {
            unregisterReceiver(j);
        }
        if (l != null)
        {
            l.dismiss();
        }
    }

    protected void onResume()
    {
        super.onResume();
        d();
        b();
    }
}
