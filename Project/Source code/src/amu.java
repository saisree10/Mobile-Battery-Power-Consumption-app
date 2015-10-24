// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.mode.ModeMgrActivity;

public class amu
    implements android.view.View.OnClickListener
{

    final ModeMgrActivity a;

    public amu(ModeMgrActivity modemgractivity)
    {
        a = modemgractivity;
        super();
    }

    public void onClick(View view)
    {
        bal.a(a.getActivity(), "mode", "delete", Integer.valueOf(1));
        ModeMgrActivity.c(a, ModeMgrActivity.i(a));
    }
}
