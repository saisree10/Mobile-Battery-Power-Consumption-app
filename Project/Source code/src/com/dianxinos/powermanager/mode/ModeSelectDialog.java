// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.mode;

import amy;
import ana;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import bal;
import ly;

public class ModeSelectDialog extends amy
    implements android.view.View.OnClickListener
{

    public ModeSelectDialog()
    {
    }

    private void a(int i)
    {
        if (i == 2)
        {
            bal.a(this, "widget14", "switch_mode", Integer.valueOf(1));
        }
    }

    public void onClick(View view)
    {
        super.a(view);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f030050);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        TextView textview = (TextView)findViewById(0x7f070153);
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        textview.setText(getString(0x7f0a0104));
        a();
        b = getIntent().getIntExtra("From", 0);
        a(b);
        ((NotificationManager)getSystemService("notification")).cancel(4);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        findViewById(0x7f070152).setOnClickListener(new ana(this));
    }

    protected void onDestroy()
    {
        super.onDestroy();
    }

    protected void onNewIntent(Intent intent)
    {
        setIntent(intent);
        b = intent.getIntExtra("From", 0);
        a(b);
    }

    protected void onPause()
    {
        super.onPause();
    }
}
