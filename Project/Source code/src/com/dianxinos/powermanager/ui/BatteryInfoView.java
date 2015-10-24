// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.ui;

import acx;
import acz;
import add;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.Html;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import atj;
import aud;
import azf;
import azp;
import azq;
import azw;
import bao;
import java.util.ArrayList;
import java.util.Iterator;
import ly;

public class BatteryInfoView extends LinearLayout
{

    private final int a = -1;
    private LayoutInflater b;
    private acz c;
    private SparseArray d;
    private SparseArray e;
    private ArrayList f;
    private ArrayList g;
    private acx h;
    private atj i;
    private double j;
    private TextView k;
    private TextView l;
    private TextView m;
    private TextView n;
    private TextView o;
    private TextView p;
    private Context q;
    private View r;
    private View s;
    private View t;
    private View u;
    private View v;
    private aud w;

    public BatteryInfoView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d = new SparseArray();
        e = new SparseArray();
        f = new ArrayList();
        q = context;
        com.dianxinos.dxbs.R.styleable _tmp = ly.k;
        context.obtainStyledAttributes(attributeset, com.dianxinos.dxbs.R.styleable.MainTitle).recycle();
        q = context.getApplicationContext();
        i = new atj(q);
        j = i.getBatteryCapacity();
        w = new aud(q);
        h = acx.a(q);
        b();
        a();
    }

    private String a(int i1)
    {
        if (i1 == -1)
        {
            Context context = q;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            return context.getString(0x7f0a013a);
        } else
        {
            return azq.b(q, i1);
        }
    }

    private void b()
    {
        android.graphics.Typeface typeface = azp.a(getContext()).d();
        b = (LayoutInflater)q.getSystemService("layout_inflater");
        LayoutInflater layoutinflater = b;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        layoutinflater.inflate(0x7f03000c, this);
        c = acz.a(q);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        r = findViewById(0x7f070032);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        k = (TextView)findViewById(0x7f070033);
        k.setTypeface(typeface);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        l = (TextView)findViewById(0x7f070034);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        s = findViewById(0x7f070036);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        m = (TextView)findViewById(0x7f070037);
        m.setTypeface(typeface);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        n = (TextView)findViewById(0x7f070038);
        com.dianxinos.dxbs.R.id _tmp7 = ly.f;
        t = findViewById(0x7f07003a);
        com.dianxinos.dxbs.R.id _tmp8 = ly.f;
        o = (TextView)findViewById(0x7f07003b);
        o.setTypeface(typeface);
        com.dianxinos.dxbs.R.id _tmp9 = ly.f;
        p = (TextView)findViewById(0x7f07003c);
        com.dianxinos.dxbs.R.id _tmp10 = ly.f;
        v = findViewById(0x7f070035);
        com.dianxinos.dxbs.R.id _tmp11 = ly.f;
        u = findViewById(0x7f070039);
    }

    private void c()
    {
        int i1 = 1;
        if (e.size() >= i1)
        {
            r.setVisibility(0);
            k.setText((CharSequence)((Pair)e.get(0)).first);
            l.setText(Html.fromHtml((String)((Pair)e.get(0)).second));
        } else
        {
            r.setVisibility(8);
            i1 = 0;
        }
        if (e.size() >= 2)
        {
            s.setVisibility(0);
            v.setVisibility(0);
            m.setText((CharSequence)((Pair)e.get(i1)).first);
            n.setText(Html.fromHtml((String)((Pair)e.get(i1)).second));
            i1++;
        } else
        {
            v.setVisibility(8);
            s.setVisibility(8);
        }
        if (e.size() >= 3)
        {
            t.setVisibility(0);
            u.setVisibility(0);
            o.setText((CharSequence)((Pair)e.get(i1)).first);
            p.setText(Html.fromHtml((String)((Pair)e.get(i1)).second));
            return;
        } else
        {
            u.setVisibility(8);
            t.setVisibility(8);
            return;
        }
    }

    private void d()
    {
        g = h.e();
        add add1 = c.c();
        d.clear();
        f.clear();
        boolean flag;
        int i1;
        boolean flag1;
        byte byte0;
        boolean flag2;
        if (g.indexOf(Integer.valueOf(0)) == -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (c.c(add1.g))
        {
            String as[] = bao.a(q, add1.g);
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            int i3 = 0x7f0a0367;
            if (add1.g >= 450)
            {
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                i3 = 0x7f0a0368;
            }
            SparseArray sparsearray10 = d;
            Context context16 = q;
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            String s6 = context16.getString(0x7f0a022f);
            Context context17 = q;
            Object aobj3[] = new Object[2];
            aobj3[0] = as[0];
            aobj3[1] = as[1];
            sparsearray10.append(0, new Pair(s6, context17.getString(i3, aobj3)));
            if (flag)
            {
                f.add(Integer.valueOf(0));
            }
            i1 = 1;
        } else
        {
            if (!flag)
            {
                g.remove(g.indexOf(Integer.valueOf(0)));
            }
            SparseArray sparsearray = d;
            i1 = 1;
            sparsearray.append(0, null);
        }
        if (g.indexOf(Integer.valueOf(1)) == -1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        acz _tmp3 = c;
        if (acz.d(add1.f))
        {
            com.dianxinos.dxbs.R.string _tmp4 = ly.i;
            int l2 = 0x7f0a036a;
            if (add1.f > 4300 || add1.f < 3000)
            {
                com.dianxinos.dxbs.R.string _tmp5 = ly.i;
                l2 = 0x7f0a036b;
            }
            SparseArray sparsearray9 = d;
            Context context13 = q;
            com.dianxinos.dxbs.R.string _tmp6 = ly.i;
            String s5 = context13.getString(0x7f0a022d);
            Context context14 = q;
            Object aobj2[] = new Object[2];
            aobj2[0] = Double.toString((double)add1.f / 1000D);
            Context context15 = q;
            com.dianxinos.dxbs.R.string _tmp7 = ly.i;
            aobj2[1] = context15.getString(0x7f0a0363);
            sparsearray9.append(i1, new Pair(s5, context14.getString(l2, aobj2)));
            if (flag1)
            {
                f.add(Integer.valueOf(1));
            }
            byte0 = 2;
        } else
        {
            if (!flag1)
            {
                g.remove(g.indexOf(Integer.valueOf(1)));
            }
            d.append(i1, null);
            byte0 = 2;
        }
        if (g.indexOf(Integer.valueOf(2)) == -1)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (j != 0.0D)
        {
            SparseArray sparsearray8 = d;
            Context context10 = q;
            com.dianxinos.dxbs.R.string _tmp8 = ly.i;
            String s4 = context10.getString(0x7f0a022c);
            Context context11 = q;
            com.dianxinos.dxbs.R.string _tmp9 = ly.i;
            Object aobj1[] = new Object[2];
            aobj1[0] = Integer.toString((int)(((double)add1.j * j) / 100D));
            Context context12 = q;
            com.dianxinos.dxbs.R.string _tmp10 = ly.i;
            aobj1[1] = context12.getString(0x7f0a0360);
            sparsearray8.append(byte0, new Pair(s4, context11.getString(0x7f0a0369, aobj1)));
            byte byte1;
            boolean flag3;
            byte byte2;
            boolean flag4;
            String s1;
            byte byte3;
            boolean flag5;
            byte byte4;
            int j1;
            SparseArray sparsearray1;
            Context context;
            int k1;
            SparseArray sparsearray2;
            Context context1;
            int l1;
            SparseArray sparsearray3;
            Context context2;
            int i2;
            SparseArray sparsearray4;
            Context context3;
            int j2;
            int k2;
            SparseArray sparsearray5;
            Context context4;
            SparseArray sparsearray6;
            Context context5;
            String s2;
            Context context6;
            SparseArray sparsearray7;
            Context context7;
            String s3;
            Context context8;
            Object aobj[];
            Context context9;
            if (flag2)
            {
                f.add(Integer.valueOf(2));
                byte1 = 3;
            } else
            {
                byte1 = 3;
            }
        } else
        {
            if (!flag2)
            {
                g.remove(g.indexOf(Integer.valueOf(2)));
            }
            d.append(byte0, null);
            byte1 = 3;
        }
        if (g.indexOf(Integer.valueOf(3)) == -1)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        if (j != 0.0D)
        {
            sparsearray7 = d;
            context7 = q;
            com.dianxinos.dxbs.R.string _tmp11 = ly.i;
            s3 = context7.getString(0x7f0a0247);
            context8 = q;
            com.dianxinos.dxbs.R.string _tmp12 = ly.i;
            aobj = new Object[2];
            aobj[0] = Integer.toString((int)j);
            context9 = q;
            com.dianxinos.dxbs.R.string _tmp13 = ly.i;
            aobj[1] = context9.getString(0x7f0a0360);
            sparsearray7.append(byte1, new Pair(s3, context8.getString(0x7f0a0369, aobj)));
            if (flag3)
            {
                f.add(Integer.valueOf(3));
                byte2 = 4;
            } else
            {
                byte2 = 4;
            }
        } else
        {
            if (!flag3)
            {
                g.remove(g.indexOf(Integer.valueOf(3)));
            }
            d.append(byte1, null);
            byte2 = 4;
        }
        if (g.indexOf(Integer.valueOf(4)) == -1)
        {
            flag4 = true;
        } else
        {
            flag4 = false;
        }
        s1 = add1.h;
        if (s1 != null && s1.length() != 0)
        {
            sparsearray6 = d;
            context5 = q;
            com.dianxinos.dxbs.R.string _tmp14 = ly.i;
            s2 = context5.getString(0x7f0a022e);
            context6 = q;
            com.dianxinos.dxbs.R.string _tmp15 = ly.i;
            sparsearray6.append(byte2, new Pair(s2, context6.getString(0x7f0a0366, new Object[] {
                s1
            })));
            if (flag4)
            {
                f.add(Integer.valueOf(4));
                byte3 = 5;
            } else
            {
                byte3 = 5;
            }
        } else
        {
            if (!flag4)
            {
                g.remove(g.indexOf(Integer.valueOf(4)));
            }
            d.append(byte2, null);
            byte3 = 5;
        }
        w.a();
        if (g.indexOf(Integer.valueOf(5)) == -1)
        {
            flag5 = true;
        } else
        {
            flag5 = false;
        }
        if (azw.i && azf.b(q))
        {
            k2 = w.a(add1.j, 1);
            sparsearray5 = d;
            context4 = q;
            com.dianxinos.dxbs.R.string _tmp16 = ly.i;
            sparsearray5.append(byte3, new Pair(context4.getString(0x7f0a0137), a(k2)));
            if (flag5)
            {
                f.add(Integer.valueOf(5));
                byte4 = 6;
            } else
            {
                byte4 = 6;
            }
        } else
        {
            if (!flag5)
            {
                g.remove(g.indexOf(Integer.valueOf(5)));
            }
            d.append(byte3, null);
            byte4 = 6;
        }
        j1 = w.a(add1.j, 2);
        sparsearray1 = d;
        context = q;
        com.dianxinos.dxbs.R.string _tmp17 = ly.i;
        sparsearray1.append(byte4, new Pair(context.getString(0x7f0a0136), a(j1)));
        k1 = w.a(add1.j, 4);
        sparsearray2 = d;
        context1 = q;
        com.dianxinos.dxbs.R.string _tmp18 = ly.i;
        sparsearray2.append(7, new Pair(context1.getString(0x7f0a0138), a(k1)));
        l1 = w.a(add1.j, 3);
        sparsearray3 = d;
        context2 = q;
        com.dianxinos.dxbs.R.string _tmp19 = ly.i;
        sparsearray3.append(8, new Pair(context2.getString(0x7f0a0139), a(l1)));
        i2 = w.a(add1.j, 0);
        sparsearray4 = d;
        context3 = q;
        com.dianxinos.dxbs.R.string _tmp20 = ly.i;
        sparsearray4.append(9, new Pair(context3.getString(0x7f0a0135), a(i2)));
        if (f.size() > 0)
        {
            g.addAll(f);
        }
        e();
        e.clear();
        for (j2 = 0; j2 < 3; j2++)
        {
            e.append(j2, d.get(((Integer)g.get(j2)).intValue()));
        }

    }

    private void e()
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (Iterator iterator = g.iterator(); iterator.hasNext(); stringbuilder.append(","))
        {
            stringbuilder.append(((Integer)iterator.next()).intValue());
        }

        int i1 = stringbuilder.length();
        if (i1 > 0)
        {
            stringbuilder.deleteCharAt(i1 - 1);
        }
        h.b(stringbuilder.toString());
    }

    public void a()
    {
        d();
        c();
    }
}
