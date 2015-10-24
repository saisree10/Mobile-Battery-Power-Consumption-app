// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.dianxinos.powermanager.PowerMgrTabActivity;

class awv
    implements android.view.View.OnClickListener
{

    final awu a;

    awv(awu awu1)
    {
        a = awu1;
        super();
    }

    public void onClick(View view)
    {
        Intent intent = new Intent(awu.a(a), com/dianxinos/powermanager/PowerMgrTabActivity);
        intent.addFlags(0x10000000);
        awu.a(a).startActivity(intent);
    }
}
