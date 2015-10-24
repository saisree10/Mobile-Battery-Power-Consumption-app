// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;

import android.app.Activity;
import android.widget.VideoView;

// Referenced classes of package com.tapjoy.mraid.view:
//            MraidView

class this._cls0
    implements Runnable
{

    final MraidView this$0;

    public void run()
    {
        int i = 0;
_L2:
        if (MraidView.access$1600(MraidView.this) == null || MraidView.access$1600(MraidView.this).isPlaying())
        {
            break MISSING_BLOCK_LABEL_41;
        }
        Thread.sleep(50L);
        if ((i += 50) < 10000)
        {
            continue; /* Loop/switch isn't completed */
        }
        class _cls1
            implements Runnable
        {

            final MraidView.VideoLoadingThread this$1;

            public void run()
            {
                if (MraidView.access$1800(this$0) != null)
                {
                    MraidView.access$1800(this$0).setVisibility(8);
                }
                class VideoRunningThread
                    implements Runnable
                {

                    private boolean playing;
                    final MraidView.VideoLoadingThread this$1;

                    public void run()
                    {
_L5:
                        if (MraidView.access$1600(this$0) == null) goto _L2; else goto _L1
_L1:
                        Thread.sleep(100L);
                        if (playing == MraidView.access$1600(this$0).isPlaying()) goto _L4; else goto _L3
_L3:
                        playing = MraidView.access$1600(this$0).isPlaying();
                        String s;
                        if (playing)
                        {
                            s = "videoplay";
                        } else
                        {
                            s = "videopause";
                        }
                        try
                        {
                            loadUrl((new StringBuilder()).append("javascript:try{Tapjoy.AdUnit.dispatchEvent('").append(s).append("')}catch(e){}").toString());
                        }
                        catch (Exception exception1) { }
_L4:
                        if (true) goto _L5; else goto _L2
_L2:
                    }

                        public VideoRunningThread()
                        {
                            this$1 = MraidView.VideoLoadingThread.this;
                            super();
                            playing = false;
                        }
                }

                (new Thread(new VideoRunningThread())).start();
            }

            _cls1()
            {
                this$1 = MraidView.VideoLoadingThread.this;
                super();
            }
        }

        ((Activity)MraidView.access$1500(MraidView.this)).runOnUiThread(new _cls1());
        return;
        Exception exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public _cls1()
    {
        this$0 = MraidView.this;
        super();
    }
}
