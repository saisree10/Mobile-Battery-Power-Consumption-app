// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;

import android.media.MediaPlayer;
import com.tapjoy.TapjoyLog;

// Referenced classes of package com.tapjoy.mraid.view:
//            MraidView

class this._cls1
    implements android.media.CompletionListener
{

    final oViewCleanup this$1;

    public void onCompletion(MediaPlayer mediaplayer)
    {
        TapjoyLog.i("MRAIDView", "** ON COMPLETION **");
        videoViewCleanup();
    }

    onListener()
    {
        this$1 = this._cls1.this;
        super();
    }
}
