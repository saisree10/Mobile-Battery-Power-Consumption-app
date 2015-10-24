// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.ListActivity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.dianxinos.common.coins.CoinManager;

public class pv extends ListActivity
{

    protected Activity a;
    private BroadcastReceiver b;
    private BroadcastReceiver c;
    private BroadcastReceiver d;
    private android.view.View.OnClickListener e;
    private po f;
    private Toast g;
    private View h;
    private View i;
    private TextView j;
    private View k;

    public pv()
    {
        b = new pw(this);
        c = new px(this);
        d = new py(this);
        e = new pz(this);
    }

    static void a(pv pv1)
    {
        pv1.n();
    }

    static boolean a(Context context)
    {
        WifiManager wifimanager = (WifiManager)context.getSystemService("wifi");
        if (wifimanager == null)
        {
            return false;
        }
        boolean flag;
        if (wifimanager.getWifiState() == 2 || wifimanager.getWifiState() == 3)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    static View b(pv pv1)
    {
        return pv1.h;
    }

    private void l()
    {
        if (!e())
        {
            return;
        } else
        {
            h = findViewById(oi.nonetworkbar);
            h.setOnClickListener(e);
            h.findViewById(0x1020027).setOnClickListener(e);
            return;
        }
    }

    private void m()
    {
        if (d())
        {
            i = findViewById(oi.toolbox_balancebar);
            if (i != null)
            {
                i.setOnClickListener(e);
                j = (TextView)i.findViewById(oi.toolbox_balance_value);
                k = i.findViewById(oi.toolbox_balance_refresh);
                k.setOnClickListener(e);
                h();
                return;
            }
        }
    }

    private void n()
    {
label0:
        {
            int i1 = oa.a(this);
            if (e())
            {
                if (i1 == 0)
                {
                    pf.f(a);
                    h.setVisibility(0);
                } else
                {
                    h.setVisibility(8);
                }
            }
            if (d())
            {
                if (i1 != 0)
                {
                    break label0;
                }
                i.setVisibility(8);
            }
            return;
        }
        i.setVisibility(0);
    }

    private void o()
    {
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentfilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentfilter.addDataScheme("package");
        registerReceiver(b, intentfilter);
    }

    private void p()
    {
        unregisterReceiver(b);
    }

    private void q()
    {
        bc bc1 = bc.a(this);
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("com.dianxinos.toolbox.ACTION_PULL_COMPLETED");
        intentfilter.addAction("com.dianxinos.toolbox.ACTION_ICON_COMPLETED");
        bc1.a(c, intentfilter);
    }

    private void r()
    {
        bc.a(this).a(c);
    }

    private void s()
    {
        if (!e())
        {
            return;
        } else
        {
            IntentFilter intentfilter = new IntentFilter();
            intentfilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            registerReceiver(d, intentfilter);
            return;
        }
    }

    private void t()
    {
        if (!e())
        {
            return;
        } else
        {
            unregisterReceiver(d);
            return;
        }
    }

    protected void a()
    {
    }

    protected void a(int i1)
    {
        if (f == null)
        {
            f = new po(this, ol.Dialog_Fullscreen);
            f.setOnCancelListener(new qa(this));
        }
        f.a(i1);
        f.show();
    }

    protected void a(String s1)
    {
    }

    protected void a(String s1, int i1)
    {
    }

    protected boolean a(Intent intent)
    {
        return false;
    }

    protected void b()
    {
    }

    protected void b(int i1)
    {
        if (g == null)
        {
            g = Toast.makeText(this, i1, 0);
        } else
        {
            g.setText(i1);
        }
        g.show();
    }

    protected void b(String s1)
    {
        if (g == null)
        {
            g = Toast.makeText(this, s1, 0);
        } else
        {
            g.setText(s1);
        }
        g.show();
    }

    protected void b(String s1, int i1)
    {
    }

    protected int c()
    {
        boolean flag = a(this);
        boolean flag1 = a(this);
        byte byte0;
        if (flag && flag1)
        {
            byte0 = 4;
        } else
        {
            if (flag)
            {
                return 2;
            }
            byte0 = 0;
            if (flag1)
            {
                return 1;
            }
        }
        return byte0;
    }

    protected boolean d()
    {
        return false;
    }

    protected boolean e()
    {
        return false;
    }

    protected void f()
    {
    }

    protected void g()
    {
    }

    protected void h()
    {
        if (d() && j != null)
        {
            int i1 = CoinManager.a(this).a();
            j.setText(Integer.toString(i1));
        }
    }

    protected int i()
    {
        return oj.toolbox_list_activity;
    }

    protected void j()
    {
        if (f != null && f.isShowing())
        {
            f.dismiss();
        }
    }

    protected void k()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(i());
        a = this;
        l();
        m();
        n();
        ((Button)findViewById(oi.toolbox_no_apps_refresh_button)).setOnClickListener(e);
        q();
        o();
        s();
    }

    protected void onDestroy()
    {
        p();
        r();
        t();
        super.onDestroy();
    }
}
