// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.res.Resources;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.dianxinos.optimizer.module.messagebox.MessageBoxActivity;
import java.util.List;

public class ys extends BaseAdapter
{

    final MessageBoxActivity a;
    private LayoutInflater b;
    private yi c;

    public ys(MessageBoxActivity messageboxactivity)
    {
        a = messageboxactivity;
        super();
        b = messageboxactivity.getLayoutInflater();
        android.content.Context context = messageboxactivity.getApplicationContext();
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        c = new yi(context, 0x7f02000d);
    }

    public int getCount()
    {
        return MessageBoxActivity.e(a).size();
    }

    public Object getItem(int i)
    {
        return MessageBoxActivity.e(a).get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        byte byte0 = 4;
        yv yv2;
        zd zd1;
        boolean flag;
        int j;
        int k;
        TextView textview;
        TextView textview1;
        int l;
        TextView textview2;
        android.graphics.Bitmap bitmap;
        if (view == null)
        {
            yv yv1 = new yv(null);
            yv1.g = i;
            LayoutInflater layoutinflater = b;
            com.dianxinos.dxbs.R.layout _tmp = ly.g;
            View view1 = layoutinflater.inflate(0x7f030049, viewgroup, false);
            LayoutInflater layoutinflater1 = b;
            com.dianxinos.dxbs.R.layout _tmp1 = ly.g;
            View view2 = layoutinflater1.inflate(0x7f030080, viewgroup, false);
            ya ya1 = new ya(a, MessageBoxActivity.f(a), view1, view2, new yt(this, view1, yv1));
            com.dianxinos.dxbs.R.id _tmp2 = ly.f;
            yv1.a = (ImageView)view1.findViewById(0x7f07013f);
            com.dianxinos.dxbs.R.id _tmp3 = ly.f;
            yv1.b = (ImageView)view1.findViewById(0x7f070143);
            com.dianxinos.dxbs.R.id _tmp4 = ly.f;
            yv1.c = (TextView)view1.findViewById(0x7f070140);
            com.dianxinos.dxbs.R.id _tmp5 = ly.f;
            yv1.d = (TextView)view1.findViewById(0x7f070141);
            com.dianxinos.dxbs.R.id _tmp6 = ly.f;
            yv1.e = (ImageView)view1.findViewById(0x7f070144);
            com.dianxinos.dxbs.R.id _tmp7 = ly.f;
            yv1.f = (Button)view2.findViewById(0x7f07020a);
            yv1.f.setOnClickListener(new yu(this, yv1));
            ya1.setTag(yv1);
            MessageBoxActivity.g(a).add((ya)ya1);
            yv2 = yv1;
            view = ya1;
        } else
        {
            yv yv3 = (yv)view.getTag();
            yv3.g = i;
            yv2 = yv3;
        }
        zd1 = (zd)MessageBoxActivity.e(a).get(i);
        if (!TextUtils.isEmpty(zd1.d))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            yv2.c.setText(zd1.d);
        }
        j = (int)yv2.c.getPaint().measureText(zd1.d) + axb.a(a, 13);
        k = a.getWindowManager().getDefaultDisplay().getWidth() - axb.a(a, 34);
        textview = yv2.c;
        if (j <= k)
        {
            k = j;
        }
        textview.setWidth(k);
        textview1 = yv2.c;
        if (flag)
        {
            l = 0;
        } else
        {
            l = byte0;
        }
        textview1.setVisibility(l);
        yv2.d.setText(zo.a(a, zd1.h));
        textview2 = yv2.d;
        if (zd1.j)
        {
            byte0 = 0;
        }
        textview2.setVisibility(byte0);
        if (zd1.g == 2)
        {
            yv2.b.setVisibility(8);
            yv2.e.setVisibility(0);
        } else
        {
            yv2.b.setVisibility(0);
            yv2.e.setVisibility(8);
        }
        bitmap = yi.d(zd1.e);
        if (bitmap != null)
        {
            yv2.a.setImageBitmap(MessageBoxActivity.a(a, bitmap));
            return view;
        } else
        {
            android.graphics.Bitmap bitmap1 = zr.a(a.getResources().getDrawable(MessageBoxActivity.a()[(-1 + zd1.a) % MessageBoxActivity.a().length]));
            yv2.a.setImageBitmap(MessageBoxActivity.a(a, bitmap1));
            c.a(zd1.e, null);
            return view;
        }
    }
}
