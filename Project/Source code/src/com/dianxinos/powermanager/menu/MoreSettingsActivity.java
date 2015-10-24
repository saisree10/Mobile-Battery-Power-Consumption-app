// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.menu;

import aam;
import adp;
import akn;
import aln;
import alv;
import alw;
import alx;
import aly;
import amb;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.widget.ImageView;
import aos;
import avg;
import avh;
import axl;
import axn;
import azi;
import bal;
import com.dianxinos.powermanager.PowerMangerApplication;
import com.dianxinos.powermanager.ShortcutOnekeyActivity;
import com.dianxinos.powermanager.ShowVolunteersActivity;
import com.dianxinos.powermanager.UserTipsActivity;
import com.dianxinos.powermanager.feedback.FeedbackDialog;
import com.dianxinos.powermanager.feedback.HotQAActivity;
import com.dianxinos.powermanager.skinshop.OperationConfigActivity;
import com.dianxinos.powermanager.ui.DxGotoPreference;
import com.dianxinos.powermanager.ui.DxSwitchPreference;
import com.dianxinos.powermanager.ui.MainTitle;
import java.util.ArrayList;
import java.util.Iterator;
import ka;
import ly;
import un;
import ur;
import uy;

// Referenced classes of package com.dianxinos.powermanager.menu:
//            AppWhiteListActivity, NoDisturbActivity, ChargingReminderActivity, StatusBarSettings

