// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.smart;

import aao;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import ari;
import arj;
import ark;
import arl;
import auu;
import azh;
import bag;
import ly;

public class CpuSelectDialog extends aao
    implements android.view.View.OnClickListener
{

    private static int a = 1;
    private static int b = 2;
    private static int c = 3;
    private arl d;
    private azh e;
    private TextView f;
    private TextView g;
    private TextView h;
    private ViewGroup i;
    private ViewGroup j;
    private ViewGroup k;
    private ImageView l;
    private ImageView m;
    private ImageView n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private auu u;
    private auu v;

    public CpuSelectDialog()
    {
    }

    public static int a()
    {
        return c;
    }

    public static void a(CpuSelectDialog cpuselectdialog)
    {
        cpuselectdialog.f();
    }

    public static int b()
    {
        return b;
    }

    public static arl b(CpuSelectDialog cpuselectdialog)
    {
        return cpuselectdialog.d;
    }

    public static int c()
    {
        return a;
    }

    private void d()
    {
        u = new auu(this);
        auu auu1 = u;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        auu1.setTitle(0x7f0a018d);
        auu auu2 = u;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        auu2.c(0x7f0a018f);
        auu auu3 = u;
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        auu3.a(0x7f0a018e, new ari(this));
        auu auu4 = u;
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        auu4.b(0x7f0a0114, null);
        u.show();
    }

    private void e()
    {
        v = new auu(this);
        auu auu1 = v;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        auu1.setTitle(0x7f0a018d);
        auu auu2 = v;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        auu2.c(0x7f0a0190);
        auu auu3 = v;
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        auu3.a(0x7f0a0114, new arj(this));
        v.show();
    }

    private void f()
    {
        bag.a().a(new ark(this));
    }

    public void onClick(View view)
    {
        t = o;
        int i1 = view.getId();
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        if (i1 == 0x7f070095)
        {
            finish();
        } else
        {
            boolean flag;
            if (bag.a().b())
            {
                flag = true;
            } else
            if (!bag.a(getApplicationContext()))
            {
                d();
                flag = false;
            } else
            {
                e();
                flag = false;
            }
            if (view == i)
            {
                t = q;
            } else
            if (view == j)
            {
                t = r;
            } else
            if (view == k)
            {
                t = s;
            }
            if (flag)
            {
                if (e.a() > 0)
                {
                    if (e.a(0) == null)
                    {
                        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                        Toast.makeText(this, getString(0x7f0a0192), 0).show();
                    } else
                    if (!e.a(p, t))
                    {
                        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
                        Toast.makeText(this, getString(0x7f0a0193), 0).show();
                    }
                }
                finish();
                return;
            }
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f03002b);
        e = azh.a(getApplicationContext());
        e.e();
        if (e.a() == 0)
        {
            finish();
            return;
        }
        o = e.d(0);
        p = e.c(0);
        q = e.b();
        r = e.c();
        s = e.d();
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        i = (ViewGroup)findViewById(0x7f070098);
        i.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        f = (TextView)findViewById(0x7f070099);
        TextView textview = f;
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.toString(q / 1000);
        textview.setText(getString(0x7f0a007c, aobj));
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        l = (ImageView)findViewById(0x7f07009a);
        if (o == q)
        {
            ImageView imageview5 = l;
            com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
            imageview5.setImageResource(0x7f0201f2);
        } else
        {
            ImageView imageview = l;
            com.dianxinos.dxbs.R.drawable _tmp6 = ly.e;
            imageview.setImageResource(0x7f0201f1);
        }
        com.dianxinos.dxbs.R.id _tmp7 = ly.f;
        j = (ViewGroup)findViewById(0x7f07009b);
        if (r == 0)
        {
            j.setVisibility(8);
        } else
        {
            j.setOnClickListener(this);
            com.dianxinos.dxbs.R.id _tmp8 = ly.f;
            g = (TextView)findViewById(0x7f07009c);
            TextView textview1 = g;
            com.dianxinos.dxbs.R.string _tmp9 = ly.i;
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.toString(r / 1000);
            textview1.setText(getString(0x7f0a007d, aobj1));
            com.dianxinos.dxbs.R.id _tmp10 = ly.f;
            m = (ImageView)findViewById(0x7f07009d);
            if (o == r)
            {
                ImageView imageview4 = m;
                com.dianxinos.dxbs.R.drawable _tmp11 = ly.e;
                imageview4.setImageResource(0x7f0201f2);
            } else
            {
                ImageView imageview1 = m;
                com.dianxinos.dxbs.R.drawable _tmp12 = ly.e;
                imageview1.setImageResource(0x7f0201f1);
            }
        }
        com.dianxinos.dxbs.R.id _tmp13 = ly.f;
        k = (ViewGroup)findViewById(0x7f07009e);
        if (s == 0)
        {
            k.setVisibility(8);
        } else
        {
            k.setOnClickListener(this);
            com.dianxinos.dxbs.R.id _tmp14 = ly.f;
            h = (TextView)findViewById(0x7f07009f);
            TextView textview2 = h;
            com.dianxinos.dxbs.R.string _tmp15 = ly.i;
            Object aobj2[] = new Object[1];
            aobj2[0] = Integer.toString(s / 1000);
            textview2.setText(getString(0x7f0a007e, aobj2));
            com.dianxinos.dxbs.R.id _tmp16 = ly.f;
            n = (ImageView)findViewById(0x7f0700a0);
            if (o == s)
            {
                ImageView imageview3 = n;
                com.dianxinos.dxbs.R.drawable _tmp17 = ly.e;
                imageview3.setImageResource(0x7f0201f2);
            } else
            {
                ImageView imageview2 = n;
                com.dianxinos.dxbs.R.drawable _tmp18 = ly.e;
                imageview2.setImageResource(0x7f0201f1);
            }
        }
        d = new arl(this, null);
        com.dianxinos.dxbs.R.id _tmp19 = ly.f;
        findViewById(0x7f070095).setOnClickListener(this);
    }

    protected void onDestroy()
    {
        if (u != null)
        {
            u.dismiss();
        }
        if (v != null)
        {
            v.dismiss();
        }
        super.onDestroy();
    }

    protected void onPause()
    {
        super.onPause();
    }

}
