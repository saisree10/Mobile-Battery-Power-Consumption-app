// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.DialogInterface;

class ags
    implements android.content.DialogInterface.OnCancelListener
{

    final agp a;

    ags(agp agp1)
    {
        a = agp1;
        super();
    }

    public void onCancel(DialogInterface dialoginterface)
    {
        if (agp.c(a) != null)
        {
            agp.c(a).a(false);
            agp.a(a, null);
        }
        if (agp.d(a) != null)
        {
            agp.d(a).a(false);
            agp.b(a, null);
        }
    }
}
