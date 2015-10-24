// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Dialog;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class axi extends Dialog
{

    private LayoutInflater a;
    private Context b;
    private LinearLayout c;
    private List d;
    private Handler e;
    private ArrayList f;

    public axi(Context context, List list, Handler handler)
    {
        com.dianxinos.dxbs.R.style _tmp = ly.j;
        super(context, 0x7f0b0007);
        f = new ArrayList();
        b = context;
        d = list;
        e = handler;
        com.dianxinos.dxbs.R.layout _tmp1 = ly.g;
        setContentView(0x7f0300a2);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        c = (LinearLayout)(LinearLayout)findViewById(0x7f070288);
        a = LayoutInflater.from(b);
        c();
    }

    static Handler a(axi axi1)
    {
        return axi1.e;
    }

    static Handler a(axi axi1, Handler handler)
    {
        axi1.e = handler;
        return handler;
    }

    static Context b(axi axi1)
    {
        return axi1.b;
    }

    private void c()
    {
        f.clear();
        Iterator iterator = d.iterator();
label0:
        do
        {
            kh kh1;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                kh1 = (kh)iterator.next();
            } while (kh1.c != null && b.getPackageManager().resolveActivity(kh1.c, 0) == null);
            LayoutInflater layoutinflater1 = a;
            com.dianxinos.dxbs.R.layout _tmp = ly.g;
            View view1 = layoutinflater1.inflate(0x7f0300a3, null);
            com.dianxinos.dxbs.R.id _tmp1 = ly.f;
            ((TextView)view1.findViewById(0x7f07001f)).setText(kh1.b);
            com.dianxinos.dxbs.R.id _tmp2 = ly.f;
            ((ImageView)view1.findViewById(0x7f070014)).setImageDrawable(kh1.a);
            view1.setOnClickListener(new axj(this, kh1));
            c.addView(view1);
            f.add(kh1);
        } while (f.size() != 2);
        if (f.size() > 0)
        {
            LayoutInflater layoutinflater = a;
            com.dianxinos.dxbs.R.layout _tmp3 = ly.g;
            View view = layoutinflater.inflate(0x7f0300a3, null);
            com.dianxinos.dxbs.R.id _tmp4 = ly.f;
            TextView textview = (TextView)view.findViewById(0x7f07001f);
            com.dianxinos.dxbs.R.string _tmp5 = ly.i;
            textview.setText(0x7f0a01d0);
            com.dianxinos.dxbs.R.id _tmp6 = ly.f;
            ImageView imageview = (ImageView)view.findViewById(0x7f070014);
            com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
            imageview.setImageResource(0x7f02000d);
            view.setOnClickListener(new axk(this));
            c.addView(view);
        }
    }

    public boolean a()
    {
        return f.size() > 0;
    }

    public void b()
    {
        if (f.size() > 0)
        {
            kh kh1 = (kh)f.get(0);
            b.startActivity(kh1.c);
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }
}
