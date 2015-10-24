// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import java.util.Comparator;

public class are
    implements Comparator
{

    public are()
    {
    }

    public int a(View view, View view1)
    {
        aqx aqx1 = (aqx)view.getLayoutParams();
        aqx aqx2 = (aqx)view1.getLayoutParams();
        if (aqx1.a != aqx2.a)
        {
            return !aqx1.a ? -1 : 1;
        } else
        {
            return aqx1.e - aqx2.e;
        }
    }

    public int compare(Object obj, Object obj1)
    {
        return a((View)obj, (View)obj1);
    }
}
