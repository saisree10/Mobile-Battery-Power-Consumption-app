// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Parcel;
import android.support.v4.app.FragmentState;

public final class aa
    implements android.os.Parcelable.Creator
{

    public aa()
    {
    }

    public FragmentState a(Parcel parcel)
    {
        return new FragmentState(parcel);
    }

    public FragmentState[] a(int i)
    {
        return new FragmentState[i];
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
