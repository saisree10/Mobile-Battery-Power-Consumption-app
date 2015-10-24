// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.menu;

import aao;
import alz;
import amb;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;
import awz;
import com.dianxinos.powermanager.ui.DXSwitchButton;
import com.dianxinos.powermanager.ui.MainTitle;
import com.dianxinos.powermanager.ui.TimePickerView;
import ly;

public class NoDisturbActivity extends aao
    implements android.view.View.OnClickListener, awz
{

    private amb a;
    private DXSwitchButton b;
    private TimePickerView c;
    private TimePickerView d;
    private int e;
    private int f;
    private int g;
    private int h;
    private boolean i;
    private View j;
    private MainTitle k;

    public NoDisturbActivity()
    {
    }

    private static String a(int l, int i1)
    {
        StringBuffer stringbuffer = new StringBuffer();
        if (l < 10)
        {
            stringbuffer.append(0);
        }
        stringbuffer.append(l);
        stringbuffer.append(":");
        if (i1 < 10)
        {
            stringbuffer.append(0);
        }
        stringbuffer.append(i1);
        return stringbuffer.toString();
    }

    public static String a(Context context)
    {
        amb amb1 = amb.a(context);
        if (amb1.n())
        {
            int ai[] = amb1.o();
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            Object aobj[] = new Object[2];
            aobj[0] = a(ai[0] / 100, ai[0] % 100);
            aobj[1] = a(ai[1] / 100, ai[1] % 100);
            return context.getString(0x7f0a0371, aobj);
        } else
        {
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            return context.getString(0x7f0a00d0);
        }
    }

    private void a(boolean flag)
    {
        if (flag)
        {
            b.setStatus(flag);
            j.setVisibility(8);
            return;
        } else
        {
            b.setStatus(flag);
            j.setVisibility(0);
            return;
        }
    }

    public void a(TimePickerView timepickerview, int l, int i1)
    {
        if (c == timepickerview)
        {
            e = l;
            f = i1;
            return;
        } else
        {
            g = l;
            h = i1;
            return;
        }
    }

    public void onBackPressed()
    {
        super.onBackPressed();
    }

    public void onClick(View view)
    {
        if (view == b)
        {
            boolean flag = i;
            boolean flag1 = false;
            if (!flag)
            {
                flag1 = true;
            }
            i = flag1;
            a(i);
            a.l(i);
        } else
        if (view == j)
        {
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            Toast.makeText(this, 0x7f0a0156, 0).show();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f030074);
        a = amb.a(this);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        k = (MainTitle)findViewById(0x7f070007);
        MainTitle maintitle = k;
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        b = (DXSwitchButton)maintitle.findViewById(0x7f070135);
        b.setVisibility(0);
        b.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        j = findViewById(0x7f07001d);
        j.setOnClickListener(this);
        i = a.n();
    }

    protected void onPause()
    {
        a.a(100 * e + f, 100 * g + h);
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        MainTitle maintitle = k;
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        maintitle.setLeftButtonIcon(0x7f020450);
        k.setLeftButtonOnclickListener(new alz(this));
        int ai[] = a.o();
        e = ai[0] / 100;
        f = ai[0] % 100;
        g = ai[1] / 100;
        h = ai[1] % 100;
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        c = (TimePickerView)findViewById(0x7f0701e2);
        c.setListener(this);
        c.a(e, f);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        d = (TimePickerView)findViewById(0x7f0701e5);
        d.setListener(this);
        d.a(g, h);
        a(i);
    }
}
