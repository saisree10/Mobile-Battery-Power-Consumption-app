// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.appsflyer;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;

// Referenced classes of package com.appsflyer:
//            AppsFlyerTestActivity, DebugLogQueue

class 
    implements Runnable
{

    final AppsFlyerTestActivity a;
    private WeakReference b;

    public void run()
    {
        SimpleDateFormat simpledateformat;
        simpledateformat = new SimpleDateFormat("HH:mm:ss SSS");
        if ((Context)b.get() == null)
        {
            break MISSING_BLOCK_LABEL_137;
        }
        TextView textview = (TextView)a.findViewById(0x7f050003);
        if (textview == null)
        {
            break MISSING_BLOCK_LABEL_138;
        }
_L1:
          = DebugLogQueue.a().b();
        if ( == null)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        textview.append((new StringBuilder()).append("\n").append(simpledateformat.format(new Date(.ById()))).toString());
        textview.append((new StringBuilder()).append(":  ").append(.ById()).toString());
          goto _L1
        Exception exception;
        exception;
        Log.e("AppsFlyerTestActivity", exception.getMessage(), exception);
        return;
        AppsFlyerTestActivity.access$100(a).postDelayed(this, 1000L);
        return;
    }
}
