// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.smart;

import ahb;
import ahp;
import aje;
import akx;
import amb;
import amh;
import amp;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.LinearGradient;
import android.os.Bundle;
import android.text.Html;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import aoe;
import arr;
import asl;
import asm;
import aso;
import asp;
import asq;
import asr;
import aug;
import auu;
import avg;
import avh;
import azh;
import azp;
import bag;
import baj;
import bal;
import com.dianxinos.common.coins.CoinManager;
import com.dianxinos.powermanager.menu.AutoCleanupSettings;
import com.dianxinos.powermanager.ui.ModeDxGotoPreference;
import com.dianxinos.powermanager.ui.ModeDxSwitchPreference;
import ly;
import mc;
import me;
import n;
import pt;
import rc;

// Referenced classes of package com.dianxinos.powermanager.smart:
//            SmartModeBatterySettings, SmartModeTimeSettings

public class SmartSettingsActivity extends rc
    implements android.view.View.OnClickListener, avh
{

    private static int f = 1;
    private static int g = 2;
    private static int h = 3;
    private TextView A;
    private ahb B;
    private View C;
    private CoinManager D;
    private aug E;
    private mc F;
    private akx e;
    private arr i;
    private amb j;
    private ModeDxSwitchPreference k;
    private ModeDxSwitchPreference l;
    private ModeDxSwitchPreference m;
    private ModeDxGotoPreference n;
    private ModeDxGotoPreference o;
    private ModeDxGotoPreference p;
    private View q;
    private Button r;
    private asr s;
    private TextView t;
    private boolean u;
    private amp v;
    private amh w;
    private ahp x;
    private ahp y;
    private View z;

    public SmartSettingsActivity()
    {
        F = new asl(this);
    }

    private String a(int i1, int j1)
    {
        String s1;
        if (i1 < 10)
        {
            s1 = (new StringBuilder()).append("0").append(i1).append(":").toString();
        } else
        {
            s1 = (new StringBuilder()).append(i1).append(":").toString();
        }
        if (j1 < 10)
        {
            return (new StringBuilder()).append(s1).append("0").append(j1).toString();
        } else
        {
            return (new StringBuilder()).append(s1).append(j1).toString();
        }
    }

    public static void a(SmartSettingsActivity smartsettingsactivity)
    {
        smartsettingsactivity.n();
    }

    public static void b(SmartSettingsActivity smartsettingsactivity)
    {
        smartsettingsactivity.o();
    }

    public static akx c(SmartSettingsActivity smartsettingsactivity)
    {
        return smartsettingsactivity.e;
    }

    public static void d(SmartSettingsActivity smartsettingsactivity)
    {
        smartsettingsactivity.k();
    }

    public static asr e(SmartSettingsActivity smartsettingsactivity)
    {
        return smartsettingsactivity.s;
    }

    public static int f()
    {
        return h;
    }

    public static void f(SmartSettingsActivity smartsettingsactivity)
    {
        smartsettingsactivity.l();
    }

    public static int g()
    {
        return g;
    }

    public static int h()
    {
        return f;
    }

    private void i()
    {
        auu auu1 = new auu(getActivity());
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        auu1.setTitle(0x7f0a018d);
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        auu1.c(0x7f0a018f);
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        auu1.a(0x7f0a018e, new aso(this));
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        auu1.b(0x7f0a0114, null);
        auu1.show();
    }

    private void j()
    {
        auu auu1 = new auu(getActivity());
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        auu1.setTitle(0x7f0a018d);
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        auu1.c(0x7f0a0190);
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        auu1.a(0x7f0a0114, new asp(this));
        auu1.show();
    }

    private void k()
    {
        bag.a().a(new asq(this));
    }

    private void l()
    {
        azh azh1 = azh.a(getActivity().getApplicationContext());
        azh1.e();
        if (azh1.a() > 0 && azh1.a(0) != null)
        {
            k.setEnabled(true);
            i.k(1);
            return;
        } else
        {
            n n1 = getActivity();
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            Toast.makeText(n1, getString(0x7f0a0192), 0).show();
            return;
        }
    }

    private boolean m()
    {
        return e.b() || B.d();
    }

    private void n()
    {
        if (m())
        {
            q.setVisibility(8);
        } else
        {
            A.setText(B.c());
            q.setVisibility(0);
        }
        n.b();
        l.b();
        k.b();
        m.b();
        o.b();
        p.setADUnlockStatus(aje.a(getActivity()).a());
        p.b();
        o();
    }

    private void o()
    {
        if (D.c() && !m())
        {
            C.setVisibility(0);
            E.a();
            return;
        } else
        {
            C.setVisibility(8);
            return;
        }
    }

    public void a(avg avg)
    {
        boolean flag = true;
        if (avg == k)
        {
            baj.a(getActivity().getApplicationContext()).a(flag);
            if (i.r() != flag)
            {
                if (!u)
                {
                    i();
                } else
                if (bag.a().b())
                {
                    l();
                } else
                {
                    j();
                }
            } else
            {
                k.setEnabled(false);
                i.k(0);
            }
            getActivity().sendBroadcast(new Intent("com.dianxinos.dxbs.action.RemainingTimeUpate"));
        } else
        {
            if (avg == l)
            {
                boolean flag3 = i.c();
                ModeDxSwitchPreference modedxswitchpreference1 = l;
                boolean flag4;
                arr arr2;
                if (!flag3)
                {
                    flag4 = flag;
                } else
                {
                    flag4 = false;
                }
                modedxswitchpreference1.setEnabled(flag4);
                arr2 = i;
                if (flag3)
                {
                    flag = false;
                }
                arr2.c(flag);
                return;
            }
            if (avg == m)
            {
                boolean flag1 = i.b();
                ModeDxSwitchPreference modedxswitchpreference = m;
                boolean flag2;
                arr arr1;
                if (!flag1)
                {
                    flag2 = flag;
                } else
                {
                    flag2 = false;
                }
                modedxswitchpreference.setEnabled(flag2);
                arr1 = i;
                if (flag1)
                {
                    flag = false;
                }
                arr1.b(flag);
                i.a(x.a(), y.a());
                return;
            }
            if (avg == n)
            {
                baj.a(getActivity().getApplicationContext()).b(flag);
                startActivity(new Intent(getActivity(), com/dianxinos/powermanager/smart/SmartModeBatterySettings));
                return;
            }
            if (avg == o)
            {
                startActivity(new Intent(getActivity(), com/dianxinos/powermanager/smart/SmartModeTimeSettings));
                return;
            }
            if (avg == p)
            {
                startActivity(new Intent(getActivity(), com/dianxinos/powermanager/menu/AutoCleanupSettings));
                return;
            }
        }
    }

    public void onClick(View view)
    {
        if (view == z)
        {
            me.a(b, aoe.a.b());
            B.a(0);
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        d = layoutinflater.inflate(0x7f030083, viewgroup, false);
        View view = d;
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        C = view.findViewById(0x7f070073);
        E = new aug(getActivity(), C);
        D = CoinManager.a(getActivity());
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        q = a(0x7f070214);
        i = arr.a(getActivity());
        j = amb.a(getActivity());
        B = new ahb(getActivity(), aoe.a.b());
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        z = a(0x7f070217);
        z.setOnClickListener(this);
        View view1 = z;
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        A = (TextView)view1.findViewById(0x7f070218);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        k = (ModeDxSwitchPreference)a(0x7f070096);
        k.setOnPreferenceChangeListener(this);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        n = (ModeDxGotoPreference)a(0x7f07021c);
        n.setOnPreferenceChangeListener(this);
        com.dianxinos.dxbs.R.id _tmp7 = ly.f;
        l = (ModeDxSwitchPreference)a(0x7f070219);
        l.setOnPreferenceChangeListener(this);
        l.setEnabled(i.c());
        com.dianxinos.dxbs.R.id _tmp8 = ly.f;
        m = (ModeDxSwitchPreference)a(0x7f07021d);
        m.setOnPreferenceChangeListener(this);
        m.setEnabled(i.b());
        com.dianxinos.dxbs.R.id _tmp9 = ly.f;
        o = (ModeDxGotoPreference)a(0x7f07021b);
        o.setOnPreferenceChangeListener(this);
        com.dianxinos.dxbs.R.id _tmp10 = ly.f;
        p = (ModeDxGotoPreference)a(0x7f07021a);
        p.setOnPreferenceChangeListener(this);
        e = akx.a(getActivity());
        com.dianxinos.dxbs.R.id _tmp11 = ly.f;
        r = (Button)a(0x7f070216);
        r.setOnClickListener(new asm(this));
        bal.a(getActivity());
        s = new asr(this, null);
        com.dianxinos.dxbs.R.id _tmp12 = ly.f;
        t = (TextView)a(0x7f070018);
        azp azp1 = azp.a(getActivity());
        t.setTypeface(azp1.a());
        com.dianxinos.dxbs.R.id _tmp13 = ly.f;
        ((TextView)a(0x7f070213)).setTypeface(azp1.b());
        Resources resources = getResources();
        com.dianxinos.dxbs.R.dimen _tmp14 = ly.d;
        float f1 = resources.getDimensionPixelSize(0x7f080134);
        Resources resources1 = getResources();
        com.dianxinos.dxbs.R.color _tmp15 = ly.c;
        int i1 = resources1.getColor(0x7f090063);
        Resources resources2 = getResources();
        com.dianxinos.dxbs.R.color _tmp16 = ly.c;
        LinearGradient lineargradient = new LinearGradient(0.0F, 0.0F, 0.0F, f1, i1, resources2.getColor(0x7f090064), android.graphics.Shader.TileMode.CLAMP);
        t.getPaint().setShader(lineargradient);
        v = amp.a(getActivity());
        w = v.g();
        x = w.a(4);
        y = w.a(2);
        return d;
    }

    public void onDestroy()
    {
        super.onDestroy();
        if (!akx.a(getActivity()).b())
        {
            arr.a(getActivity()).t();
        }
    }

    public void onPause()
    {
        super.onPause();
        CoinManager.b(getActivity(), F);
        i.e();
    }

    public void onResume()
    {
        super.onResume();
        CoinManager.a(getActivity(), F);
        n();
        u = bag.a(getActivity().getApplicationContext());
        ModeDxSwitchPreference modedxswitchpreference = k;
        boolean flag;
        int i1;
        amp amp1;
        String s1;
        int ai[];
        String s2;
        int ai1[];
        String s3;
        if (i.r() == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        modedxswitchpreference.setEnabled(flag);
        i1 = i.k();
        amp1 = amp.a(getActivity().getApplicationContext());
        if (i.i())
        {
            String s4 = amp1.c(amp1.g(i1));
            n.setEnabled(true);
            ModeDxGotoPreference modedxgotopreference3 = n;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            Object aobj[] = new Object[2];
            aobj[0] = Integer.toString(i.j());
            aobj[1] = s4;
            modedxgotopreference3.setEnabledSpanned(Html.fromHtml(getString(0x7f0a0146, aobj)));
        } else
        {
            n.setEnabled(false);
            ModeDxGotoPreference modedxgotopreference = n;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            modedxgotopreference.setEnabledString(getString(0x7f0a0149));
        }
        s1 = amp1.c(amp1.g(i.m()));
        ai = i.n();
        s2 = a(ai[0], ai[1]);
        ai1 = i.o();
        s3 = a(ai1[0], ai1[1]);
        if (i.l())
        {
            o.setEnabled(true);
            ModeDxGotoPreference modedxgotopreference2 = o;
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            modedxgotopreference2.setEnabledSpanned(Html.fromHtml(getString(0x7f0a014f, new Object[] {
                s2, s3, s1
            })));
        } else
        {
            o.setEnabled(false);
            ModeDxGotoPreference modedxgotopreference1 = o;
            com.dianxinos.dxbs.R.string _tmp3 = ly.i;
            modedxgotopreference1.setEnabledString(getString(0x7f0a014e));
        }
        if (j.h())
        {
            p.setEnabled(true);
        } else
        {
            p.setEnabled(false);
        }
        if (m())
        {
            bal.a(getActivity(), "mode", "smart", Integer.valueOf(1));
        } else
        {
            bal.a(getActivity(), "mode", "smartiap", Integer.valueOf(1));
            me.i(getActivity());
        }
        pt.a(getActivity());
    }

}
