// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.widget.Toast;
import com.facebook.Response;
import com.facebook.Session;

class adl
    implements com.facebook.Request.Callback
{

    final Session a;
    final adi b;

    adl(adi adi1, Session session)
    {
        b = adi1;
        a = session;
        super();
    }

    public void onCompleted(Response response)
    {
        b.b();
        if (response.getError() == null)
        {
            b.dismiss();
            android.app.Activity activity1 = adi.c(b);
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            Toast.makeText(activity1, 0x7f0a02b7, 0).show();
        } else
        {
            android.app.Activity activity = adi.c(b);
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            Toast.makeText(activity, 0x7f0a02b8, 0).show();
        }
        a.closeAndClearTokenInformation();
    }
}
