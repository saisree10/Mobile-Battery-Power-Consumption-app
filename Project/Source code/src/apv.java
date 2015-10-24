// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.skinshop.OperationConfigActivity;

public class apv
    implements android.view.View.OnClickListener
{

    final OperationConfigActivity a;

    public apv(OperationConfigActivity operationconfigactivity)
    {
        a = operationconfigactivity;
        super();
    }

    public void onClick(View view)
    {
        a.setResult(1092);
        a.finish();
    }
}
