// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.usage;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import atd;
import atg;
import ath;
import ati;
import atl;
import atm;
import ato;
import atq;
import atr;
import ats;
import atu;
import atx;
import awd;
import awn;
import awp;
import axb;
import aya;
import ayd;
import aye;
import ayf;
import ays;
import azf;
import azq;
import azt;
import bal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import ly;
import n;
import rc;

// Referenced classes of package com.dianxinos.powermanager.usage:
//            AppPowerUsageDetails

public class AppsPowerUsageHistory extends rc
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener, atq, awp
{

    private static ImageView t;
    private boolean A;
    private int e;
    private int f;
    private ays g;
    private ato h;
    private ats i;
    private long j;
    private aya k;
    private ListView l;
    private Button m;
    private View n;
    private LinearLayout o;
    private ayf p;
    private awn q;
    private View r;
    private View s;
    private boolean u;
    private View v;
    private double w;
    private double x;
    private String y;
    private double z;

    public AppsPowerUsageHistory()
    {
        e = 1;
        p = new ayf(this);
        u = true;
    }

    private double a(ats ats1)
    {
        int i1 = ats1.g.size();
        int j1 = 0;
label0:
        do
        {
            if (j1 < i1)
            {
                atu atu1 = (atu)ats1.g.get(j1);
                if (atu1.a == 0)
                {
                    w = atu1.e;
                }
                int k1 = atu1.g.size();
                int l1 = 0;
                do
                {
                    atx atx1;
label1:
                    {
                        if (l1 < k1)
                        {
                            atx1 = (atx)atu1.g.get(l1);
                            if (atx1.e >= 0.10000000149011612D)
                            {
                                break label1;
                            }
                        }
                        j1++;
                        continue label0;
                    }
                    if (atu1.a == 0 && y.equals(getResources().getString(atg.a(atx1.a))))
                    {
                        x = atx1.e;
                        return x;
                    }
                    l1++;
                } while (true);
            }
            return -1D;
        } while (true);
    }

    public static void a(Context context, ImageView imageview, boolean flag, boolean flag1, boolean flag2)
    {
        int i1;
        int j1;
        int l1;
        int i2;
        int j2;
        awd awd1 = new awd(context);
        if (flag)
        {
            ArrayList arraylist;
            ats ats1;
            ArrayList arraylist1;
            if (flag1)
            {
                ats1 = atm.a(context).c();
            } else
            {
                ato ato1 = ato.a(context);
                ath ath1;
                String as[];
                int ai[];
                int k1;
                int k2;
                String as1[];
                int ai1[];
                int i3;
                int j3;
                Bitmap bitmap;
                int k3;
                atl atl1;
                double d;
                int l3;
                atu atu1;
                try
                {
                    ats1 = ato1.a().c;
                }
                catch (NullPointerException nullpointerexception)
                {
                    return;
                }
            }
            if (flag2)
            {
                arraylist1 = ats1.b;
            } else
            {
                arraylist1 = ats1.g;
            }
            arraylist = arraylist1;
        } else
        {
            arraylist = ato.a(context).a().d.g;
        }
        if (arraylist == null || arraylist.size() == 0)
        {
            ly.i;
            Toast.makeText(context, 0x7f0a008c, 0).show();
            return;
        }
        ath1 = ath.a(context);
        i1 = 0;
        j1 = Math.min(5, arraylist.size());
        as = new String[j1 + 1];
        ai = new int[j1 + 1];
        k1 = 0;
        if (k1 >= j1)
        {
            break MISSING_BLOCK_LABEL_600;
        }
        atl1 = (atl)arraylist.get(k1);
        if (flag2)
        {
            d = ((atu)atl1).w;
        } else
        {
            d = atl1.e;
        }
        l3 = (int)Math.round(d);
        if (l3 < 1)
        {
            l1 = k1;
            i2 = i1;
        } else
        {
label0:
            {
                if (flag)
                {
                    atu1 = (atu)atl1;
                    as[k1] = ath1.a(atu1.a, atu1.b).a;
                } else
                {
                    as[k1] = context.getString(atg.a(((atd)atl1).a));
                }
                ai[k1] = l3;
                i1 += l3;
                if (i1 < 100)
                {
                    break label0;
                }
                ai[k1] = ai[k1] - (i1 - 100);
                i2 = 100;
                l1 = k1 + 1;
            }
        }
_L4:
        if (!flag || l1 <= 0)
        {
            break MISSING_BLOCK_LABEL_593;
        }
        k3 = l1 - 1;
        if (((atu)arraylist.get(k3)).a != -1)
        {
            break MISSING_BLOCK_LABEL_593;
        }
        ai[k3] = 100 - (i2 - ai[k3]);
        j2 = 100;
_L2:
        k2 = 100 - j2;
        int l2;
        if (k2 >= 1)
        {
            if (flag)
            {
                ly.i;
                as[l1] = context.getString(0x7f0a008d);
            } else
            {
                ly.i;
                as[l1] = context.getString(0x7f0a008e);
            }
            ai[l1] = k2;
            l2 = l1 + 1;
        } else
        {
            l2 = l1;
        }
        as1 = new String[l2];
        ai1 = new int[l2];
        System.arraycopy(as, 0, as1, 0, l2);
        System.arraycopy(ai, 0, ai1, 0, l2);
        awd1.a(as1, ai1);
        i3 = (int)(0.80000000000000004D * (double)axb.a(context));
        j3 = (int)(1.0D * (double)axb.a(context));
        imageview.getLayoutParams().width = i3;
        imageview.getLayoutParams().height = j3;
        bitmap = Bitmap.createBitmap(i3, j3, android.graphics.Bitmap.Config.ARGB_8888);
        bitmap.eraseColor(0);
        awd1.a(new Canvas(bitmap), 0, 0, i3, j3);
        imageview.setImageBitmap(bitmap);
        return;
        k1++;
        break MISSING_BLOCK_LABEL_158;
        j2 = i2;
        if (true) goto _L2; else goto _L1
_L1:
        l1 = j1;
        i2 = i1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static void a(AppsPowerUsageHistory appspowerusagehistory)
    {
        appspowerusagehistory.g();
    }

    private void a(ArrayList arraylist)
    {
        int i1 = arraylist.size();
        int j1 = 0;
        while (j1 < i1) 
        {
            atl atl1 = (atl)arraylist.get(j1);
            atu atu1 = (atu)atl1;
            double d = atl1.e;
            if (atu1.a == 0)
            {
                if (x == -1D)
                {
                    atl1.f = d;
                } else
                if (i1 == 1)
                {
                    atl1.f = d;
                    A = true;
                } else
                {
                    atl1.f = d - x;
                }
            } else
            if (x == -1D)
            {
                z = 1.0D;
                atl1.f = d;
            } else
            {
                double d1 = d + (d / (100D - w)) * x;
                z = d1 / d;
                atl1.f = d1;
            }
            j1++;
        }
    }

    private void a(boolean flag)
    {
        if (flag)
        {
            r.setVisibility(0);
            s.setVisibility(8);
            return;
        } else
        {
            r.setVisibility(8);
            a(((Context) (getActivity())), t, true, false, false);
            s.setVisibility(0);
            return;
        }
    }

    private HashSet f()
    {
        List list = ((ActivityManager)getActivity().getSystemService("activity")).getRunningAppProcesses();
        HashSet hashset = new HashSet();
        if (list == null)
        {
            return hashset;
        }
        int i1 = list.size();
        for (int j1 = 0; j1 < i1; j1++)
        {
            hashset.add(((android.app.ActivityManager.RunningAppProcessInfo)list.get(j1)).processName);
        }

        return hashset;
    }

    private void g()
    {
        atr atr1 = h.a();
        if (atr1 == null)
        {
            if (f <= 1)
            {
                h.b();
                f = 1 + f;
                return;
            } else
            {
                g.a(getActivity(), d);
                return;
            }
        }
        i = atr1.c;
        if (i.g.isEmpty())
        {
            v.setVisibility(8);
        }
        j = atr1.b;
        h();
    }

    private void h()
    {
        g.a(getActivity(), d);
        x = a(i);
        a(i.g);
        TextView textview;
        int i1;
        String s1;
        String s2;
        if (e == 1)
        {
            Collections.sort(i.g, new aye(this));
            k.a(i.g);
            k.a(e);
            int _tmp = (int)(i.d / 3600D);
        } else
        if (e == 2)
        {
            k.a(i.b);
            k.a(e);
            int _tmp1 = (int)(i.h / 3600D);
        } else
        {
            azt.d("AppsPowerUsageHistory", (new StringBuilder()).append("Unknown sort type: ").append(e).toString());
        }
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        textview = (TextView)a(0x7f0701c6);
        i1 = (int)(j / 1000L);
        s1 = azq.a(getActivity(), i1);
        if (azf.a() == 0)
        {
            com.dianxinos.dxbs.R.string _tmp3 = ly.i;
            s2 = getString(0x7f0a021d, new Object[] {
                s1
            });
        } else
        {
            com.dianxinos.dxbs.R.string _tmp4 = ly.i;
            s2 = getString(0x7f0a0082, new Object[] {
                s1
            });
        }
        textview.setText(s2);
    }

    public boolean a()
    {
        Activity activity = getActivity().getParent();
        if (activity != null)
        {
            activity.onBackPressed();
        } else
        {
            super.a();
        }
        return true;
    }

    public void a_(int i1)
    {
        if (e == i1) goto _L2; else goto _L1
_L1:
        e = i1;
        if (i1 != 1) goto _L4; else goto _L3
_L3:
        Button button1 = m;
        ly.i;
        button1.setText(0x7f0a008f);
_L6:
        g();
_L2:
        return;
_L4:
        if (i1 == 2)
        {
            Button button = m;
            ly.i;
            button.setText(0x7f0a0090);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void b()
    {
        p.sendEmptyMessage(1);
    }

    public void onClick(View view)
    {
        if (view == m)
        {
            Object obj = getActivity().getParent();
            if (obj == null)
            {
                obj = getActivity();
            }
            q = new awn(((Context) (obj)));
            awn awn1 = q;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            awn1.setTitle(0x7f0a0080);
            awn awn2 = q;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            awn2.a(1, 0x7f0a0091);
            awn awn3 = q;
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            awn3.a(2, 0x7f0a0092);
            q.a(this);
            q.a(e);
            q.show();
        } else
        if (view == n && i != null)
        {
            if (u)
            {
                u = false;
                a(u);
                return;
            } else
            {
                u = true;
                a(u);
                return;
            }
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        d = layoutinflater.inflate(0x7f030068, viewgroup, false);
        Resources resources = getResources();
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        y = resources.getString(0x7f0a006c);
        g = new ays();
        k = new aya(getActivity());
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        l = (ListView)a(0x7f07013c);
        n n1 = getActivity();
        com.dianxinos.dxbs.R.layout _tmp3 = ly.g;
        v = View.inflate(n1, 0x7f030069, null);
        l.addFooterView(v);
        l.setAdapter(k);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        o = (LinearLayout)a(0x7f070011);
        l.setEmptyView(o);
        l.setOnItemClickListener(this);
        h = ato.a(getActivity());
        h.a(this);
        g();
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        m = (Button)a(0x7f0701c7);
        m.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        n = a(0x7f0701c8);
        n.setOnClickListener(this);
        h.b();
        com.dianxinos.dxbs.R.id _tmp7 = ly.f;
        r = a(0x7f0701cb);
        com.dianxinos.dxbs.R.id _tmp8 = ly.f;
        s = a(0x7f0701c9);
        com.dianxinos.dxbs.R.id _tmp9 = ly.f;
        t = (ImageView)a(0x7f0701ca);
        return d;
    }

    public void onDestroy()
    {
        super.onDestroy();
        h.b(this);
        g.b();
        m.setOnClickListener(null);
        n.setOnClickListener(null);
        l.setOnItemClickListener(null);
    }

    public void onItemClick(AdapterView adapterview, View view, int i1, long l1)
    {
        ayd ayd1 = (ayd)view.getTag();
        if (ayd1 == null)
        {
            return;
        }
        Intent intent = new Intent(getActivity(), com/dianxinos/powermanager/usage/AppPowerUsageDetails);
        intent.putExtra("position", i1);
        intent.putExtra("bar_percent", ayd1.h);
        boolean flag;
        if (e == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        intent.putExtra("bg", flag);
        intent.putExtra("growth_rate", z);
        intent.putExtra("only_has_system", A);
        intent.putExtra("commu_module_percent", x);
        startActivity(intent);
        bal.a(getActivity(), "monitor", "adetail", Integer.valueOf(1));
    }

    public void onPause()
    {
        super.onPause();
        if (q != null)
        {
            q.dismiss();
        }
    }

    public void onResume()
    {
        super.onResume();
        f = 0;
        k.a(f());
        if (g.a())
        {
            h.b();
        }
        h.c();
    }

    public void startActivity(Intent intent)
    {
        getActivity().getParent().startActivity(intent);
    }
}
