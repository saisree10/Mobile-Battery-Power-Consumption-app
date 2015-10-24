// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.feedback.FeedbackDialog;
import com.dianxinos.powermanager.feedback.HotQAActivity;

public class akl
    implements android.view.View.OnClickListener
{

    final HotQAActivity a;

    public akl(HotQAActivity hotqaactivity)
    {
        a = hotqaactivity;
        super();
    }

    public void onClick(View view)
    {
        (new FeedbackDialog(a)).show();
    }
}
