// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.update;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.Display;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import axl;
import axt;
import azt;
import ka;
import ly;

public class UpdateDialogActivity extends Activity
{

    private String a;
    private String b;
    private String c;
    private String d;
    private Button e;
    private Button f;
    private int g;
    private CheckBox h;
    private axl i;
    private axt j;

    public UpdateDialogActivity()
    {
    }

    private void a()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        ((LinearLayout)findViewById(0x7f070062)).setLayoutParams(new android.widget.LinearLayout.LayoutParams((9 * getWindow().getWindowManager().getDefaultDisplay().getWidth()) / 10, -2));
    }

    public void finish()
    {
        if (h.isChecked())
        {
            ka.a(this).g();
            (new axl(this)).c(true);
        }
        super.finish();
    }

    public void onBackPressed()
    {
        super.onBackPressed();
        if (g == 0)
        {
            ka.a(getApplicationContext()).g();
        }
        if (g == 2)
        {
            sendBroadcast(new Intent("com.dianxinos.dxbs.CLOSE_APP"));
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f03002a);
        Intent intent = getIntent();
        a = intent.getStringExtra("title");
        b = intent.getStringExtra("message");
        c = intent.getStringExtra("button1");
        d = intent.getStringExtra("button2");
        g = intent.getIntExtra("priority", 0);
        if (a == null || b == null || c == null)
        {
            azt.d("UpdateDialog", "Incorrect usage of CommonDialogActivity!");
            finish();
            return;
        }
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        ((TextView)findViewById(0x7f070018)).setText(a);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        ((TextView)findViewById(0x7f070091)).setText(b);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        h = (CheckBox)findViewById(0x7f070093);
        j = new axt(this, g);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        e = (Button)findViewById(0x7f070065);
        e.setText(c);
        Button button = e;
        Resources resources = getResources();
        com.dianxinos.dxbs.R.color _tmp5 = ly.c;
        button.setTextColor(resources.getColor(0x7f09003e));
        e.setOnClickListener(j);
        if (d != null)
        {
            com.dianxinos.dxbs.R.id _tmp6 = ly.f;
            f = (Button)findViewById(0x7f070066);
            f.setText(d);
            f.setVisibility(0);
            f.setOnClickListener(j);
        }
        if (g == 0)
        {
            h.setVisibility(0);
            CheckBox checkbox = h;
            com.dianxinos.dxbs.R.string _tmp7 = ly.i;
            checkbox.setText(0x7f0a020a);
        }
        ka.a(this).a("dl-stu");
        i = new axl(getApplicationContext());
        i.a(System.currentTimeMillis());
        a();
    }
}
