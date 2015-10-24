// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;

public class aml extends auu
    implements android.view.View.OnClickListener
{

    private Context c;
    private amp d;
    private int e;
    private LayoutInflater f;
    private int g;
    private amm h;
    private Handler i;

    public aml(Context context, int j, Handler handler, amm amm1)
    {
        super(context);
        k();
        c = context;
        g = j;
        i = handler;
        h = amm1;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        setTitle(0x7f0a0104);
        f = (LayoutInflater)c.getSystemService("layout_inflater");
        d = amp.a(c);
        e = d.a();
        a();
        i();
    }

    private View a(int j)
    {
        LayoutInflater layoutinflater = f;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater.inflate(0x7f030072, null);
        b(view, j);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        ((TextView)view.findViewById(0x7f070156)).setText(d.c(j));
        if (j == g)
        {
            com.dianxinos.dxbs.R.id _tmp2 = ly.f;
            ImageView imageview = (ImageView)view.findViewById(0x7f0701cf);
            imageview.setVisibility(0);
            com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
            imageview.setImageResource(0x7f0201f2);
        }
        view.setTag(Integer.valueOf(j));
        view.setOnClickListener(this);
        return view;
    }

    private void a()
    {
        for (int j = 0; j < e; j++)
        {
            a(a(j));
            a(auu.a(c));
        }

        a(b());
    }

    private View b()
    {
        LayoutInflater layoutinflater = f;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater.inflate(0x7f030072, null);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        ImageView imageview = (ImageView)view.findViewById(0x7f0701cf);
        com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
        imageview.setImageResource(0x7f02000c);
        imageview.setVisibility(0);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        TextView textview = (TextView)view.findViewById(0x7f070156);
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp4 = ly.i;
        textview.setText(context.getString(0x7f0a00b8));
        view.setTag("addNew");
        view.setOnClickListener(this);
        return view;
    }

    private void b(View view, int j)
    {
        if (j <= 2)
        {
            com.dianxinos.dxbs.R.id _tmp = ly.f;
            ImageView imageview = (ImageView)view.findViewById(0x7f070146);
            com.dianxinos.dxbs.R.id _tmp1 = ly.f;
            ImageView imageview1 = (ImageView)view.findViewById(0x7f070147);
            com.dianxinos.dxbs.R.id _tmp2 = ly.f;
            ImageView imageview2 = (ImageView)view.findViewById(0x7f070148);
            com.dianxinos.dxbs.R.id _tmp3 = ly.f;
            ImageView imageview3 = (ImageView)view.findViewById(0x7f070149);
            if (d.g().l().h() || azf.n())
            {
                imageview.setVisibility(0);
                imageview1.setVisibility(0);
            }
            imageview2.setVisibility(0);
            if (d.g().a(4).h())
            {
                imageview3.setVisibility(0);
            }
            if (j == d.g(0))
            {
                com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
                imageview2.setImageResource(0x7f02042b);
                com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
                imageview3.setImageResource(0x7f020426);
                return;
            }
            if (j == d.g(1))
            {
                com.dianxinos.dxbs.R.drawable _tmp6 = ly.e;
                imageview2.setImageResource(0x7f02042b);
                com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
                imageview3.setImageResource(0x7f020427);
                return;
            }
            if (j == d.g(2))
            {
                if (azf.n())
                {
                    com.dianxinos.dxbs.R.drawable _tmp8 = ly.e;
                    imageview.setImageResource(0x7f020429);
                    com.dianxinos.dxbs.R.drawable _tmp9 = ly.e;
                    imageview1.setImageResource(0x7f020425);
                } else
                {
                    com.dianxinos.dxbs.R.drawable _tmp10 = ly.e;
                    imageview.setImageResource(0x7f020428);
                    com.dianxinos.dxbs.R.drawable _tmp11 = ly.e;
                    imageview1.setImageResource(0x7f020424);
                }
                com.dianxinos.dxbs.R.drawable _tmp12 = ly.e;
                imageview2.setImageResource(0x7f02042b);
                com.dianxinos.dxbs.R.drawable _tmp13 = ly.e;
                imageview3.setImageResource(0x7f020426);
                return;
            }
            if (j == d.g(3))
            {
                ArrayList arraylist = d.f().a(j);
                if (((Integer)arraylist.get(2)).intValue() == 0)
                {
                    com.dianxinos.dxbs.R.drawable _tmp14 = ly.e;
                    imageview2.setImageResource(0x7f02042b);
                } else
                {
                    com.dianxinos.dxbs.R.drawable _tmp15 = ly.e;
                    imageview2.setImageResource(0x7f02042c);
                }
                if (((Integer)arraylist.get(4)).intValue() == 0)
                {
                    com.dianxinos.dxbs.R.drawable _tmp16 = ly.e;
                    imageview3.setImageResource(0x7f020426);
                    return;
                } else
                {
                    com.dianxinos.dxbs.R.drawable _tmp17 = ly.e;
                    imageview3.setImageResource(0x7f020427);
                    return;
                }
            }
        }
    }

    private View d(String s)
    {
        LayoutInflater layoutinflater = f;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater.inflate(0x7f030072, null);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        ((TextView)view.findViewById(0x7f070156)).setText(s);
        view.setTag(Integer.valueOf(e));
        view.setOnClickListener(this);
        return view;
    }

    public void a(String s)
    {
        a(d(s), 1 + 2 * e);
        a(auu.a(c), 2 + 2 * e);
        d.a(s);
        e = 1 + e;
    }

    public void onClick(View view)
    {
        if (view.getTag().equals("addNew"))
        {
            Message message = new Message();
            message.what = 1;
            message.arg1 = e;
            i.sendMessage(message);
            return;
        }
        View view1 = e(g);
        if (view1 != null)
        {
            com.dianxinos.dxbs.R.id _tmp = ly.f;
            ImageView imageview1 = (ImageView)view1.findViewById(0x7f0701cf);
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            imageview1.setImageResource(0x7f0201f1);
        }
        for (int j = 0; j < e; j++)
        {
            if (view.getTag().equals(Integer.valueOf(j)) && h != null)
            {
                com.dianxinos.dxbs.R.id _tmp2 = ly.f;
                ImageView imageview = (ImageView)view.findViewById(0x7f0701cf);
                com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
                imageview.setImageResource(0x7f0201f2);
                h.a(j, d.c(j));
            }
        }

        dismiss();
    }
}
