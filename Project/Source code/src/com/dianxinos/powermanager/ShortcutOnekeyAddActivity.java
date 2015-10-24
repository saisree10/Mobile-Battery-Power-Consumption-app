// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import azt;
import ly;

// Referenced classes of package com.dianxinos.powermanager:
//            ShortcutOnekeyActivity

public class ShortcutOnekeyAddActivity extends Activity
{

    public ShortcutOnekeyAddActivity()
    {
    }

    private void a()
    {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setClassName(this, com/dianxinos/powermanager/ShortcutOnekeyActivity.getName());
        Intent intent1 = new Intent();
        intent1.putExtra("android.intent.extra.shortcut.INTENT", intent);
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        intent1.putExtra("android.intent.extra.shortcut.NAME", getString(0x7f0a015b));
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        intent1.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", android.content.Intent.ShortcutIconResource.fromContext(this, 0x7f0203da));
        setResult(-1, intent1);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if ("android.intent.action.CREATE_SHORTCUT".equals(intent.getAction()))
        {
            a();
        } else
        {
            azt.d("ShortcutOnekeyAddActivity", (new StringBuilder()).append("Wrong intent: ").append(intent).toString());
        }
        finish();
    }
}
