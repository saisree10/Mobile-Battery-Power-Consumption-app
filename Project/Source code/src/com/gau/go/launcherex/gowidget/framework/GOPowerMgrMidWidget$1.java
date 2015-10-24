// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.gau.go.launcherex.gowidget.framework;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.gau.go.launcherex.gowidget.framework:
//            GOPowerMgrMidWidget

class this._cls0 extends BroadcastReceiver
{

    final GOPowerMgrMidWidget this$0;

    public void onReceive(Context context, Intent intent)
    {
        if (intent.getAction().equals("broadcast_actiono_refresh_go_widget"))
        {
            GOPowerMgrMidWidget.access$000(GOPowerMgrMidWidget.this, intent);
        }
    }

    ()
    {
        this$0 = GOPowerMgrMidWidget.this;
        super();
    }
}
