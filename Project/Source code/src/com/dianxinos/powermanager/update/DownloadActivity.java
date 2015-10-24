// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.update;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.view.Display;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import axf;
import axg;
import axh;
import iz;
import ka;
import ly;

public class DownloadActivity extends Activity
    implements iz
{

    private axh a;
    private ka b;
    private ProgressBar c;
    private int d;
    private boolean e;

    public DownloadActivity()
    {
        e = false;
    }

    public static ka a(DownloadActivity downloadactivity)
    {
        return downloadactivity.b;
    }

    private void a()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        ((LinearLayout)findViewById(0x7f070062)).setLayoutParams(new android.widget.LinearLayout.LayoutParams((9 * getWindow().getWindowManager().getDefaultDisplay().getWidth()) / 10, -2));
    }

    private void a(int i)
    {
        d = i;
        Message message = new Message();
        message.what = 2;
        message.arg1 = i;
        a.sendMessage(message);
    }

    public static ProgressBar b(DownloadActivity downloadactivity)
    {
        return downloadactivity.c;
    }

    public void a(Context context, long l, long l1)
    {
        int i = d;
        if (l1 > 0L && l > 0L)
        {
            i = (int)((100L * l) / l1);
        }
        a(i);
    }

    public void a(Context context, String s, long l, long l1)
    {
        int i = l1 != 0L;
        int j = 0;
        if (i > 0)
        {
            j = (int)((100L * l) / l1);
        }
        a(j);
    }

    public void a(Context context, String s, boolean flag, int i, String s1, int j)
    {
        if (j != 2)
        {
            a.sendEmptyMessage(1);
            if (e)
            {
                e = false;
                b.b(this);
            }
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f03002a);
        d = getIntent().getIntExtra("percent", 0);
        a = new axh(this, null);
        b = ka.a(getApplicationContext());
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        String s = getString(0x7f0a004a);
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        String s1 = getString(0x7f0a011c, new Object[] {
            s
        });
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        TextView textview = (TextView)findViewById(0x7f070018);
        com.dianxinos.dxbs.R.string _tmp4 = ly.i;
        textview.setText(0x7f0a011b);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        ((TextView)findViewById(0x7f070091)).setText(s1);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        c = (ProgressBar)findViewById(0x7f070092);
        c.setMax(100);
        c.setProgress(d);
        c.setVisibility(0);
        com.dianxinos.dxbs.R.id _tmp7 = ly.f;
        Button button = (Button)findViewById(0x7f070065);
        button.setVisibility(0);
        com.dianxinos.dxbs.R.string _tmp8 = ly.i;
        button.setText(0x7f0a011e);
        button.setOnClickListener(new axf(this));
        com.dianxinos.dxbs.R.id _tmp9 = ly.f;
        Button button1 = (Button)findViewById(0x7f070066);
        button1.setVisibility(0);
        com.dianxinos.dxbs.R.string _tmp10 = ly.i;
        button1.setText(0x7f0a011d);
        button1.setOnClickListener(new axg(this));
        b.a(this);
        e = true;
        a();
    }
}
