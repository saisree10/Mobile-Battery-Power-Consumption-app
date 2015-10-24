// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public class amn extends LinearLayout
    implements android.view.View.OnClickListener
{

    public static int a = 1;
    public static int b = 2;
    private TextView c;
    private TextView d;
    private ImageView e;
    private ImageView f;
    private ImageView g;
    private View h;
    private android.view.View.OnClickListener i;
    private amo j;

    public amn(Context context)
    {
        super(context);
        i = null;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        inflate(context, 0x7f03004d, this);
        setGravity(16);
        setOrientation(0);
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        setBackgroundResource(0x7f0201f0);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        e = (ImageView)findViewById(0x7f070014);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        c = (TextView)findViewById(0x7f07001f);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        d = (TextView)findViewById(0x7f07014a);
        setClickable(true);
        setFocusable(true);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        h = findViewById(0x7f07014b);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        f = (ImageView)findViewById(0x7f07014c);
        f.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp7 = ly.f;
        g = (ImageView)findViewById(0x7f07014d);
        g.setOnClickListener(this);
        if (d.getText().equals(""))
        {
            d.setVisibility(8);
        }
    }

    public void a()
    {
        if (i != null)
        {
            i.onClick(this);
        }
    }

    public String getTitle()
    {
        return (String)c.getText();
    }

    public void onClick(View view)
    {
label0:
        {
            if (j != null)
            {
                if (f != view)
                {
                    break label0;
                }
                j.a(this, a);
            }
            return;
        }
        j.a(this, b);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int k = motionevent.getAction();
        if (k == 0)
        {
            setPressed(true);
            f.setPressed(false);
            g.setPressed(false);
        } else
        if (k == 1 || k == 3)
        {
            setPressed(false);
            if (k == 1)
            {
                a();
                return true;
            }
        }
        return true;
    }

    public void setEditDelPanelVisiable(int k)
    {
        h.setVisibility(k);
    }

    public void setIcon(int k)
    {
        e.setImageResource(k);
    }

    public void setOnActionListener(amo amo1)
    {
        j = amo1;
    }

    public void setOnClickListener(android.view.View.OnClickListener onclicklistener)
    {
        i = onclicklistener;
    }

    public void setSelected(boolean flag)
    {
        if (flag)
        {
            ImageView imageview1 = e;
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            imageview1.setImageResource(0x7f0201f2);
            return;
        } else
        {
            ImageView imageview = e;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            imageview.setImageResource(0x7f0201f1);
            return;
        }
    }

    public void setSummary(String s)
    {
        d.setText(s);
    }

    public void setSummaryVisibility(int k)
    {
        d.setVisibility(k);
    }

    public void setTitle(String s)
    {
        c.setText(s);
    }

}
