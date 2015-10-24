// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import abm;
import abn;
import abo;
import abp;
import abq;
import abr;
import abs;
import abt;
import abu;
import abv;
import abw;
import acc;
import acz;
import adp;
import ahl;
import akx;
import android.app.NotificationManager;
import android.app.TabActivity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TabWidget;
import android.widget.TextView;
import android.widget.Toast;
import anv;
import anx;
import aoj;
import arm;
import ath;
import avi;
import axl;
import axn;
import azf;
import azi;
import azr;
import azy;
import baj;
import bal;
import com.dianxinos.common.coins.CoinManager;
import com.dianxinos.powermanager.charging.HealthChargingActivity;
import com.dianxinos.powermanager.toolbox.ToolboxActivity;
import com.dianxinos.powermanager.ui.CustomTabWidget;
import com.dianxinos.powermanager.ui.InverseTabHost;
import com.dianxinos.powermanager.ui.MainTitle;
import com.dianxinos.powermanager.usage.AppPowerUsageKitKatActivity;
import com.dianxinos.powermanager.usage.PowerUsageTabActivity;
import gu;
import ka;
import ly;
import mf;
import op;
import oq;
import pa;
import zc;

// Referenced classes of package com.dianxinos.powermanager:
//            PersonalCenterActivity, PowerMgrHomeActivity, SaverActivity, TipsActivity, 
//            PowerMangerApplication

