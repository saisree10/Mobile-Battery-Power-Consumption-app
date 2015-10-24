// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.gau.go.launcherex.gowidget.framework;

import android.content.Context;
import android.content.ContextWrapper;

class DxContextWrapper extends ContextWrapper
{

    public DxContextWrapper(Context context)
    {
        super(context);
    }

    public Context getApplicationContext()
    {
        return this;
    }
}
