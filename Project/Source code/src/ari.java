// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Intent;
import android.view.View;
import com.dianxinos.powermanager.menu.RootHelperActivity;
import com.dianxinos.powermanager.smart.CpuSelectDialog;

public class ari
    implements android.view.View.OnClickListener
{

    final CpuSelectDialog a;

    public ari(CpuSelectDialog cpuselectdialog)
    {
        a = cpuselectdialog;
        super();
    }

    public void onClick(View view)
    {
        Intent intent = new Intent(a, com/dianxinos/powermanager/menu/RootHelperActivity);
        a.startActivity(intent);
    }
}
