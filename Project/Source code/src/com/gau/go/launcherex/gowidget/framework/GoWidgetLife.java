// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.gau.go.launcherex.gowidget.framework;

import android.os.Bundle;

public interface GoWidgetLife
{

    public abstract boolean onApplyTheme(Bundle bundle);

    public abstract void onDelete(int i);

    public abstract void onPause(int i);

    public abstract void onRemove(int i);

    public abstract void onResume(int i);

    public abstract void onStart(Bundle bundle);
}
