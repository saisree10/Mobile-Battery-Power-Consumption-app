// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;

class auw
    implements android.view.View.OnClickListener
{

    final auu a;

    auw(auu auu1)
    {
        a = auu1;
        super();
    }

    public void onClick(View view)
    {
        a.dismiss();
    }
}
