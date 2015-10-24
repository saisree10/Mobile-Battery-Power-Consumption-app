// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Parcel;
import android.support.v4.app.BackStackState;

public final class j
    implements android.os.Parcelable.Creator
{

    public j()
    {
    }

    public BackStackState a(Parcel parcel)
    {
        return new BackStackState(parcel);
    }

    public BackStackState[] a(int i)
    {
        return new BackStackState[i];
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
