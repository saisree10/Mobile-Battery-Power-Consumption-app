// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.res.Resources;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.dianxinos.powermanager.skinshop.OperationConfigActivity;

public class aqd
{

    private OperationConfigActivity a;
    private aon b;
    private LayoutInflater c;
    private ViewGroup d;
    private View e;
    private ListView f;
    private TextView g;
    private ImageView h;
    private TextView i;
    private bbk j;
    private aqg k;
    private int l;
    private View m;
    private Button n;

    public aqd(OperationConfigActivity operationconfigactivity, aon aon1)
    {
        b = aon1;
        a = operationconfigactivity;
        c = LayoutInflater.from(a);
        j = bbk.a();
    }

    private void a(ViewGroup viewgroup)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        h = (ImageView)viewgroup.findViewById(0x7f0701f0);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        i = (TextView)viewgroup.findViewById(0x7f070018);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        g = (TextView)viewgroup.findViewById(0x7f070019);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        f = (ListView)viewgroup.findViewById(0x7f0701f2);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        e = viewgroup.findViewById(0x7f0701f4);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        m = viewgroup.findViewById(0x7f07013d);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        n = (Button)viewgroup.findViewById(0x7f0701f3);
    }

    private void c()
    {
        e.setVisibility(8);
        android.graphics.drawable.BitmapDrawable bitmapdrawable = j.a(b.d);
        if (bitmapdrawable != null)
        {
            h.setBackgroundDrawable(bitmapdrawable);
        } else
        {
            bas bas1 = new bas(b.d);
            h.setImageDrawable(bas1);
            h.setTag(Integer.valueOf(b.d.hashCode()));
            bas1.a(h, 1, l);
        }
        i.setText(b.b);
        g.setText(b.c);
        f.setAdapter(k);
        k.a(b.a);
    }

    public aqg a()
    {
        return k;
    }

    public void a(boolean flag, Message message)
    {
        LayoutInflater layoutinflater = c;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        d = (ViewGroup)layoutinflater.inflate(0x7f03007a, null);
        k = new aqg(a, a);
        Resources resources = a.getResources();
        com.dianxinos.dxbs.R.dimen _tmp1 = ly.d;
        l = resources.getDimensionPixelSize(0x7f08025d);
        a(d);
        e.setVisibility(8);
        c();
        if (flag && message != null)
        {
            f.setEmptyView(m);
            n.setOnClickListener(new aqe(this, message));
        }
    }

    public ViewGroup b()
    {
        return d;
    }
}
