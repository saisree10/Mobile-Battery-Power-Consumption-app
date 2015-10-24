// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import bci;
import bco;
import bcq;

// Referenced classes of package com.tapjoy:
//            TapjoyConnectCore, TapjoyLog

class this._cls0
    implements bci
{

    final TapjoyConnectCore this$0;

    public void complete()
    {
        if (TapjoyConnectCore.access$000(TapjoyConnectCore.this).b() == bcq.b)
        {
            TapjoyConnectCore.access$102(TapjoyConnectCore.access$000(TapjoyConnectCore.this).a());
            return;
        }
        try
        {
            TapjoyLog.w("TapjoyConnect", "No Threatmetrix session ID");
            return;
        }
        catch (Exception exception)
        {
            TapjoyLog.w("TapjoyConnect", (new StringBuilder()).append("Error retrieving Threatmetrix session ID: ").append(exception.toString()).toString());
        }
        return;
    }

    ()
    {
        this$0 = TapjoyConnectCore.this;
        super();
    }
}