public class MoreSettingsActivity extends aam
    implements avh, ur
{

    private DxGotoPreference a;
    private amb b;
    private adp c;
    private ImageView d;
    private DxGotoPreference e;
    private DxGotoPreference f;
    private DxSwitchPreference g;
    private DxSwitchPreference h;
    private boolean i;
    private boolean j;
    private final int k[];
    private DxGotoPreference l;
    private DxSwitchPreference m;
    private DxSwitchPreference n;
    private boolean o;
    private boolean p;
    private DxGotoPreference q;
    private DxGotoPreference r;
    private DxGotoPreference s;
    private DxGotoPreference t;
    private DxGotoPreference u;
    private DxGotoPreference v;
    private aln w;
    private ArrayList x;
    private DxGotoPreference y;
    private BroadcastReceiver z;

    public MoreSettingsActivity()
    {
        int ai[] = new int[4];
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        ai[0] = 0x7f020234;
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        ai[1] = 0x7f020299;
        com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
        ai[2] = 0x7f02034e;
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        ai[3] = 0x7f0202ee;
        k = ai;
        x = new ArrayList();
    }

    private void a()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        v = (DxGotoPreference)findViewById(0x7f070158);
        v.setOnPreferenceChangeListener(this);
        DxGotoPreference dxgotopreference = v;
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        dxgotopreference.setBgRID(0x7f0203de);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        a = (DxGotoPreference)findViewById(0x7f070159);
        a.setOnPreferenceChangeListener(this);
        DxGotoPreference dxgotopreference1 = a;
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        dxgotopreference1.setBgRID(0x7f0203d7);
    }

    public static void a(MoreSettingsActivity moresettingsactivity)
    {
        moresettingsactivity.e();
    }

    private void b()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        e = (DxGotoPreference)findViewById(0x7f07015f);
        e.setOnPreferenceChangeListener(this);
        DxGotoPreference dxgotopreference = e;
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        dxgotopreference.setBgRID(0x7f0203de);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        f = (DxGotoPreference)findViewById(0x7f07015a);
        f.setOnPreferenceChangeListener(this);
        DxGotoPreference dxgotopreference1 = f;
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        dxgotopreference1.setBgRID(0x7f0203de);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        y = (DxGotoPreference)findViewById(0x7f07015b);
        y.setOnPreferenceChangeListener(this);
        DxGotoPreference dxgotopreference2 = y;
        com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
        dxgotopreference2.setBgRID(0x7f0203db);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        g = (DxSwitchPreference)findViewById(0x7f07015c);
        g.setOnPreferenceChangeListener(this);
        i = b.m();
        g.setEnabled(i);
        DxSwitchPreference dxswitchpreference = g;
        com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
        dxswitchpreference.setBgRID(0x7f0203db);
        com.dianxinos.dxbs.R.id _tmp8 = ly.f;
        h = (DxSwitchPreference)findViewById(0x7f07015d);
        h.setOnPreferenceChangeListener(this);
        j = b.j();
        h.setEnabled(j);
        DxSwitchPreference dxswitchpreference1 = h;
        com.dianxinos.dxbs.R.drawable _tmp9 = ly.e;
        dxswitchpreference1.setBgRID(0x7f0203d7);
    }

    private void c()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        l = (DxGotoPreference)findViewById(0x7f070160);
        l.setOnPreferenceChangeListener(this);
        DxGotoPreference dxgotopreference = l;
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        dxgotopreference.setBgRID(0x7f0203d7);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        n = (DxSwitchPreference)findViewById(0x7f070163);
        n.setOnPreferenceChangeListener(this);
        p = b.e();
        n.setEnabled(p);
        DxSwitchPreference dxswitchpreference = n;
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        dxswitchpreference.setBgRID(0x7f0203db);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        m = (DxSwitchPreference)findViewById(0x7f070161);
        DxSwitchPreference dxswitchpreference1 = m;
        com.dianxinos.dxbs.R.string _tmp5 = ly.i;
        com.dianxinos.dxbs.R.string _tmp6 = ly.i;
        dxswitchpreference1.b(0x7f0a0361, 0x7f0a0362);
        m.setOnPreferenceChangeListener(this);
        o = b.d();
        m.setEnabled(o);
        DxSwitchPreference dxswitchpreference2 = m;
        com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
        dxswitchpreference2.setBgRID(0x7f0203de);
        if (!o)
        {
            DxSwitchPreference dxswitchpreference3 = m;
            com.dianxinos.dxbs.R.drawable _tmp8 = ly.e;
            com.dianxinos.dxbs.R.string _tmp9 = ly.i;
            dxswitchpreference3.a(0x7f0203e5, 0x7f0a0362);
        }
        com.dianxinos.dxbs.R.id _tmp10 = ly.f;
        u = (DxGotoPreference)findViewById(0x7f070164);
        u.setOnPreferenceChangeListener(this);
        DxGotoPreference dxgotopreference1 = u;
        com.dianxinos.dxbs.R.drawable _tmp11 = ly.e;
        dxgotopreference1.setBgRID(0x7f0203d7);
        u.a(true);
    }

    private void d()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        q = (DxGotoPreference)findViewById(0x7f070165);
        q.setOnPreferenceChangeListener(this);
        DxGotoPreference dxgotopreference = q;
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        dxgotopreference.setBgRID(0x7f0203de);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        r = (DxGotoPreference)findViewById(0x7f070166);
        r.setOnPreferenceChangeListener(this);
        DxGotoPreference dxgotopreference1 = r;
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        dxgotopreference1.setBgRID(0x7f0203db);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        s = (DxGotoPreference)findViewById(0x7f070167);
        s.setOnPreferenceChangeListener(this);
        DxGotoPreference dxgotopreference2 = s;
        com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
        dxgotopreference2.setBgRID(0x7f0203db);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        t = (DxGotoPreference)findViewById(0x7f070168);
        t.setOnPreferenceChangeListener(this);
        DxGotoPreference dxgotopreference3 = t;
        com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
        dxgotopreference3.setBgRID(0x7f0203d7);
    }

    private void e()
    {
        un.a(this).a(0, 1, this);
    }

    public void a(int i1, int j1, ArrayList arraylist)
    {
        if (j1 != 0 || arraylist == null || arraylist.size() <= 0) goto _L2; else goto _L1
_L1:
        ArrayList arraylist1 = x;
        arraylist1;
        JVM INSTR monitorenter ;
        x.clear();
        String s1;
        String s2;
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); x.add(new akn(s1, s2)))
        {
            uy uy1 = (uy)iterator.next();
            s1 = uy1.b();
            s2 = uy1.a();
        }

        break MISSING_BLOCK_LABEL_103;
        Exception exception;
        exception;
        arraylist1;
        JVM INSTR monitorexit ;
        throw exception;
        arraylist1;
        JVM INSTR monitorexit ;
