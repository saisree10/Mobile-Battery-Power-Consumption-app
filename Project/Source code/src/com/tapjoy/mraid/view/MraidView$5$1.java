// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;

import android.media.MediaPlayer;
import com.tapjoy.TapjoyLog;

class this._cls1
    implements android.media.PreparedListener
{

    final Listener this$1;

    public void onPrepared(MediaPlayer mediaplayer)
    {
        TapjoyLog.i("MRAIDView", "** ON PREPARED **");
        TapjoyLog.i("MRAIDView", (new StringBuilder()).append("isPlaying: ").append(mediaplayer.isPlaying()).toString());
        if (!mediaplayer.isPlaying())
        {
            mediaplayer.start();
        }
    }

    Listener()
    {
        this$1 = this._cls1.this;
        super();
    }
}
