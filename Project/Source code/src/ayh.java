// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;

class ayh
    implements android.view.View.OnClickListener
{

    final ayg a;

    ayh(ayg ayg1)
    {
        a = ayg1;
        super();
    }

    public void onClick(View view)
    {
        ayk ayk1 = (ayk)view.getTag();
        ayg.a(a, ayk1);
    }
}
