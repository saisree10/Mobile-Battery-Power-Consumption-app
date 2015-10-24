// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public abstract class ajk
    implements android.view.View.OnClickListener
{

    protected static boolean b = false;
    protected Context c;
    protected Handler d;
    protected LinearLayout e;
    protected View f;
    protected TextView g;
    protected Button h;
    protected ImageView i;
    protected int j;
    protected int k;
    protected int l;
    protected String m;
    protected boolean n;
    protected boolean o;

    public ajk(Context context, Handler handler, LinearLayout linearlayout)
    {
        n = true;
        c = context;
        d = handler;
        e = linearlayout;
    }

    public abstract void a();

    public void a(LayoutInflater layoutinflater)
    {
        if (!n) goto _L2; else goto _L1
_L1:
        if (f == null)
        {
            ly.g;
            f = layoutinflater.inflate(0x7f030030, null);
            View view = f;
            ly.f;
            g = (TextView)view.findViewById(0x7f0700a8);
            View view1 = f;
            ly.f;
            h = (Button)view1.findViewById(0x7f0700b7);
            h.setOnClickListener(this);
            View view2 = f;
            ly.f;
            i = (ImageView)view2.findViewById(0x7f0700b6);
            e.addView(f);
        }
        g.setText(Html.fromHtml(m()));
        if (l != 1) goto _L4; else goto _L3
_L3:
        h.setVisibility(8);
        ImageView imageview1 = i;
        ly.e;
        imageview1.setImageResource(0x7f020198);
        i.setVisibility(0);
_L6:
        return;
_L4:
        if (l == 2)
        {
            h.setVisibility(8);
            ImageView imageview = i;
            ly.e;
            imageview.setImageResource(0x7f02019a);
            i.setVisibility(4);
            return;
        } else
        {
            h.setVisibility(0);
            h.setText(d());
            i.setVisibility(8);
            return;
        }
_L2:
        if (f != null)
        {
            e.removeView(f);
            f = null;
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void a(boolean flag)
    {
        if (!n)
        {
            return;
        } else
        {
            h.setEnabled(flag);
            return;
        }
    }

    public abstract void b();

    public abstract String c();

    public abstract String d();

    protected void e()
    {
        f();
        bal.a(c, "home", "hasope", Integer.valueOf(1));
        ayv.a(new ajl(this));
    }

    protected void f()
    {
        Message.obtain(d, 9, this).sendToTarget();
    }

    public void g()
    {
        if (!n)
        {
            return;
        } else
        {
            g.setText(m());
            h.setVisibility(0);
            h.setText(d());
            return;
        }
    }

    public int k()
    {
        return k;
    }

    public boolean l()
    {
        return n;
    }

    public String m()
    {
        if (m == null)
        {
            return "";
        } else
        {
            return m;
        }
    }

    public void n()
    {
        if (!n)
        {
            return;
        }
        g.setText(m());
        h.setVisibility(8);
        if (l == 1)
        {
            ImageView imageview1 = i;
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            imageview1.setImageResource(0x7f020198);
        } else
        {
            ImageView imageview = i;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            imageview.setImageResource(0x7f02019a);
        }
        i.setVisibility(0);
    }

    public void onClick(View view)
    {
        b();
    }

}
