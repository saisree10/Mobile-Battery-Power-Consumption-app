// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.appsflyer;

import android.view.View;

// Referenced classes of package com.appsflyer:
//            AppsFlyerLib, AppsFlyerTestActivity

class 
    implements android.view.
{

    final AppsFlyerTestActivity a;

    public void onClick(View view)
    {
        AppsFlyerLib.a(a, null, "textEvent", "someValue");
    }
}
