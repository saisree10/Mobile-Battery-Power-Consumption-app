// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.widget.GridView;
import com.dianxinos.powermanager.ui.RunAppBackView;

public class awk
    implements Runnable
{

    final RunAppBackView a;

    public awk(RunAppBackView runappbackview)
    {
        a = runappbackview;
        super();
    }

    public void run()
    {
        RunAppBackView.c(a).startLayoutAnimation();
    }
}
