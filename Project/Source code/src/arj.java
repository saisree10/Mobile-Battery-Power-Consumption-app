// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.smart.CpuSelectDialog;

public class arj
    implements android.view.View.OnClickListener
{

    final CpuSelectDialog a;

    public arj(CpuSelectDialog cpuselectdialog)
    {
        a = cpuselectdialog;
        super();
    }

    public void onClick(View view)
    {
        CpuSelectDialog.a(a);
    }
}
