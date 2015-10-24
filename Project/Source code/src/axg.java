// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.update.DownloadActivity;

public class axg
    implements android.view.View.OnClickListener
{

    final DownloadActivity a;

    public axg(DownloadActivity downloadactivity)
    {
        a = downloadactivity;
        super();
    }

    public void onClick(View view)
    {
        a.finish();
    }
}
