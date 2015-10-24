// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.charging;

import aam;
import acz;
import adc;
import add;
import adh;
import afc;
import aff;
import afg;
import afh;
import afn;
import afo;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import azq;
import bal;
import bar;
import com.dianxinos.powermanager.PowerMgrTabActivity;
import com.dianxinos.powermanager.chargingrecord.ChargerRecordActivity;
import com.dianxinos.powermanager.skinshop.OperationConfigActivity;
import com.dianxinos.powermanager.ui.DxBatteryGraph;
import com.dianxinos.powermanager.ui.DxDigitalTimeDisplay;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import ly;

public class HealthChargingActivity extends aam
    implements adc, android.view.View.OnClickListener
{

    private int A;
    private int B;
    private TextView C;
    private TextView D;
    private TextView E;
    private LinearLayout F;
    private LinearLayout G;
    private LinearLayout H;
    private aff I;
    private DxBatteryGraph J;
    private DxDigitalTimeDisplay K;
    private TextView L;
    private TextView M;
    private TextView N;
    private ImageView O;
    private ImageView P;
    private afc Q;
    ArrayList a;
    private afn b;
    private acz c;
    private add d;
    private TextView e;
    private TextView f;
    private boolean g;
    private TextView h;
    private TextView i;
    private TextView j;
    private int k;
    private ImageView l;
    private ImageView m;
    private ImageView n;
    private ImageView o;
    private ImageView p;
    private ImageView q;
    private ImageView r;
    private ImageView s;
    private ImageView t;
    private Calendar u;
    private String v;
    private String w;
    private String x;
    private String y;
    private adh z;

    public HealthChargingActivity()
    {
        b = new afn(this, null);
        a = new ArrayList();
    }

    public static add a(HealthChargingActivity healthchargingactivity)
    {
        return healthchargingactivity.d;
    }

    private String a(long l1)
    {
        Date date = new Date(l1);
        u.setTime(date);
        return (new StringBuilder()).append(u.get(1)).append(v).append(1 + u.get(2)).append(w).append(u.get(5)).append(x).toString();
    }

    private void a(int i1, int j1)
    {
        O.setVisibility(0);
        P.setVisibility(0);
        O.setBackgroundResource(i1);
        P.setBackgroundResource(j1);
    }

    private void a(afh afh1)
    {
        if (g)
        {
            int j1 = I.f().c();
            Iterator iterator;
            afg afg1;
            afo afo1;
            Resources resources1;
            Drawable drawable1;
            TextView textview4;
            TextView textview5;
            if ((long)j1 == -1L)
            {
                K.a(0, 0);
            } else
            {
                K.a(j1);
            }
            textview5 = M;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            textview5.setText(0x7f0a0176);
        } else
        {
            int i1 = d.k;
            TextView textview;
            if (i1 == -1)
            {
                K.a(0, 0);
            } else
            {
                K.a(i1);
            }
            textview = M;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            textview.setText(0x7f0a0177);
        }
        if (d.e == 2)
        {
            resources1 = getApplicationContext().getResources();
            com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
            drawable1 = resources1.getDrawable(0x7f020146);
            drawable1.setBounds(0, 0, drawable1.getMinimumWidth(), drawable1.getMinimumHeight());
            L.setCompoundDrawables(drawable1, null, null, null);
            textview4 = L;
            com.dianxinos.dxbs.R.string _tmp3 = ly.i;
            textview4.setText(0x7f0a0364);
            L.setVisibility(0);
        } else
        if (d.e == 1)
        {
            Resources resources = getApplicationContext().getResources();
            com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
            Drawable drawable = resources.getDrawable(0x7f020145);
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
            L.setCompoundDrawables(drawable, null, null, null);
            TextView textview3 = L;
            com.dianxinos.dxbs.R.string _tmp5 = ly.i;
            textview3.setText(0x7f0a0365);
            L.setVisibility(0);
        } else
        {
            L.setVisibility(8);
        }
        if (!I.g())
        {
            for (iterator = afh1.b().iterator(); iterator.hasNext(); a(afo1, afg1))
            {
                afg1 = (afg)iterator.next();
                afo1 = (afo)a.get(afg1.b);
                afo1.e.setText(afg1.a);
                afo1.a.setOnClickListener(this);
            }

            TextView textview1 = f;
            StringBuilder stringbuilder = new StringBuilder();
            com.dianxinos.dxbs.R.string _tmp6 = ly.i;
            textview1.setText(stringbuilder.append(getString(0x7f0a0058)).append(y).toString());
            long l1 = z.c();
            ImageView imageview;
            ImageView imageview1;
            if (-1L == l1)
            {
                TextView textview2 = f;
                com.dianxinos.dxbs.R.string _tmp7 = ly.i;
                textview2.setText(0x7f0a017d);
            } else
            {
                com.dianxinos.dxbs.R.string _tmp8 = ly.i;
                String s1 = getString(0x7f0a017e);
                f.setText((new StringBuilder()).append(s1).append(a(l1)).toString());
            }
            imageview = O;
            com.dianxinos.dxbs.R.drawable _tmp9 = ly.e;
            imageview.setBackgroundResource(0x7f020178);
            imageview1 = P;
            com.dianxinos.dxbs.R.drawable _tmp10 = ly.e;
            imageview1.setBackgroundResource(0x7f020178);
            return;
        } else
        {
            b(afh1);
            return;
        }
    }

    private void a(afo afo1, afg afg1)
    {
        afo1.a.setVisibility(0);
        afo1.f.setVisibility(0);
        afo1.e.setVisibility(0);
        afo1.e.setText(afg1.c);
        ImageView imageview;
        switch (afg1.d())
        {
        default:
            return;

        case 0: // '\0'
            ImageView imageview3 = afo1.b;
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            imageview3.setBackgroundResource(0x7f02014f);
            afo1.c.clearAnimation();
            afo1.c.setVisibility(8);
            TextView textview2 = afo1.f;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            textview2.setText(0x7f0a0183);
            afo1.f.setTextColor(B);
            afo1.d.setBackgroundResource(afg1.e);
            afo1.e.setTextColor(B);
            return;

        case 1: // '\001'
            ImageView imageview1 = afo1.b;
            com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
            imageview1.setBackgroundResource(0x7f02014f);
            afo1.c.setVisibility(0);
            ImageView imageview2 = afo1.c;
            com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
            imageview2.setBackgroundResource(0x7f0201d1);
            com.dianxinos.dxbs.R.anim _tmp4 = ly.a;
            android.view.animation.Animation animation = AnimationUtils.loadAnimation(this, 0x7f04000b);
            afo1.c.startAnimation(animation);
            TextView textview1 = afo1.f;
            com.dianxinos.dxbs.R.string _tmp5 = ly.i;
            textview1.setText(0x7f0a0182);
            afo1.f.setTextColor(A);
            afo1.d.setBackgroundResource(afg1.f);
            afo1.e.setTextColor(A);
            return;

        case 2: // '\002'
            imageview = afo1.b;
            break;
        }
        com.dianxinos.dxbs.R.drawable _tmp6 = ly.e;
        imageview.setBackgroundResource(0x7f020151);
        afo1.c.clearAnimation();
        afo1.c.setVisibility(8);
        TextView textview = afo1.f;
        com.dianxinos.dxbs.R.string _tmp7 = ly.i;
        textview.setText(0x7f0a0181);
        afo1.f.setTextColor(A);
        afo1.d.setBackgroundResource(afg1.f);
        afo1.e.setTextColor(A);
    }

    private void b(afh afh1)
    {
        afg afg1;
        afo afo1;
        for (Iterator iterator = afh1.b().iterator(); iterator.hasNext(); a(afo1, afg1))
        {
            afg1 = (afg)iterator.next();
            afo1 = (afo)a.get(afg1.b);
            afo1.e.setText(afg1.a);
            afo1.a.setOnClickListener(this);
        }

        if (I.e() == 105)
        {
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            a(0x7f020178, 0x7f020178);
        } else
        if (I.e() == 102 || I.e() == 103)
        {
            com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
            com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
            a(0x7f020179, 0x7f020179);
        } else
        {
            com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
            com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
            a(0x7f020179, 0x7f020178);
        }
        if (I.e() == 103)
        {
            TextView textview1 = f;
            com.dianxinos.dxbs.R.string _tmp6 = ly.i;
            textview1.setText(0x7f0a0180);
            return;
        } else
        {
            TextView textview = f;
            StringBuilder stringbuilder = new StringBuilder();
            com.dianxinos.dxbs.R.string _tmp7 = ly.i;
            textview.setText(stringbuilder.append(getString(0x7f0a0058)).append(y).toString());
            return;
        }
    }

    public static boolean b(HealthChargingActivity healthchargingactivity)
    {
        return healthchargingactivity.g;
    }

    public static acz c(HealthChargingActivity healthchargingactivity)
    {
        return healthchargingactivity.c;
    }

    public static DxBatteryGraph d(HealthChargingActivity healthchargingactivity)
    {
        return healthchargingactivity.J;
    }

    public void a(add add1)
    {
        boolean flag;
        if (I == null)
        {
            flag = add1.l;
        } else
        if (add1.l && I.e() != 100 && I.e() != 103)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        g = flag;
        d = add1;
        b.sendEmptyMessage(1);
    }

    public void b(add add1)
    {
        afh afh1 = I.f();
        k = afh1.c();
        int i1;
        if (k == -1)
        {
            i1 = 0;
        } else
        {
            i1 = k;
        }
        k = i1;
        y = azq.d(this, k);
        a(afh1);
    }

    public void onBackPressed()
    {
        Activity activity = getParent();
        if (activity != null)
        {
            activity.onBackPressed();
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }

    public void onClick(View view)
    {
        if (view == e)
        {
            startActivity(new Intent(this, com/dianxinos/powermanager/chargingrecord/ChargerRecordActivity));
            bal.a(this, "record", "e", Integer.valueOf(1));
        } else
        {
            if (view == J)
            {
                startActivity(new Intent(this, com/dianxinos/powermanager/skinshop/OperationConfigActivity));
                return;
            }
            if (!isFinishing())
            {
                if (Q == null)
                {
                    Q = new afc(this, 1);
                } else
                if (Q.isShowing())
                {
                    return;
                }
                if (view == F)
                {
                    Q.b(1);
                } else
                if (view == H)
                {
                    Q.b(2);
                } else
                if (view == G)
                {
                    Q.b(3);
                } else
                if (view == N)
                {
                    Q.b(0);
                }
                Q.show();
                return;
            }
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f030040);
        c = acz.a(this);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        f = (TextView)findViewById(0x7f070102);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        h = (TextView)findViewById(0x7f07010b);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        i = (TextView)findViewById(0x7f070112);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        j = (TextView)findViewById(0x7f070119);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        M = (TextView)findViewById(0x7f0700fc);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        N = (TextView)findViewById(0x7f070101);
        TextView textview = N;
        StringBuilder stringbuilder = (new StringBuilder()).append("<u>");
        com.dianxinos.dxbs.R.string _tmp7 = ly.i;
        textview.setText(Html.fromHtml(stringbuilder.append(getString(0x7f0a0298)).append("</u>").toString()));
        N.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp8 = ly.f;
        K = (DxDigitalTimeDisplay)findViewById(0x7f0700fb);
        com.dianxinos.dxbs.R.id _tmp9 = ly.f;
        e = (TextView)findViewById(0x7f0700fd);
        e.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp10 = ly.f;
        J = (DxBatteryGraph)findViewById(0x7f0700fe);
        J.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp11 = ly.f;
        L = (TextView)findViewById(0x7f0700ff);
        Resources resources = getResources();
        com.dianxinos.dxbs.R.id _tmp12 = ly.f;
        l = (ImageView)findViewById(0x7f070108);
        com.dianxinos.dxbs.R.id _tmp13 = ly.f;
        m = (ImageView)findViewById(0x7f07010f);
        com.dianxinos.dxbs.R.id _tmp14 = ly.f;
        n = (ImageView)findViewById(0x7f070116);
        com.dianxinos.dxbs.R.id _tmp15 = ly.f;
        o = (ImageView)findViewById(0x7f070109);
        com.dianxinos.dxbs.R.id _tmp16 = ly.f;
        p = (ImageView)findViewById(0x7f07010a);
        com.dianxinos.dxbs.R.id _tmp17 = ly.f;
        q = (ImageView)findViewById(0x7f070110);
        com.dianxinos.dxbs.R.id _tmp18 = ly.f;
        r = (ImageView)findViewById(0x7f070111);
        com.dianxinos.dxbs.R.id _tmp19 = ly.f;
        s = (ImageView)findViewById(0x7f070117);
        com.dianxinos.dxbs.R.id _tmp20 = ly.f;
        t = (ImageView)findViewById(0x7f070118);
        com.dianxinos.dxbs.R.id _tmp21 = ly.f;
        O = (ImageView)findViewById(0x7f070103);
        com.dianxinos.dxbs.R.id _tmp22 = ly.f;
        P = (ImageView)findViewById(0x7f070104);
        u = Calendar.getInstance();
        com.dianxinos.dxbs.R.string _tmp23 = ly.i;
        v = getString(0x7f0a0184);
        com.dianxinos.dxbs.R.string _tmp24 = ly.i;
        w = getString(0x7f0a0185);
        com.dianxinos.dxbs.R.string _tmp25 = ly.i;
        x = getString(0x7f0a0186);
        z = adh.a(this);
        com.dianxinos.dxbs.R.color _tmp26 = ly.c;
        A = resources.getColor(0x7f09003e);
        com.dianxinos.dxbs.R.color _tmp27 = ly.c;
        B = resources.getColor(0x7f090040);
        com.dianxinos.dxbs.R.id _tmp28 = ly.f;
        F = (LinearLayout)findViewById(0x7f070106);
        F.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp29 = ly.f;
        G = (LinearLayout)findViewById(0x7f070114);
        G.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp30 = ly.f;
        H = (LinearLayout)findViewById(0x7f07010d);
        H.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp31 = ly.f;
        C = (TextView)findViewById(0x7f07010c);
        com.dianxinos.dxbs.R.id _tmp32 = ly.f;
        E = (TextView)findViewById(0x7f070113);
        com.dianxinos.dxbs.R.id _tmp33 = ly.f;
        D = (TextView)findViewById(0x7f07011a);
        I = aff.a(getApplicationContext());
        a.add(new afo(this, F, l, o, p, h, C));
        a.add(new afo(this, H, m, q, r, i, E));
        a.add(new afo(this, G, n, s, t, j, D));
        if (bar.a())
        {
            getWindow();
            com.dianxinos.dxbs.R.id _tmp34 = ly.f;
            bar.a(findViewById(0x7f0700f9));
        }
    }

    protected void onDestroy()
    {
        if (Q != null)
        {
            Q.dismiss();
            Q = null;
        }
        super.onDestroy();
    }

    protected void onPause()
    {
        c.b(this);
        b.removeMessages(1);
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
        PowerMgrTabActivity powermgrtabactivity = (PowerMgrTabActivity)getParent();
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        powermgrtabactivity.setTitle(0x7f0a0052);
        c.a(this);
    }

    public void startActivity(Intent intent)
    {
        getParent().startActivity(intent);
    }
}
