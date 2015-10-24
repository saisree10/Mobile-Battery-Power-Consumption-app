// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ComponentName;
import android.os.IInterface;
import android.widget.RemoteViews;

public interface wa
    extends IInterface
{

    public abstract int a();

    public abstract void a(int i, RemoteViews remoteviews);

    public abstract void a(ComponentName componentname, int i, RemoteViews remoteviews);

    public abstract void a(ComponentName componentname, RemoteViews remoteviews);

    public abstract int[] a(ComponentName componentname);

    public abstract String b();
}
