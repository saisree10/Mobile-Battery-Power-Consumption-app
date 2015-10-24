// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import aaz;
import akx;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.LinearGradient;
import android.os.Bundle;
import android.text.TextPaint;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import azf;
import azp;
import bal;
import ly;
import my;

// Referenced classes of package com.dianxinos.powermanager:
//            PowerMgrTabActivity

public class PowerMgrActivity extends Activity
{

    private static int b = 1500;
    private final int a = 5000;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;

    public PowerMgrActivity()
    {
        c = true;
        d = false;
        e = false;
        f = false;
    }

    public static int a()
    {
        return b;
    }

    private void a(int i)
    {
        if (i == 2)
        {
            bal.a(this, "widget14", "enter", Integer.valueOf(1));
        } else
        if (i == 3)
        {
            bal.a(this, "statusbar", "click", Integer.valueOf(1));
            return;
        }
    }

    public static boolean a(PowerMgrActivity powermgractivity)
    {
        return powermgractivity.c;
    }

    public static boolean a(PowerMgrActivity powermgractivity, boolean flag)
    {
        powermgractivity.d = flag;
        return flag;
    }

    public static boolean b(PowerMgrActivity powermgractivity)
    {
        return powermgractivity.e;
    }

    public static boolean c(PowerMgrActivity powermgractivity)
    {
        return powermgractivity.d;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 1)
        {
            finish();
        }
    }

    public void onBackPressed()
    {
        finish();
    }

    public void onCreate(Bundle bundle)
    {
        int i;
        android.graphics.Bitmap bitmap;
        i = 5000;
        super.onCreate(bundle);
        requestWindowFeature(1);
        bitmap = my.a(this).b();
        if (bitmap == null) goto _L2; else goto _L1
_L1:
        ImageView imageview = new ImageView(this);
        imageview.setImageBitmap(bitmap);
        setContentView(imageview);
        int j = my.a(this).a();
        if (j <= i)
        {
            i = j;
        }
        b = i;
_L4:
        bal.a(this, "clicks", "desktop_icon", Integer.valueOf(1));
        a(getIntent().getIntExtra("From", 0));
        return;
_L2:
        ly.g;
        setContentView(0x7f030085);
        azp azp1 = azp.a(this);
        ly.f;
        ((TextView)findViewById(0x7f07000f)).setTypeface(azp1.b());
        ly.f;
        TextView textview = (TextView)findViewById(0x7f07000d);
        textview.setTypeface(azp1.a());
        Resources resources = getResources();
        ly.d;
        float f1 = resources.getDimensionPixelSize(0x7f0801a1);
        Resources resources1 = getResources();
        ly.c;
        int k = resources1.getColor(0x7f090063);
        Resources resources2 = getResources();
        ly.c;
        LinearGradient lineargradient = new LinearGradient(0.0F, 0.0F, 0.0F, f1, k, resources2.getColor(0x7f090064), android.graphics.Shader.TileMode.CLAMP);
        if (azf.l())
        {
            textview.setLayerType(1, textview.getPaint());
        }
        textview.getPaint().setShader(lineargradient);
        if (!akx.a(this).b())
        {
            ly.f;
            findViewById(0x7f07000e).setVisibility(8);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        switch (i)
        {
        default:
            return super.onKeyDown(i, keyevent);

        case 4: // '\004'
            c = false;
            break;
        }
        return true;
    }

    protected void onNewIntent(Intent intent)
    {
        setIntent(intent);
        a(intent.getIntExtra("From", 0));
    }

    protected void onPause()
    {
        super.onPause();
        c = false;
        e = true;
    }

    protected void onResume()
    {
        super.onResume();
        if (!c && !d)
        {
            d = true;
            startActivityForResult(new Intent(this, com/dianxinos/powermanager/PowerMgrTabActivity), 1);
        }
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        if (flag && !f)
        {
            f = true;
            (new aaz(this)).start();
        }
    }

}
