// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.content.pm;

import android.os.IInterface;

// Referenced classes of package android.content.pm:
//            PackageStats

public interface IPackageStatsObserver
    extends IInterface
{

    public abstract void a(PackageStats packagestats, boolean flag);
}
