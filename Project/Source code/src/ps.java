// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;

class ps
    implements android.view.View.OnClickListener
{

    final pq a;

    ps(pq pq1)
    {
        a = pq1;
        super();
    }

    public void onClick(View view)
    {
        a.cancel();
    }
}
