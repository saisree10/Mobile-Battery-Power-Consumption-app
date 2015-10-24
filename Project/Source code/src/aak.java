// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.BoosterActivity;

public class aak
    implements android.view.View.OnClickListener
{

    final qb a;
    final ou b;
    final BoosterActivity c;

    public aak(BoosterActivity boosteractivity, qb qb1, ou ou)
    {
        c = boosteractivity;
        a = qb1;
        b = ou;
        super();
    }

    public void onClick(View view)
    {
        a.a(b);
    }
}