_L2:
    }

    public void a(avg avg)
    {
        boolean flag = true;
        if (avg != v) goto _L2; else goto _L1
_L1:
        (new aos(this)).show();
_L4:
        return;
_L2:
        if (avg == a)
        {
            startActivity(new Intent(this, com/dianxinos/powermanager/menu/AppWhiteListActivity));
            return;
        }
        if (avg == e)
        {
            if (c.a())
            {
                d.setVisibility(8);
                c.b();
            }
            startActivity(new Intent(this, com/dianxinos/powermanager/skinshop/OperationConfigActivity));
            return;
        }
        if (avg == f)
        {
            startActivity(new Intent(this, com/dianxinos/powermanager/menu/NoDisturbActivity));
            return;
        }
        if (avg == y)
        {
            startActivity(new Intent(this, com/dianxinos/powermanager/menu/ChargingReminderActivity));
            return;
        }
        if (avg == g)
        {
            if (i)
            {
                flag = false;
            }
            i = flag;
            g.setEnabled(i);
            b.k(i);
            return;
        }
        if (avg == h)
        {
            if (j)
            {
                flag = false;
            }
            j = flag;
            h.setEnabled(j);
            b.h(j);
            return;
        }
        if (avg == l)
        {
            startActivity(new Intent(this, com/dianxinos/powermanager/menu/StatusBarSettings));
            return;
        }
        if (avg != m)
        {
            break; /* Loop/switch isn't completed */
        }
        DxSwitchPreference dxswitchpreference1 = m;
        if (m.getEnabled())
        {
            flag = false;
        }
        dxswitchpreference1.setEnabled(flag);
        o = m.getEnabled();
        b.b(o);
        if (!o)
        {
            DxSwitchPreference dxswitchpreference2 = m;
            ly.e;
            ly.i;
            dxswitchpreference2.a(0x7f0203e5, 0x7f0a0362);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (avg == n)
        {
            DxSwitchPreference dxswitchpreference = n;
            if (n.getEnabled())
            {
                flag = false;
            }
            dxswitchpreference.setEnabled(flag);
            p = n.getEnabled();
            b.c(p);
            return;
        }
        if (avg == q)
        {
            startActivity(new Intent(this, com/dianxinos/powermanager/UserTipsActivity));
            return;
        }
        if (avg == r)
        {
            if (x.size() > 0)
            {
                Intent intent = new Intent(this, com/dianxinos/powermanager/feedback/HotQAActivity);
                intent.putExtra("QA_LIST", x);
                startActivity(intent);
                return;
            } else
            {
                (new FeedbackDialog(this)).show();
                return;
            }
        }
        if (avg == s)
        {
            axn.c(this);
            ka.a(this).a("dl-ck");
            return;
        }
        if (avg == u)
        {
            ShortcutOnekeyActivity.a(this);
            return;
        }
        if (avg == t)
        {
            startActivity(new Intent(this, com/dianxinos/powermanager/ShowVolunteersActivity));
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f030054);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        MainTitle maintitle = (MainTitle)findViewById(0x7f070007);
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        maintitle.setTitleText(0x7f0a023f);
        maintitle.a();
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        maintitle.setLeftButtonIcon(0x7f020450);
        maintitle.setLeftButtonOnclickListener(new alv(this));
        com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
        maintitle.setRightButtonIcon(0x7f020451);
        maintitle.setRightButtonOnclickListener(new alw(this));
        b = amb.a(this);
        bal.a(this, "tab", "more", Integer.valueOf(1));
        a();
        b();
        c();
        d();
        c = adp.a(this);
        if (c.a())
        {
            com.dianxinos.dxbs.R.id _tmp5 = ly.f;
            d = (ImageView)findViewById(0x7f07015e);
            d.setVisibility(0);
        }
        azi.a().a(new alx(this));
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("com.dianxinos.dxbs.GOTO_TOOLBOX");
        z = new aly(this);
        registerReceiver(z, intentfilter);
    }

    protected void onDestroy()
    {
        unregisterReceiver(z);
        super.onDestroy();
    }

    protected void onPause()
    {
        super.onPause();
        PowerMangerApplication.a(false);
    }

    protected void onResume()
    {
        super.onResume();
        PowerMangerApplication.a(true);
        w = aln.a(this);
        w.b();
        int i1 = w.a().size();
        boolean flag;
        int j1;
        int k1;
        String s1;
        int l1;
        if (i1 <= 0)
        {
            DxGotoPreference dxgotopreference2 = a;
            Resources resources = getResources();
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            dxgotopreference2.setSummary(resources.getString(0x7f0a0262));
        } else
        {
            DxGotoPreference dxgotopreference = a;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(i1);
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            aobj[1] = getString(0x7f0a025a);
            dxgotopreference.setSummary(getString(0x7f0a036f, aobj));
        }
        f.setEnabledString(NoDisturbActivity.a(this));
        flag = b.a();
        if (flag)
        {
            j1 = k[b.b()];
        } else
        {
            j1 = 0;
        }
        if (flag)
        {
            k1 = 0;
        } else
        {
            com.dianxinos.dxbs.R.string _tmp3 = ly.i;
            k1 = 0x7f0a00d0;
        }
        l.a(j1, k1);
        s1 = c.f();
        l1 = c.g();
        e.setIcon(c.a(s1, l1, true));
        if ((new axl(getApplicationContext())).d())
        {
            DxGotoPreference dxgotopreference1 = s;
            com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
            dxgotopreference1.a(0x7f020206, 0);
            return;
        } else
        {
            s.a(0, 0);
            return;
        }
    }
}
