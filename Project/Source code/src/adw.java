// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.DialogInterface;
import com.dianxinos.powermanager.batterytheme.CropImageActivity;

public class adw
    implements android.content.DialogInterface.OnCancelListener
{

    final CropImageActivity a;

    public adw(CropImageActivity cropimageactivity)
    {
        a = cropimageactivity;
        super();
    }

    public void onCancel(DialogInterface dialoginterface)
    {
        CropImageActivity.d(a);
        a.finish();
    }
}
