// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Parcel;
import android.support.v4.app.FragmentManagerState;

public final class y
    implements android.os.Parcelable.Creator
{

    public y()
    {
    }

    public FragmentManagerState a(Parcel parcel)
    {
        return new FragmentManagerState(parcel);
    }

    public FragmentManagerState[] a(int i)
    {
        return new FragmentManagerState[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return a(parcel);
    }

    public Object[] newArray(int i)
    {
        return a(i);
    }
}
