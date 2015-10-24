// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.batterytheme;

import android.content.Context;
import android.os.Message;
import android.util.AttributeSet;
import android.widget.ImageView;

public class CropMaskImage extends ImageView
{

    private Message a;
    private Message b;

    public CropMaskImage(Context context)
    {
        this(context, null);
    }

    public CropMaskImage(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public CropMaskImage(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        if (a != null)
        {
            b = Message.obtain(a);
            b.sendToTarget();
        }
        super.onSizeChanged(i, j, k, l);
    }

    public void setMessage(Message message)
    {
        a = message;
    }
}
