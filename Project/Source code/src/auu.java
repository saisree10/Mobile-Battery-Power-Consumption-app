// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public class auu extends Dialog
{

    protected Context a;
    protected Button b;
    private boolean c;
    private ava d;
    private LinearLayout e;
    private auy f;
    private TextView g;
    private boolean h;

    public auu(Context context)
    {
        com.dianxinos.dxbs.R.style _tmp = ly.j;
        super(context, 0x7f0b0007);
        h = true;
        com.dianxinos.dxbs.R.layout _tmp1 = ly.g;
        setContentView(0x7f03002a);
        a = context;
        b(false);
    }

    public auu(Context context, int l)
    {
        com.dianxinos.dxbs.R.style _tmp = ly.j;
        super(context, 0x7f0b0007);
        h = true;
        setContentView(l);
        a = context;
        b(false);
    }

    public auu(Context context, boolean flag)
    {
        com.dianxinos.dxbs.R.style _tmp = ly.j;
        super(context, 0x7f0b0007);
        h = true;
        com.dianxinos.dxbs.R.layout _tmp1 = ly.g;
        setContentView(0x7f03002a);
        a = context;
        b(flag);
    }

    public static View a(Context context)
    {
        ImageView imageview = new ImageView(context);
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        imageview.setBackgroundResource(0x7f02018f);
        imageview.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -2));
        return imageview;
    }

    static boolean a(auu auu1)
    {
        return auu1.h;
    }

    private void b(boolean flag)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        e = (LinearLayout)findViewById(0x7f070061);
        if (flag)
        {
            getWindow().getAttributes().height = -1;
            getWindow().getAttributes().width = -1;
            LinearLayout linearlayout = e;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            linearlayout.setBackgroundResource(0x7f020043);
        } else
        {
            setCanceledOnTouchOutside(true);
            iq.a(e, a);
            com.dianxinos.dxbs.R.id _tmp2 = ly.f;
            ((LinearLayout)findViewById(0x7f070062)).setLayoutParams(new android.widget.LinearLayout.LayoutParams((9 * getWindow().getWindowManager().getDefaultDisplay().getWidth()) / 10, -2));
        }
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        findViewById(0x7f070065).setOnClickListener(new auv(this));
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        findViewById(0x7f070066).setOnClickListener(new auw(this));
    }

    public void a(int l, android.view.View.OnClickListener onclicklistener)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        b = (Button)findViewById(0x7f070065);
        b.setVisibility(0);
        if (l > 0)
        {
            b.setText(l);
        }
        if (onclicklistener != null)
        {
            b.setOnClickListener(new auz(this, onclicklistener));
            return;
        } else
        {
            b.setOnClickListener(new aux(this, null));
            return;
        }
    }

    protected void a(View view)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        ((LinearLayout)findViewById(0x7f070090)).addView(view);
    }

    protected void a(View view, int l)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        ((LinearLayout)findViewById(0x7f070090)).addView(view, l);
    }

    public void a(auy auy1)
    {
        f = auy1;
    }

    public void a(ava ava1)
    {
        d = ava1;
    }

    public void a(CharSequence charsequence)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        g = (TextView)findViewById(0x7f070091);
        g.setText(charsequence);
    }

    public void a(boolean flag)
    {
        h = flag;
        setCanceledOnTouchOutside(flag);
    }

    public void b(int l, android.view.View.OnClickListener onclicklistener)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        Button button = (Button)findViewById(0x7f070066);
        button.setVisibility(0);
        if (l > 0)
        {
            button.setText(l);
        }
        if (onclicklistener != null)
        {
            button.setOnClickListener(new auz(this, onclicklistener));
            return;
        } else
        {
            button.setOnClickListener(new aux(this, null));
            return;
        }
    }

    protected void b(View view)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        ViewGroup viewgroup = (ViewGroup)findViewById(0x7f07008e);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        findViewById(0x7f070090).setVisibility(8);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        findViewById(0x7f07008f).setVisibility(8);
        viewgroup.setVisibility(0);
        viewgroup.addView(view);
    }

    public void b(String s)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        ((TextView)findViewById(0x7f070018)).setText(s);
    }

    public void c()
    {
        c = true;
    }

    public void c(int l)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        g = (TextView)findViewById(0x7f070091);
        g.setText(l);
    }

    public void c(String s)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        g = (TextView)findViewById(0x7f070091);
        g.setText(s);
    }

    public void d()
    {
        Button button = b;
        Resources resources = a.getResources();
        com.dianxinos.dxbs.R.color _tmp = ly.c;
        button.setTextColor(resources.getColor(0x7f09003e));
    }

    public void d(int l)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        ((CheckBox)findViewById(0x7f070093)).setText(l);
    }

    public void dismiss()
    {
        super.dismiss();
        if (f != null)
        {
            f.a();
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        if (keyevent.getKeyCode() == 84)
        {
            return true;
        } else
        {
            return super.dispatchKeyEvent(keyevent);
        }
    }

    protected View e(int l)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        return ((LinearLayout)findViewById(0x7f070090)).findViewWithTag(Integer.valueOf(l));
    }

    public void e()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        TextView textview = (TextView)findViewById(0x7f070018);
        Resources resources = a.getResources();
        com.dianxinos.dxbs.R.color _tmp1 = ly.c;
        textview.setTextColor(resources.getColor(0x7f09003e));
    }

    public void f()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        findViewById(0x7f070093).setVisibility(0);
    }

    public void f(int l)
    {
        g.setTextColor(a.getResources().getColor(l));
    }

    protected void g()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        ((LinearLayout)findViewById(0x7f070090)).removeAllViews();
    }

    public void g(int l)
    {
        g.setTextSize(0, l);
    }

    protected void h()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        findViewById(0x7f070018).setVisibility(8);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        findViewById(0x7f07008d).setBackgroundResource(0);
    }

    protected void i()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        findViewById(0x7f070094).setVisibility(8);
    }

    protected void j()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        findViewById(0x7f07008f).setPadding(0, 0, 0, 0);
    }

    protected void k()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        findViewById(0x7f07008f).setPadding(0, 0, 0, 0);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        findViewById(0x7f070091).setVisibility(8);
    }

    public boolean onKeyDown(int l, KeyEvent keyevent)
    {
        if (d != null)
        {
            d.a(l, keyevent);
        }
        if (l == 4 && c)
        {
            return true;
        } else
        {
            return super.onKeyDown(l, keyevent);
        }
    }

    public void setTitle(int l)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        ((TextView)findViewById(0x7f070018)).setText(l);
    }
}