public class PowerMgrTabActivity extends TabActivity
    implements android.widget.TabHost.OnTabChangeListener
{

    public static int a = 256;
    private static int b = 1;
    private static int c = 3;
    private static int d = 10;
    private static int e = 100;
    private static int f = 1000;
    private boolean A;
    private aoj B;
    private adp C;
    private mf D;
    private long E;
    private BroadcastReceiver F;
    private abw g;
    private InverseTabHost h;
    private boolean i;
    private boolean j;
    private boolean k;
    private boolean l;
    private int m;
    private akx n;
    private CustomTabWidget o;
    private azr p;
    private abv q;
    private int r;
    private pa s;
    private MainTitle t;
    private CoinManager u;
    private avi v;
    private String w;
    private boolean x;
    private boolean y;
    private boolean z;

    public PowerMgrTabActivity()
    {
        g = new abw(this, null);
        i = false;
        k = false;
        m = -1;
        x = false;
        y = false;
        z = false;
        A = false;
        F = new abm(this);
    }

    public static int a()
    {
        return b;
    }

    public static int a(PowerMgrTabActivity powermgrtabactivity, int i1)
    {
        powermgrtabactivity.m = i1;
        return i1;
    }

    private View a(int i1, int j1)
    {
        LayoutInflater layoutinflater = getLayoutInflater();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater.inflate(0x7f03008a, null);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        TextView textview = (TextView)view.findViewById(0x7f070018);
        textview.setText(i1);
        Drawable drawable = getApplicationContext().getResources().getDrawable(j1);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        textview.setCompoundDrawables(null, drawable, null, null);
        return view;
    }

    private android.widget.TabHost.TabSpec a(String s1, int i1, int j1, Intent intent)
    {
        return h.newTabSpec(s1).setIndicator(a(i1, j1)).setContent(intent);
    }

    public static azr a(PowerMgrTabActivity powermgrtabactivity)
    {
        return powermgrtabactivity.p;
    }

    public static String a(PowerMgrTabActivity powermgrtabactivity, String s1)
    {
        powermgrtabactivity.w = s1;
        return s1;
    }

    public static pa a(PowerMgrTabActivity powermgrtabactivity, pa pa)
    {
        powermgrtabactivity.s = pa;
        return pa;
    }

    private void a(int i1)
    {
        switch (i1)
        {
        default:
            return;

        case 4: // '\004'
            l = true;
            h.setCurrentTabByTag("tab_tag_mode");
            return;

        case 5: // '\005'
            ((NotificationManager)getSystemService("notification")).cancel(8);
            a(true);
            return;

        case 2: // '\002'
            bal.a(this, "widget14", "enter", Integer.valueOf(1));
            return;

        case 3: // '\003'
            bal.a(this, "statusbar", "click", Integer.valueOf(1));
            return;

        case 33: // '!'
            bal.a(this, "msgbox", "mbsbnc", Integer.valueOf(1));
            t.post(new abs(this));
            return;

        case 8: // '\b'
            bal.a(this, "desk", "cbw", Integer.valueOf(1));
            return;

        case 10: // '\n'
            a(true);
            return;
        }
    }

    private void a(boolean flag)
    {
        if (flag || h.hasWindowFocus())
        {
            h.setCurrentTabByTag("tab_tag_charging");
        }
    }

    public static boolean a(Context context)
    {
        return b(context);
    }

    public static boolean a(PowerMgrTabActivity powermgrtabactivity, boolean flag)
    {
        powermgrtabactivity.j = flag;
        return flag;
    }

    public static int b()
    {
        return c;
    }

    public static int b(PowerMgrTabActivity powermgrtabactivity)
    {
        return powermgrtabactivity.r;
    }

    private void b(int i1)
    {
        t.a(false);
        PersonalCenterActivity.a(this, 0x1020012);
        Intent intent = new Intent(this, com/dianxinos/powermanager/PersonalCenterActivity);
        intent.putExtra("android.intent.extra.KEY_EVENT", i1);
        super.startActivityForResult(intent, a);
    }

    public static void b(PowerMgrTabActivity powermgrtabactivity, int i1)
    {
        powermgrtabactivity.b(i1);
    }

    private static boolean b(Context context)
    {
        return oq.a(context).f("DEFAULT");
    }

    public static boolean b(PowerMgrTabActivity powermgrtabactivity, boolean flag)
    {
        powermgrtabactivity.i = flag;
        return flag;
    }

    public static int c()
    {
        return d;
    }

    public static InverseTabHost c(PowerMgrTabActivity powermgrtabactivity)
    {
        return powermgrtabactivity.h;
    }

    public static void c(PowerMgrTabActivity powermgrtabactivity, boolean flag)
    {
        powermgrtabactivity.a(flag);
    }

    public static int d()
    {
        return e;
    }

    public static boolean d(PowerMgrTabActivity powermgrtabactivity)
    {
        return powermgrtabactivity.i;
    }

    public static boolean d(PowerMgrTabActivity powermgrtabactivity, boolean flag)
    {
        powermgrtabactivity.k = flag;
        return flag;
    }

    private void e()
    {
        if (w != null)
        {
            azi.a().a(new abo(this));
        }
    }

    public static boolean e(PowerMgrTabActivity powermgrtabactivity)
    {
        return powermgrtabactivity.k;
    }

    public static boolean e(PowerMgrTabActivity powermgrtabactivity, boolean flag)
    {
        powermgrtabactivity.l = flag;
        return flag;
    }

    private void f()
    {
        (new abr(this)).start();
    }

    public static boolean f(PowerMgrTabActivity powermgrtabactivity)
    {
        return powermgrtabactivity.l;
    }

    public static boolean f(PowerMgrTabActivity powermgrtabactivity, boolean flag)
    {
        powermgrtabactivity.A = flag;
        return flag;
    }

    private void g()
    {
    }

    public static boolean g(PowerMgrTabActivity powermgrtabactivity)
    {
        return powermgrtabactivity.j;
    }

    public static boolean g(PowerMgrTabActivity powermgrtabactivity, boolean flag)
    {
        powermgrtabactivity.x = flag;
        return flag;
    }

    private void h()
    {
        h = (InverseTabHost)findViewById(0x1020012);
        InverseTabHost inversetabhost = h;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        inversetabhost.addTab(a("tab_tag_home", 0x7f0a0050, 0x7f020444, new Intent(this, com/dianxinos/powermanager/PowerMgrHomeActivity)));
        InverseTabHost inversetabhost1 = h;
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        inversetabhost1.addTab(a("tab_tag_mode", 0x7f0a024d, 0x7f020445, new Intent(this, com/dianxinos/powermanager/SaverActivity)));
        if (p.h())
        {
            azi.a().b(new abu(this));
            InverseTabHost inversetabhost5 = h;
            com.dianxinos.dxbs.R.string _tmp4 = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
            inversetabhost5.addTab(a("tab_tag_toolbox", 0x7f0a0269, 0x7f020447, new Intent(this, com/dianxinos/powermanager/toolbox/ToolboxActivity)));
            r = 2;
        }
        InverseTabHost inversetabhost2 = h;
        com.dianxinos.dxbs.R.string _tmp6 = ly.i;
        com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
        inversetabhost2.addTab(a("tab_tag_charging", 0x7f0a0052, 0x7f020443, new Intent(this, com/dianxinos/powermanager/charging/HealthChargingActivity)));
        if (azf.p())
        {
            InverseTabHost inversetabhost4 = h;
            com.dianxinos.dxbs.R.string _tmp8 = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp9 = ly.e;
            inversetabhost4.addTab(a("tab_tag_monitor", 0x7f0a0051, 0x7f020446, new Intent(this, com/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity)));
            return;
        } else
        {
            InverseTabHost inversetabhost3 = h;
            com.dianxinos.dxbs.R.string _tmp10 = ly.i;
            com.dianxinos.dxbs.R.drawable _tmp11 = ly.e;
            inversetabhost3.addTab(a("tab_tag_monitor", 0x7f0a0051, 0x7f020446, new Intent(this, com/dianxinos/powermanager/usage/PowerUsageTabActivity)));
            return;
        }
    }

    public static void h(PowerMgrTabActivity powermgrtabactivity)
    {
        powermgrtabactivity.j();
    }

    private void i()
    {
    }

    public static void i(PowerMgrTabActivity powermgrtabactivity)
    {
        powermgrtabactivity.e();
    }

    public static avi j(PowerMgrTabActivity powermgrtabactivity)
    {
        return powermgrtabactivity.v;
    }

    private void j()
    {
        h.setCurrentTabByTag("tab_tag_toolbox");
    }

    private void k()
    {
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        setTitle(0x7f0a0228);
    }

    public static void k(PowerMgrTabActivity powermgrtabactivity)
    {
        powermgrtabactivity.l();
    }

    public static String l(PowerMgrTabActivity powermgrtabactivity)
    {
        return powermgrtabactivity.w;
    }

    private void l()
    {
        h.setCurrentTabByTag("tab_tag_mode");
        sendBroadcast(new Intent(SaverActivity.v));
    }

    public static CoinManager m(PowerMgrTabActivity powermgrtabactivity)
    {
        return powermgrtabactivity.u;
    }

    public static adp n(PowerMgrTabActivity powermgrtabactivity)
    {
        return powermgrtabactivity.C;
    }

    public static aoj o(PowerMgrTabActivity powermgrtabactivity)
    {
        return powermgrtabactivity.B;
    }

    public static mf p(PowerMgrTabActivity powermgrtabactivity)
    {
        return powermgrtabactivity.D;
    }

    public static pa q(PowerMgrTabActivity powermgrtabactivity)
    {
        return powermgrtabactivity.s;
    }

    public static abw r(PowerMgrTabActivity powermgrtabactivity)
    {
        return powermgrtabactivity.g;
    }

    public static MainTitle s(PowerMgrTabActivity powermgrtabactivity)
    {
        return powermgrtabactivity.t;
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        if (keyevent.getAction() == 0)
        {
            View view = h.getCurrentTabView();
            View view1 = h.getCurrentView();
            if (!view.hasFocus() && !view1.hasFocus())
            {
                view1.requestFocus();
            }
        }
        return super.dispatchKeyEvent(keyevent);
    }

    public void finish()
    {
        super.finish();
        com.dianxinos.dxbs.R.anim _tmp = ly.a;
        com.dianxinos.dxbs.R.anim _tmp1 = ly.a;
        overridePendingTransition(0x7f040004, 0x7f040005);
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        super.onActivityResult(i1, j1, intent);
        if (i1 != a) goto _L2; else goto _L1
_L1:
        j1;
        JVM INSTR tableswitch 256 256: default 32
    //                   256 33;
           goto _L2 _L3
_L2:
        return;
_L3:
        y = true;
        l();
        return;
    }

    public void onBackPressed()
    {
        if (y)
        {
            y = false;
            b(0);
            return;
        }
        if (z)
        {
            z = false;
            h.setCurrentTabByTag("tab_tag_home");
            sendBroadcast(new Intent(PowerMgrHomeActivity.a));
            return;
        }
        if (A)
        {
            A = false;
            h.setCurrentTabByTag("tab_tag_mode");
            return;
        }
        long l1 = System.currentTimeMillis();
        if (l1 - E > (long)f)
        {
            E = l1;
            ly.i;
            Toast.makeText(this, 0x7f0a030f, 0).show();
            return;
        }
        if (!axn.f() && !azy.d(this, "com.es.common.DownloadingService") && !acc.a(getApplicationContext()).c() && !arm.a(getApplicationContext()).a())
        {
            Intent intent = new Intent("com.dianxinos.dxbs.KILLSELF");
            intent.setPackage(getPackageName());
            sendBroadcast(intent);
        }
        if (m != 0) goto _L2; else goto _L1
_L1:
        baj.a(this).b(1);
        m = 1;
_L4:
        finish();
        return;
_L2:
        if (m == 1)
        {
            baj.a(this).b(2);
            m = 2;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onCreate(Bundle bundle)
    {
_L2:
        ly.g;
        setContentView(0x7f030089);
        sendBroadcast(new Intent("com.dianxinos.dxbs.ABORTKILL"));
        n = akx.a(this);
        azi.a().b(new abq(this));
        o = (CustomTabWidget)getTabWidget();
        n.d();
        h();
        int i1 = 0;
        while (i1 < o.getChildCount()) 
        {
            View view = o.getChildAt(i1);
            if (i1 == -1 + o.getChildCount())
            {
                ly.e;
                view.setBackgroundResource(0x7f020432);
            } else
            if (i1 == 0)
            {
                ly.e;
                view.setBackgroundResource(0x7f020430);
            } else
            {
                ly.e;
                view.setBackgroundResource(0x7f020431);
            }
            i1++;
        }
        if (!flag)
        {
            anv.a(getApplicationContext());
            anv.a(getApplicationContext());
        }
        gu.a(getApplicationContext());
        axl axl1 = new axl(getApplicationContext());
        IntentFilter intentfilter;
        int j1;
        if (flag)
        {
            if (axl1.h())
            {
                axn.b(this);
                ka.a(this).a("dl-sta");
            }
        } else
        {
            axn.a(getApplicationContext());
        }
        intentfilter = new IntentFilter();
        intentfilter.addAction("com.dianxinos.dxbs.CLOSE_APP");
        intentfilter.addAction("com.dianxinos.dxbs.GOTO_TOOLBOX");
        intentfilter.addAction("goto_personal_center");
        intentfilter.addAction("back_from_play_login");
        registerReceiver(F, intentfilter, "com.dianxinos.dxbs.permission.CLOSEAPP", null);
        k();
        j1 = getIntent().getIntExtra("From", 0);
        a(j1);
        q = new abv(this, null);
        acz.a(this).a(q);
        if (j && !k && !l)
        {
            a(true);
        } else
        {
            bal.a(this, "tab", "home", Integer.valueOf(1));
            op.a(this);
        }
        h.setOnTabChangedListener(this);
        f();
        u = CoinManager.a(this);
        if (j1 == 11)
        {
            h.setCurrentTabByTag("tab_tag_mode");
            sendBroadcast(new Intent(SaverActivity.v));
        }
        B = aoj.b();
        C = adp.a(this);
        C.s();
        D = mf.a(this);
        return;
        super.onCreate(bundle);
        p = azr.a(this);
        boolean flag;
        if (bundle == null)
        {
            if (p.a())
            {
                anx.b(this);
                k = true;
                p.a(true);
                p.a(43);
                startActivity(new Intent(this, com/dianxinos/powermanager/TipsActivity));
                flag = false;
                break MISSING_BLOCK_LABEL_70;
            }
            if (p.d() < 43)
            {
                anx.b(this);
                v = new avi(this, new abp(this));
                v.show();
                p.a(43);
                flag = false;
                continue; /* Loop/switch isn't completed */
            }
        }
        flag = true;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void onDestroy()
    {
        ath.a(this).b();
        axn.h();
        g();
        i();
        try
        {
            unregisterReceiver(F);
        }
        catch (Exception exception) { }
        n.e();
        if (v != null)
        {
            v.dismiss();
        }
        super.onDestroy();
    }

    protected void onNewIntent(Intent intent)
    {
        setIntent(intent);
        int i1 = intent.getIntExtra("From", 0);
        if (i1 == 11)
        {
            h.setCurrentTabByTag("tab_tag_mode");
            sendBroadcast(new Intent(SaverActivity.v));
        }
        a(i1);
    }

    protected void onPause()
    {
        super.onPause();
        PowerMangerApplication.a(false);
        acz.a(this).b(q);
    }

    protected void onResume()
    {
        super.onResume();
        Intent intent = getIntent();
        z = intent.getBooleanExtra("diagnose_goto_smart_page", false);
        intent.removeExtra("diagnose_goto_smart_page");
        if (z)
        {
            l();
        }
        PowerMangerApplication.a(true);
        getTabWidget().invalidate();
        acz.a(this).a(q);
        axn.g();
        ahl.a(getWindow());
        if (t != null)
        {
            t.setRightButtonClickable(true);
            boolean flag = zc.a(this);
            t.a(flag);
            String s1;
            if (flag)
            {
                s1 = "mbmtn";
            } else
            {
                s1 = "mbmtno";
            }
            bal.a(this, "msgbox", s1, Integer.valueOf(1));
        }
        if (x && v != null && v.isShowing() && u.c())
        {
            x = false;
            e();
            v.dismiss();
            l();
        }
        azi.a().a(new abt(this));
    }

    public void onTabChanged(String s1)
    {
        if (s1.equals("tab_tag_monitor"))
        {
            bal.a(this, "tab", "monitor", Integer.valueOf(1));
        } else
        {
            if (s1.equals("tab_tag_mode"))
            {
                bal.a(this, "tab", "mode", Integer.valueOf(1));
                return;
            }
            if (s1.equals("tab_tag_charging"))
            {
                bal.a(this, "tab", "charge", Integer.valueOf(1));
                return;
            }
            if (s1.equals("tab_tag_home"))
            {
                bal.a(this, "tab", "home", Integer.valueOf(1));
                op.a(this);
                return;
            }
            if (s1.equals("tab_tag_toolbox"))
            {
                View view = h.getTabWidget().getChildAt(r);
                com.dianxinos.dxbs.R.id _tmp = ly.f;
                view.findViewById(0x7f070230).setVisibility(8);
                bal.a(this, "tab", "tabtb", Integer.valueOf(1));
                return;
            }
        }
    }

    public void setTitle(int i1)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        t = (MainTitle)findViewById(0x7f070007);
        t.setTitleText(i1);
        MainTitle maintitle = t;
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        maintitle.setRightButtonIcon(0x7f020453);
        t.setRightButtonOnclickListener(new abn(this));
    }

    public void startActivity(Intent intent)
    {
        super.startActivity(intent);
        com.dianxinos.dxbs.R.anim _tmp = ly.a;
        com.dianxinos.dxbs.R.anim _tmp1 = ly.a;
        overridePendingTransition(0x7f040006, 0x7f040007);
    }

    public void startActivityForResult(Intent intent, int i1)
    {
        super.startActivityForResult(intent, i1);
        com.dianxinos.dxbs.R.anim _tmp = ly.a;
        com.dianxinos.dxbs.R.anim _tmp1 = ly.a;
        overridePendingTransition(0x7f040006, 0x7f040007);
    }

}
