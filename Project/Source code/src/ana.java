// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.mode.ModeSelectDialog;

public class ana
    implements android.view.View.OnClickListener
{

    final ModeSelectDialog a;

    public ana(ModeSelectDialog modeselectdialog)
    {
        a = modeselectdialog;
        super();
    }

    public void onClick(View view)
    {
        a.finish();
    }
}
