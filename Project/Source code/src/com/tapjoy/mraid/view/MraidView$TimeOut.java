// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;

import com.tapjoy.TapjoyLog;
import java.util.TimerTask;

// Referenced classes of package com.tapjoy.mraid.view:
//            MraidView

class mCount extends TimerTask
{

    int mCount;
    int mProgress;
    final MraidView this$0;

    public void run()
    {
        int i = getProgress();
        if (i != 100) goto _L2; else goto _L1
_L1:
        cancel();
_L4:
        mProgress = i;
        return;
_L2:
        if (mProgress == i)
        {
            mCount = 1 + mCount;
            if (mCount == 3)
            {
                try
                {
                    stopLoading();
                }
                catch (Exception exception)
                {
                    TapjoyLog.w("MRAIDView", "error in stopLoading");
                    exception.printStackTrace();
                }
                cancel();
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    ()
    {
        this$0 = MraidView.this;
        super();
        mProgress = 0;
        mCount = 0;
    }
}
