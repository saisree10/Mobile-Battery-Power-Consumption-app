// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;

import android.webkit.URLUtil;

// Referenced classes of package com.tapjoy.mraid.view:
//            MraidView

class val.url
    implements Runnable
{

    final MraidView this$0;
    final String val$url;

    public void run()
    {
        if (URLUtil.isValidUrl(val$url))
        {
            if (val$url.startsWith("javascript"))
            {
                MraidView.access$001(MraidView.this, val$url);
                return;
            } else
            {
                aidHTTPTask aidhttptask = new aidHTTPTask(MraidView.this, null);
                String as[] = new String[1];
                as[0] = val$url;
                aidhttptask.execute(as);
                return;
            }
        } else
        {
            loadDataWithBaseURL(null, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\"><html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"><title>Connection not Established</title></head><h2>Connection Not Properly Established</h2><body></body></html>", "text/html", "utf-8", null);
            return;
        }
    }

    aidHTTPTask()
    {
        this$0 = final_mraidview;
        val$url = String.this;
        super();
    }
}
