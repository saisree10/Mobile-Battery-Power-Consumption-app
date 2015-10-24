// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import java.util.Comparator;

public class eq
    implements Comparator
{

    public eq()
    {
    }

    public int a(View view, View view1)
    {
        ej ej1 = (ej)view.getLayoutParams();
        ej ej2 = (ej)view1.getLayoutParams();
        if (ej1.a != ej2.a)
        {
            return !ej1.a ? -1 : 1;
        } else
        {
            return ej1.e - ej2.e;
        }
    }

    public int compare(Object obj, Object obj1)
    {
        return a((View)obj, (View)obj1);
    }
}
