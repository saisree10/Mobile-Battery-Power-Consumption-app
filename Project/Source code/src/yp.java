// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.widget.AbsListView;
import com.dianxinos.optimizer.module.messagebox.MessageBoxActivity;

public class yp
    implements android.widget.AbsListView.OnScrollListener
{

    final MessageBoxActivity a;

    public yp(MessageBoxActivity messageboxactivity)
    {
        a = messageboxactivity;
        super();
    }

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
        MessageBoxActivity.a(a);
    }
}
