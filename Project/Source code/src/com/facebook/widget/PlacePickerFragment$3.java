// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import com.facebook.FacebookException;
import com.facebook.LoggingBehavior;
import com.facebook.internal.Logger;

// Referenced classes of package com.facebook.widget:
//            PlacePickerFragment

class this._cls0
    implements Runnable
{

    final PlacePickerFragment this$0;

    public void run()
    {
        loadData(true);
        if (true) goto _L2; else goto _L1
_L1:
        Listener listener3 = getOnErrorListener();
        if (listener3 == null) goto _L4; else goto _L3
_L3:
        listener3.onError(PlacePickerFragment.this, null);
_L2:
        return;
_L4:
        Logger.log(LoggingBehavior.REQUESTS, "PlacePickerFragment", "Error loading data : %s", new Object[] {
            null
        });
        return;
        FacebookException facebookexception1;
        facebookexception1;
        if (facebookexception1 == null) goto _L2; else goto _L5
_L5:
        Listener listener2 = getOnErrorListener();
        if (listener2 != null)
        {
            listener2.onError(PlacePickerFragment.this, facebookexception1);
            return;
        } else
        {
            Logger.log(LoggingBehavior.REQUESTS, "PlacePickerFragment", "Error loading data : %s", new Object[] {
                facebookexception1
            });
            return;
        }
        Exception exception1;
        exception1;
        FacebookException facebookexception = new FacebookException(exception1);
        if (facebookexception == null) goto _L2; else goto _L6
_L6:
        Listener listener1 = getOnErrorListener();
        if (listener1 != null)
        {
            listener1.onError(PlacePickerFragment.this, facebookexception);
            return;
        } else
        {
            Logger.log(LoggingBehavior.REQUESTS, "PlacePickerFragment", "Error loading data : %s", new Object[] {
                facebookexception
            });
            return;
        }
        Exception exception;
        exception;
        if (false)
        {
            Listener listener = getOnErrorListener();
            if (listener != null)
            {
                listener.onError(PlacePickerFragment.this, null);
            } else
            {
                Logger.log(LoggingBehavior.REQUESTS, "PlacePickerFragment", "Error loading data : %s", new Object[] {
                    null
                });
            }
        }
        throw exception;
    }

    Listener()
    {
        this$0 = PlacePickerFragment.this;
        super();
    }
}
