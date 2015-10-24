// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

public class aiy extends ajk
{

    private static int p = 1;
    private static int q = 2;
    private static int r = 3;
    ajc a;
    private arr s;
    private azh t;

    public aiy(Context context, Handler handler, LinearLayout linearlayout)
    {
        super(context, handler, linearlayout);
        a = new ajc(this);
        s = arr.a(context);
        t = azh.a(context);
        j = 3;
    }

    static int h()
    {
        return r;
    }

    static int i()
    {
        return q;
    }

    static int j()
    {
        return p;
    }

    private String o()
    {
        t.e();
        int k = t.a();
        String s1 = null;
        if (k > 0)
        {
            s1 = String.valueOf(t.d(0) / 1000);
        }
        if (TextUtils.isEmpty(s1))
        {
            Context context1 = c;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            return context1.getString(0x7f0a0335);
        } else
        {
            Context context = c;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            return context.getString(0x7f0a0334, new Object[] {
                s1
            });
        }
    }

    private void p()
    {
        auu auu1 = new auu(c);
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        auu1.setTitle(0x7f0a018d);
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        auu1.c(0x7f0a018f);
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        auu1.a(0x7f0a018e, new aja(this));
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        auu1.b(0x7f0a0114, null);
        auu1.show();
    }

    private void q()
    {
        azh azh1 = azh.a(c.getApplicationContext());
        azh1.e();
        if (azh1.a() > 0 && azh1.a(0) != null)
        {
            arr.a(c).k(1);
            Context context2 = c;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            m = context2.getString(0x7f0a0341);
            l = 1;
            k = j;
            return;
        } else
        {
            Context context = c;
            Context context1 = c;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            Toast.makeText(context, context1.getString(0x7f0a0192), 0).show();
            return;
        }
    }

    private void r()
    {
        bag.a().a(new ajb(this));
    }

    public void a()
    {
        if (s.r() == 1)
        {
            l = 1;
            Context context = c;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            m = context.getString(0x7f0a0336);
            k = j;
            return;
        } else
        {
            l = 3;
            m = o();
            return;
        }
    }

    public void b()
    {
        q();
    }

    public String c()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a0333);
    }

    public String d()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a0343);
    }

    protected void e()
    {
        f();
        ayv.a(new aiz(this));
    }

    protected void f()
    {
        View view = f;
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        view.findViewById(0x7f0700b5).setVisibility(0);
        h.setVisibility(8);
        super.f();
    }

    public void g()
    {
        g.setText(m());
        View view = f;
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        view.findViewById(0x7f0700b5).setVisibility(8);
        h.setVisibility(8);
        if (l == 1)
        {
            ImageView imageview1 = i;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            imageview1.setImageResource(0x7f020198);
        } else
        {
            ImageView imageview = i;
            com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
            imageview.setImageResource(0x7f02019a);
        }
        i.setVisibility(0);
    }

    public void onClick(View view)
    {
        if (!bag.a(c.getApplicationContext()))
        {
            p();
            return;
        }
        if (bag.a().b())
        {
            e();
            return;
        } else
        {
            r();
            return;
        }
    }

}
