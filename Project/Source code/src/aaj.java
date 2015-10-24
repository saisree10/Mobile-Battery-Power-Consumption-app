// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.BoosterActivity;

public class aaj
    implements android.view.View.OnClickListener
{

    final BoosterActivity a;

    public aaj(BoosterActivity boosteractivity)
    {
        a = boosteractivity;
        super();
    }

    public void onClick(View view)
    {
        a.finish();
    }
}
