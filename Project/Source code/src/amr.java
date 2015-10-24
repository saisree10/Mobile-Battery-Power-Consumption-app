// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.mode.ModeMgrActivity;

public class amr
    implements android.view.View.OnClickListener
{

    final ModeMgrActivity a;

    public amr(ModeMgrActivity modemgractivity)
    {
        a = modemgractivity;
        super();
    }

    public void onClick(View view)
    {
        if (ModeMgrActivity.a(a) != null)
        {
            ModeMgrActivity.a(a).dismiss();
        }
    }
}
