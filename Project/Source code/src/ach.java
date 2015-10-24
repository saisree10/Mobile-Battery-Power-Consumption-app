// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.UserTipsActivity;

public class ach
    implements android.view.View.OnClickListener
{

    final UserTipsActivity a;

    public ach(UserTipsActivity usertipsactivity)
    {
        a = usertipsactivity;
        super();
    }

    public void onClick(View view)
    {
        a.onBackPressed();
    }
}
