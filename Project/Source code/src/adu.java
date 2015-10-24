// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import com.dianxinos.powermanager.batterytheme.CropImageActivity;

public class adu
    implements ads
{

    final adp a;
    final CropImageActivity b;

    public adu(CropImageActivity cropimageactivity, adp adp1)
    {
        b = cropimageactivity;
        a = adp1;
        super();
    }

    public void a(boolean flag, int i)
    {
        if (flag)
        {
            a.a("ct_");
            a.a(i);
            CropImageActivity.b(b).sendEmptyMessage(2);
            return;
        } else
        {
            CropImageActivity.b(b).sendEmptyMessage(1);
            return;
        }
    }
}
