// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.DialogInterface;
import android.widget.VideoView;

// Referenced classes of package com.tapjoy:
//            TapjoyLog, TapjoyVideoView

class this._cls0
    implements android.content.CancelListener
{

    final TapjoyVideoView this$0;

    public void onCancel(DialogInterface dialoginterface)
    {
        TapjoyLog.i("VideoView", "dialog onCancel");
        dialoginterface.dismiss();
        TapjoyVideoView.access$600(TapjoyVideoView.this).seekTo(TapjoyVideoView.access$1200(TapjoyVideoView.this));
        TapjoyVideoView.access$600(TapjoyVideoView.this).start();
        TapjoyVideoView.access$1302(TapjoyVideoView.this, false);
    }

    ce()
    {
        this$0 = TapjoyVideoView.this;
        super();
    }
}
