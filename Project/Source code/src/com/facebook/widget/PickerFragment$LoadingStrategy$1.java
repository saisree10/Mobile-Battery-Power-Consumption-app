// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import ag;
import android.os.Bundle;
import ba;
import com.facebook.FacebookException;

// Referenced classes of package com.facebook.widget:
//            GraphObjectPagingLoader, SimpleGraphObjectCursor

class this._cls1
    implements ag
{

    final LoadReset this$1;

    public ba onCreateLoader(int i, Bundle bundle)
    {
        return CreateLoader();
    }

    public void onLoadFinished(ba ba, SimpleGraphObjectCursor simplegraphobjectcursor)
    {
        if (ba != ader)
        {
            throw new FacebookException("Received callback for unknown loader.");
        } else
        {
            LoadFinished((GraphObjectPagingLoader)ba, simplegraphobjectcursor);
            return;
        }
    }

    public volatile void onLoadFinished(ba ba, Object obj)
    {
        onLoadFinished(ba, (SimpleGraphObjectCursor)obj);
    }

    public void onLoaderReset(ba ba)
    {
        if (ba != ader)
        {
            throw new FacebookException("Received callback for unknown loader.");
        } else
        {
            LoadReset((GraphObjectPagingLoader)ba);
            return;
        }
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }
}
