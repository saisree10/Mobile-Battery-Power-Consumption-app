// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.optimizer.module.messagebox.WebActivity;

public class zg
    implements android.view.View.OnClickListener
{

    final WebActivity a;

    public zg(WebActivity webactivity)
    {
        a = webactivity;
        super();
    }

    public void onClick(View view)
    {
        a.finish();
    }
}
