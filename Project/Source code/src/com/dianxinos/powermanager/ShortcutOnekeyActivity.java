// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import aaa;
import abz;
import aca;
import acz;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.Toast;
import azt;
import bal;
import ly;

public class ShortcutOnekeyActivity extends Activity
{

    private aca a;
    private boolean b;
    private View c;
    private View d;

    public ShortcutOnekeyActivity()
    {
        a = new aca(this, null);
        b = true;
    }

    public static View a(ShortcutOnekeyActivity shortcutonekeyactivity)
    {
        return shortcutonekeyactivity.d;
    }

    private void a()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        ((ImageView)findViewById(0x7f0701ec)).setVisibility(0);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        ImageView imageview = (ImageView)findViewById(0x7f0701ed);
        imageview.setVisibility(0);
        com.dianxinos.dxbs.R.anim _tmp2 = ly.a;
        imageview.startAnimation(AnimationUtils.loadAnimation(this, 0x7f04000c));
        a.sendEmptyMessageDelayed(2, 1200L);
    }

    public static void a(Context context)
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setComponent(new ComponentName(context.getPackageName(), com/dianxinos/powermanager/ShortcutOnekeyActivity.getName()));
        Intent intent1 = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
        intent1.putExtra("android.intent.extra.shortcut.INTENT", intent);
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        intent1.putExtra("android.intent.extra.shortcut.NAME", context.getString(0x7f0a015b));
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        intent1.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", android.content.Intent.ShortcutIconResource.fromContext(context, 0x7f0203da));
        intent1.putExtra("duplicate", false);
        context.sendBroadcast(intent1);
    }

    private void a(Intent intent, int i, int j)
    {
        Rect rect = intent.getSourceBounds();
        int i1;
        int j1;
        android.widget.RelativeLayout.LayoutParams layoutparams;
        if (rect != null)
        {
            Resources resources = getResources();
            com.dianxinos.dxbs.R.dimen _tmp = ly.d;
            int k1 = resources.getDimensionPixelSize(0x7f080076);
            int l1 = rect.left + rect.width() / 2;
            int i2 = k1 + rect.top;
            i1 = l1;
            j1 = i2;
        } else
        {
            int k = i / 2;
            int l = j / 2;
            b = false;
            a.sendEmptyMessageDelayed(2, 200L);
            azt.d("ShortcutOnekeyActivity", "Cannot get source round!");
            i1 = k;
            j1 = l;
        }
        layoutparams = (android.widget.RelativeLayout.LayoutParams)c.getLayoutParams();
        layoutparams.leftMargin = i1 - layoutparams.width / 2;
        layoutparams.topMargin = j1 - layoutparams.height / 2;
        c.setLayoutParams(layoutparams);
    }

    public static void a(ShortcutOnekeyActivity shortcutonekeyactivity, Intent intent, int i, int j)
    {
        shortcutonekeyactivity.a(intent, i, j);
    }

    private void b()
    {
        acz acz1 = acz.a(this);
        int i = acz1.b();
        aaa aaa1 = aaa.a(this);
        if (!aaa1.a())
        {
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            Toast.makeText(this, 0x7f0a0109, 0).show();
            return;
        }
        int j = aaa1.a(300, true);
        int k = 180;
        if (j > 0)
        {
            int l = acz1.a();
            if (i > 0 && l > 0)
            {
                k = l - i;
            }
        }
        aaa1.a(j, k);
        bal.a(this, "shortcut", "onekey", Integer.valueOf(1));
        bal.a(this, "clicks", "one_key", Integer.valueOf(1));
    }

    public static void b(ShortcutOnekeyActivity shortcutonekeyactivity)
    {
        shortcutonekeyactivity.a();
    }

    public static void c(ShortcutOnekeyActivity shortcutonekeyactivity)
    {
        shortcutonekeyactivity.b();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Intent intent = getIntent();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f030077);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        d = findViewById(0x7f0701ea);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        c = findViewById(0x7f0701eb);
        c.post(new abz(this, intent));
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        if (flag && b)
        {
            b = false;
            a.sendEmptyMessageDelayed(1, 300L);
        }
    }
}
