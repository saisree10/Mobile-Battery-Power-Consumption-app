// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.View;
import android.widget.ArrayAdapter;

class pm
    implements android.view.View.OnClickListener
{

    private ou a;
    private ArrayAdapter b;
    private Context c;

    public pm(Context context, ArrayAdapter arrayadapter)
    {
        c = context;
        b = arrayadapter;
    }

    public void a(ou ou)
    {
        a = ou;
    }

    public void onClick(View view)
    {
        pf.m(c);
        b.remove(a);
    }
}
