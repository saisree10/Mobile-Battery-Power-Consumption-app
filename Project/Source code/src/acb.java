// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.ShowVolunteersActivity;

public class acb
    implements android.view.View.OnClickListener
{

    final ShowVolunteersActivity a;

    public acb(ShowVolunteersActivity showvolunteersactivity)
    {
        a = showvolunteersactivity;
        super();
    }

    public void onClick(View view)
    {
        a.onBackPressed();
    }
}
