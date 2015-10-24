// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.SystemClock;
import android.view.View;
import android.webkit.WebView;
import com.dianxinos.optimizer.module.messagebox.WebActivity;

public class zh
    implements android.view.View.OnClickListener
{

    final WebActivity a;

    public zh(WebActivity webactivity)
    {
        a = webactivity;
        super();
    }

    public void onClick(View view)
    {
        WebActivity.a(a, false);
        WebActivity.a(a, SystemClock.currentThreadTimeMillis());
        WebActivity.a(a).reload();
        bal.a(true, a, "wac", "wrc", Integer.valueOf(1));
    }
}
