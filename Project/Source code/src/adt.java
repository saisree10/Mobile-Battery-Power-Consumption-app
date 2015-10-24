// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import android.widget.ImageView;
import com.dianxinos.powermanager.batterytheme.CropImageActivity;

public class adt extends Handler
{

    final CropImageActivity a;

    public adt(CropImageActivity cropimageactivity)
    {
        a = cropimageactivity;
        super();
    }

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 5: // '\005'
            CropImageActivity.a(a, CropImageActivity.a(a).getWidth());
            CropImageActivity.b(a, CropImageActivity.a(a).getHeight());
            CropImageActivity.c(a);
            return;

        case 3: // '\003'
            CropImageActivity.a(a, true);
            return;

        case 4: // '\004'
            CropImageActivity.a(a, false);
            return;

        case 2: // '\002'
            a.setResult(-1);
            a.finish();
            return;

        case 1: // '\001'
            a.setResult(2);
            a.finish();
            return;
        }
    }
}
