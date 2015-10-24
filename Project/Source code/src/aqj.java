// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.dianxinos.powermanager.skinshop.OperationConfigActivity;
import java.util.ArrayList;
import java.util.Iterator;

public class aqj extends aqp
    implements aet
{

    private OperationConfigActivity a;
    private int b;
    private ImageView c;
    private TextView d;
    private TextView e;
    private ListView f;
    private View g;
    private adp h;
    private aql i;
    private ArrayList j;
    private ArrayList k;
    private ArrayList l;
    private boolean m;
    private Message n;

    public aqj(OperationConfigActivity operationconfigactivity)
    {
        b = 0;
        j = new ArrayList();
        k = new ArrayList();
        l = new ArrayList();
        m = true;
        a = operationconfigactivity;
        a.a(this);
        h = adp.a(a);
        i = new aql(this, a);
    }

    static OperationConfigActivity a(aqj aqj1)
    {
        return aqj1.a;
    }

    public static void a(String s)
    {
    }

    static boolean a(aqj aqj1, String s, int i1)
    {
        return aqj1.b(s, i1);
    }

    static adp b(aqj aqj1)
    {
        return aqj1.h;
    }

    private boolean b(String s, int i1)
    {
        adp adp1 = adp.a(a);
        String s1 = adp1.f();
        for (int j1 = adp1.g(); s1 == null || s == null || !s1.equals(s) || !s1.equals("dt") && i1 != j1;)
        {
            return false;
        }

        return true;
    }

    private void c(ViewGroup viewgroup)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        c = (ImageView)viewgroup.findViewById(0x7f0701f0);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        d = (TextView)viewgroup.findViewById(0x7f070018);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        e = (TextView)viewgroup.findViewById(0x7f070019);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        f = (ListView)viewgroup.findViewById(0x7f0701f2);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        g = viewgroup.findViewById(0x7f0701f4);
    }

    private void f()
    {
        boolean flag = true;
        g.setVisibility(0);
        g.setOnClickListener(new aqk(this));
        adp adp1 = adp.a(a);
        ImageView imageview = c;
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        imageview.setBackgroundResource(0x7f02040a);
        TextView textview = d;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        textview.setText(0x7f0a037f);
        TextView textview1 = e;
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        textview1.setText(0x7f0a0380);
        j.clear();
        String s = adp1.f();
        int i1 = adp1.g();
        android.graphics.Bitmap bitmap = adp1.a("dt", 0, flag);
        OperationConfigActivity operationconfigactivity = a;
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        String s1 = operationconfigactivity.getString(0x7f0a0381);
        boolean flag1 = "dt".equalsIgnoreCase(s);
        j.add(new aqn(bitmap, s1, flag1));
        android.graphics.Bitmap bitmap1 = adp1.a("pt_", 0, flag);
        OperationConfigActivity operationconfigactivity1 = a;
        com.dianxinos.dxbs.R.string _tmp4 = ly.i;
        String s2 = operationconfigactivity1.getString(0x7f0a0382);
        boolean flag2;
        android.graphics.Bitmap bitmap2;
        OperationConfigActivity operationconfigactivity2;
        String s3;
        boolean flag3;
        android.graphics.Bitmap bitmap3;
        OperationConfigActivity operationconfigactivity3;
        String s4;
        if ("pt_".equalsIgnoreCase(s) && i1 == 0)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        j.add(new aqn(bitmap1, s2, flag2));
        bitmap2 = adp1.a("pt_", flag, flag);
        operationconfigactivity2 = a;
        com.dianxinos.dxbs.R.string _tmp5 = ly.i;
        s3 = operationconfigactivity2.getString(0x7f0a0383);
        if ("pt_".equalsIgnoreCase(s) && i1 == flag)
        {
            flag3 = flag;
        } else
        {
            flag3 = false;
        }
        j.add(new aqn(bitmap2, s3, flag3));
        bitmap3 = adp1.a("pt_", 2, flag);
        operationconfigactivity3 = a;
        com.dianxinos.dxbs.R.string _tmp6 = ly.i;
        s4 = operationconfigactivity3.getString(0x7f0a0384);
        if (!"pt_".equalsIgnoreCase(s) || i1 != 2)
        {
            flag = false;
        }
        j.add(new aqn(bitmap3, s4, flag));
        i.a(j);
        f.setAdapter(i);
    }

    public float a(int i1)
    {
        return 0.88F;
    }

    public Object a(ViewGroup viewgroup, int i1)
    {
        boolean flag = true;
        a("instantiate item!");
        int j1;
        ViewGroup viewgroup1;
        if (m)
        {
            j1 = ((flag) ? 1 : 0);
        } else
        {
            j1 = 0;
        }
        if (m && i1 == 0)
        {
            LayoutInflater layoutinflater1 = a.getLayoutInflater();
            com.dianxinos.dxbs.R.layout _tmp = ly.g;
            viewgroup1 = (ViewGroup)layoutinflater1.inflate(0x7f03007d, null);
            if (azf.k())
            {
                com.dianxinos.dxbs.R.id _tmp1 = ly.f;
                View view = viewgroup1.findViewById(0x7f070200);
                com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
                view.setBackgroundResource(0x7f02041c);
                com.dianxinos.dxbs.R.id _tmp3 = ly.f;
                View view1 = viewgroup1.findViewById(0x7f070202);
                com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
                view1.setBackgroundResource(0x7f02041d);
                com.dianxinos.dxbs.R.id _tmp5 = ly.f;
                TextView textview = (TextView)viewgroup1.findViewById(0x7f0701ff);
                com.dianxinos.dxbs.R.string _tmp6 = ly.i;
                textview.setText(0x7f0a02ac);
                com.dianxinos.dxbs.R.id _tmp7 = ly.f;
                TextView textview1 = (TextView)viewgroup1.findViewById(0x7f070201);
                com.dianxinos.dxbs.R.string _tmp8 = ly.i;
                textview1.setText(0x7f0a02ad);
                com.dianxinos.dxbs.R.id _tmp9 = ly.f;
                TextView textview2 = (TextView)viewgroup1.findViewById(0x7f070203);
                com.dianxinos.dxbs.R.string _tmp10 = ly.i;
                textview2.setText(0x7f0a02ae);
            }
        } else
        if (i1 == -1 + b)
        {
            LayoutInflater layoutinflater = a.getLayoutInflater();
            com.dianxinos.dxbs.R.layout _tmp11 = ly.g;
            viewgroup1 = (ViewGroup)layoutinflater.inflate(0x7f03007a, null);
            c(viewgroup1);
            f();
        } else
        {
            aon aon1 = (aon)k.get(i1 - j1);
            aqd aqd1 = new aqd(a, aon1);
            if (m)
            {
                flag = false;
            }
            aqd1.a(flag, n);
            l.add(aqd1);
            viewgroup1 = aqd1.b();
        }
        viewgroup.addView(viewgroup1);
        return viewgroup1;
    }

    public void a()
    {
        for (Iterator iterator = l.iterator(); iterator.hasNext(); ((aqd)iterator.next()).a().a()) { }
        if (i != null)
        {
            i.notifyDataSetChanged();
        }
    }

    public void a(Message message)
    {
        m = false;
        n = message;
    }

    public void a(ViewGroup viewgroup, int i1, Object obj)
    {
        viewgroup.removeView((View)obj);
    }

    public void a(String s, int i1)
    {
        for (Iterator iterator = l.iterator(); iterator.hasNext(); ((aqd)iterator.next()).a().a(s, i1)) { }
    }

    public void a(ArrayList arraylist)
    {
        k = new ArrayList(arraylist);
        e();
    }

    public boolean a(View view, Object obj)
    {
        return view == (View)obj;
    }

    public ArrayList b()
    {
        return k;
    }

    public int c()
    {
        if (m)
        {
            b = 2 + k.size();
        } else
        {
            b = 1 + k.size();
        }
        return b;
    }
}
