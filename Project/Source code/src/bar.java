// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Build;
import android.view.View;

public class bar
{

    private static float a(int i, float f)
    {
        return f * (float)i;
    }

    public static void a(View view)
    {
        android.view.ViewGroup.LayoutParams layoutparams = view.getLayoutParams();
        if (layoutparams instanceof android.widget.RelativeLayout.LayoutParams)
        {
            android.widget.RelativeLayout.LayoutParams layoutparams2 = (android.widget.RelativeLayout.LayoutParams)layoutparams;
            layoutparams2.bottomMargin = (int)a(layoutparams2.bottomMargin, 0.925F);
            layoutparams2.topMargin = (int)a(layoutparams2.topMargin, 0.925F);
            layoutparams2.height = (int)a(layoutparams2.height, 0.925F);
            a((new StringBuilder()).append("height:").append(layoutparams2.height).toString());
            view.setLayoutParams(layoutparams2);
        } else
        if (layoutparams instanceof android.widget.LinearLayout.LayoutParams)
        {
            android.widget.LinearLayout.LayoutParams layoutparams1 = (android.widget.LinearLayout.LayoutParams)layoutparams;
            layoutparams1.bottomMargin = (int)a(layoutparams1.bottomMargin, 0.925F);
            layoutparams1.topMargin = (int)a(layoutparams1.topMargin, 0.925F);
            layoutparams1.height = (int)a(layoutparams1.height, 0.925F);
            a((new StringBuilder()).append("height:").append(layoutparams1.height).toString());
            view.setLayoutParams(layoutparams1);
            return;
        }
    }

    private static void a(String s)
    {
    }

    public static boolean a()
    {
        return Build.MODEL != null && Build.MODEL.equals("Galaxy Nexus");
    }
}
