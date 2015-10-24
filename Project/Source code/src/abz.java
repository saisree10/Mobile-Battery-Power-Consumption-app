// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Intent;
import android.graphics.Rect;
import android.view.View;
import android.view.Window;
import com.dianxinos.powermanager.ShortcutOnekeyActivity;

public class abz
    implements Runnable
{

    final Intent a;
    final ShortcutOnekeyActivity b;

    public abz(ShortcutOnekeyActivity shortcutonekeyactivity, Intent intent)
    {
        b = shortcutonekeyactivity;
        a = intent;
        super();
    }

    public void run()
    {
        Rect rect = new Rect();
        ShortcutOnekeyActivity.a(b).getGlobalVisibleRect(rect);
        int i = rect.top;
        android.view.WindowManager.LayoutParams layoutparams = b.getWindow().getAttributes();
        layoutparams.flags = 0x200 | layoutparams.flags;
        if (i <= 0)
        {
            layoutparams.flags = 0x400 | layoutparams.flags;
        }
        b.getWindow().setAttributes(layoutparams);
        ShortcutOnekeyActivity.a(b, a, rect.width(), rect.height());
    }
}
