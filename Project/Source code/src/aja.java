// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.dianxinos.powermanager.menu.RootHelperActivity;

class aja
    implements android.view.View.OnClickListener
{

    final aiy a;

    aja(aiy aiy1)
    {
        a = aiy1;
        super();
    }

    public void onClick(View view)
    {
        Intent intent = new Intent(a.c, com/dianxinos/powermanager/menu/RootHelperActivity);
        a.c.startActivity(intent);
    }
}
