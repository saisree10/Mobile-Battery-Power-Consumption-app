// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class ayg extends BaseAdapter
{

    private static int i;
    private static int j;
    android.view.View.OnClickListener a;
    private Activity b;
    private LayoutInflater c;
    private ath d;
    private ArrayList e;
    private double f;
    private boolean g;
    private ActivityManager h;
    private Comparator k;

    public ayg(Activity activity)
    {
        f = 100D;
        g = true;
        a = new ayh(this);
        k = new ayi(this);
        b = activity;
        h = (ActivityManager)b.getSystemService("activity");
        b();
        c = LayoutInflater.from(b);
        d = ath.a(b);
        g = azf.a(b);
    }

    static Activity a(ayg ayg1)
    {
        return ayg1.b;
    }

    private ArrayList a(Context context, ArrayList arraylist)
    {
        ArrayList arraylist1;
        int l;
        int i1;
        Collections.sort(arraylist, k);
        arraylist1 = new ArrayList();
        l = 0;
        i1 = 0;
_L6:
        if (l >= arraylist.size()) goto _L2; else goto _L1
_L1:
        ayj ayj1 = (ayj)arraylist.get(l);
        if (azy.b(ayj1.g, context))
        {
            arraylist1.add(ayj1);
            arraylist.remove(l);
            i1++;
        }
        if ((l + 1) - i1 != 5) goto _L3; else goto _L2
_L2:
        int j1 = arraylist.size();
        if (i1 != 0 && j1 != 0) goto _L5; else goto _L4
_L4:
        return arraylist;
_L3:
        l++;
          goto _L6
_L5:
        int k1;
        int i2;
        int l1;
        if (j1 >= 5)
        {
            k1 = 5;
        } else
        {
            k1 = j1;
        }
        for (l1 = 0; l1 < i1; l1++)
        {
            arraylist.add(k1 + l1, arraylist1.get(l1));
        }

        arraylist1.clear();
        i2 = k1;
_L9:
        if (i2 >= k1 + i1) goto _L4; else goto _L7
_L7:
        double d1 = ((ayj)arraylist.get(i2)).d - ((ayj)arraylist.get(i2 - 1)).d;
        if (d1 <= 0.0D) goto _L4; else goto _L8
_L8:
        double d2 = d1 / (double)i2;
        for (int j2 = 0; j2 < i2; j2++)
        {
            double d4 = ((ayj)arraylist.get(j2)).d;
            ((ayj)arraylist.get(j2)).d = d4 + d2;
        }

        double d3 = ((ayj)arraylist.get(i2)).d;
        ((ayj)arraylist.get(i2)).d = d3 - d1;
        i2++;
          goto _L9
    }

    static void a(ayg ayg1, ayk ayk1)
    {
        ayg1.a(ayk1);
    }

    private void a(ayk ayk1)
    {
        if (g)
        {
            int l = ayk1.g;
            ayj ayj1 = (ayj)e.get(l);
            a((new StringBuilder()).append("Close item, position: ").append(l).append(", uid: ").append(ayj1.a).append(", proc: ").append(ayj1.f).toString());
            bal.a(b, "monitor", "astop", Integer.valueOf(1));
            if (ayj1.g != null)
            {
                if (ayj1.g.equals("com.dianxinos.dxbs"))
                {
                    Activity activity = b;
                    com.dianxinos.dxbs.R.string _tmp = ly.i;
                    String s = activity.getString(0x7f0a0142);
                    Toast.makeText(b, s, 0).show();
                    return;
                } else
                {
                    android.content.Intent intent = azf.a(ayj1.g);
                    b.startActivityForResult(intent, 444);
                    return;
                }
            }
        }
    }

    private static void a(String s)
    {
    }

    private void a(ArrayList arraylist)
    {
        int ai[] = new int[arraylist.size()];
        for (int l = 0; l < arraylist.size(); l++)
        {
            ai[l] = ((ayj)arraylist.get(l)).b;
        }

        int ai1[] = azu.a(h, ai);
        int i1 = 0;
        int j1 = 0;
        int l1;
        do
        {
            int k1 = ai1.length;
            l1 = 0;
            if (i1 >= k1)
            {
                break;
            }
            j1 += ai1[i1];
            i1++;
        } while (true);
        for (; l1 < ai1.length; l1++)
        {
            ((ayj)arraylist.get(l1)).e = 100F * ((float)ai1[l1] / (float)j1);
        }

    }

    private void b()
    {
        Resources resources = b.getResources();
        com.dianxinos.dxbs.R.color _tmp = ly.c;
        i = resources.getColor(0x7f090020);
        com.dianxinos.dxbs.R.color _tmp1 = ly.c;
        j = resources.getColor(0x7f090036);
    }

    public double a()
    {
        double d1;
        double d2;
        try
        {
            FileReader filereader = new FileReader("/proc/stat");
            BufferedReader bufferedreader = new BufferedReader(filereader);
            String as[] = bufferedreader.readLine().trim().split("\\s+");
            bufferedreader.close();
            filereader.close();
            d1 = Double.parseDouble(as[1]);
            d2 = Double.parseDouble(as[3]);
        }
        catch (Exception exception)
        {
            return 0.0D;
        }
        return d1 + d2;
    }

    public ArrayList a(ArrayList arraylist, boolean flag)
    {
        Iterator iterator;
        double d2;
        a(arraylist);
        double d1 = a();
        iterator = arraylist.iterator();
        d2 = d1;
_L2:
        ayj ayj2;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        ayj2 = (ayj)iterator.next();
        a((new StringBuilder()).append("fill power data for ").append(ayj2.f).toString());
        double d4;
        String as[] = (new BufferedReader(new FileReader((new StringBuilder()).append("/proc/").append(ayj2.b).append("/stat").toString()))).readLine().trim().split("\\s+");
        ayj2.c = 100L * (Long.parseLong(as[13]) + Long.parseLong(as[14]));
        d4 = ayj2.c;
        double d3 = d2 + d4;
_L3:
        d2 = d3;
        if (true) goto _L2; else goto _L1
        Exception exception;
        exception;
        a("Can not read power stat info!");
        exception.printStackTrace();
        d3 = d2;
          goto _L3
_L1:
        ArrayList arraylist1 = new ArrayList();
        if (d2 != 0.0D)
        {
            Iterator iterator1 = arraylist.iterator();
            do
            {
                if (!iterator1.hasNext())
                {
                    break;
                }
                ayj ayj1 = (ayj)iterator1.next();
                if (flag)
                {
                    ayj1.d = 0.80000001192092896D * ((100D * ayj1.c) / d2) + 0.20000000298023224D * ayj1.e;
                    a((new StringBuilder()).append(ayj1.f).append(" power percent: ").append(ayj1.d).toString());
                }
            } while (true);
            arraylist1 = a(((Context) (b)), arraylist);
        }
        return arraylist1;
    }

    public void a(List list)
    {
        ArrayList arraylist = new ArrayList();
        ayj ayj1;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(ayj1))
        {
            android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)iterator.next();
            ayj1 = new ayj();
            ayj1.f = runningappprocessinfo.processName;
            ayj1.b = runningappprocessinfo.pid;
            ayj1.a = runningappprocessinfo.uid;
            ati ati1 = d.a(ayj1.a, ayj1.f);
            ayj1.h = ati1.a;
            ayj1.i = ati1.c;
            ayj1.g = ati1.b;
        }

        e = a(arraylist, true);
        if (e != null && e.size() > 0)
        {
            f = ((ayj)e.get(0)).d;
            return;
        } else
        {
            f = 100D;
            return;
        }
    }

    public int getCount()
    {
        return e.size();
    }

    public Object getItem(int l)
    {
        return e.get(l);
    }

    public long getItemId(int l)
    {
        return 0L;
    }

    public View getView(int l, View view, ViewGroup viewgroup)
    {
        ayk ayk1;
        ayj ayj1;
        double d1;
        Resources resources;
        android.graphics.drawable.Drawable drawable;
        Resources resources1;
        android.graphics.drawable.Drawable drawable1;
        double d2;
        awc awc1;
        if (view == null)
        {
            LayoutInflater layoutinflater = c;
            com.dianxinos.dxbs.R.layout _tmp = ly.g;
            view = layoutinflater.inflate(0x7f03005d, null);
            ayk1 = new ayk();
            com.dianxinos.dxbs.R.id _tmp1 = ly.f;
            ayk1.a = (ImageView)view.findViewById(0x7f070014);
            com.dianxinos.dxbs.R.id _tmp2 = ly.f;
            ayk1.b = (TextView)view.findViewById(0x7f07001f);
            com.dianxinos.dxbs.R.id _tmp3 = ly.f;
            ayk1.c = (TextView)view.findViewById(0x7f0701c5);
            com.dianxinos.dxbs.R.id _tmp4 = ly.f;
            ayk1.d = (ImageView)view.findViewById(0x7f0701b6);
            com.dianxinos.dxbs.R.id _tmp5 = ly.f;
            ayk1.e = (TextView)view.findViewById(0x7f0701b5);
            com.dianxinos.dxbs.R.id _tmp6 = ly.f;
            ayk1.f = (TextView)view.findViewById(0x7f07018c);
            if (!g)
            {
                ayk1.f.setVisibility(8);
            }
            view.setTag(ayk1);
        } else
        {
            ayk1 = (ayk)view.getTag();
        }
        ayj1 = (ayj)e.get(l);
        ayk1.g = l;
        ayk1.f.setTag(ayk1);
        ayk1.a.setImageDrawable(ayj1.i);
        ayk1.b.setText(ayj1.h);
        if (ayj1.g != null)
        {
            TextView textview2 = ayk1.c;
            com.dianxinos.dxbs.R.string _tmp7 = ly.i;
            textview2.setText(0x7f0a0140);
            ayk1.c.setTextColor(i);
            ayk1.f.setTextColor(i);
            ayk1.f.setOnClickListener(a);
        } else
        {
            TextView textview = ayk1.c;
            com.dianxinos.dxbs.R.string _tmp8 = ly.i;
            textview.setText(0x7f0a0141);
            ayk1.c.setTextColor(j);
            ayk1.f.setTextColor(j);
            ayk1.f.setClickable(false);
            ayk1.f.setFocusable(false);
        }
        d1 = ayj1.d;
        if (d1 > 99.900001525878906D)
        {
            ayk1.e.setText("100%");
        } else
        {
            TextView textview1 = ayk1.e;
            Object aobj[] = new Object[1];
            aobj[0] = Double.valueOf(d1);
            textview1.setText(azq.a("%.1f%%", aobj));
        }
        resources = b.getResources();
        com.dianxinos.dxbs.R.drawable _tmp9 = ly.e;
        drawable = resources.getDrawable(0x7f0201e4);
        resources1 = b.getResources();
        com.dianxinos.dxbs.R.drawable _tmp10 = ly.e;
        drawable1 = resources1.getDrawable(0x7f0201e5);
        d2 = d1 / f;
        awc1 = new awc(drawable, drawable1, d2);
        ayk1.d.setImageDrawable(awc1);
        ayk1.h = d2;
        view.setOnClickListener(a);
        return view;
    }
}
