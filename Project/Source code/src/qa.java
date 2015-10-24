// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.DialogInterface;

class qa
    implements android.content.DialogInterface.OnCancelListener
{

    final pv a;

    qa(pv pv1)
    {
        a = pv1;
        super();
    }

    public void onCancel(DialogInterface dialoginterface)
    {
        a.k();
    }
}
