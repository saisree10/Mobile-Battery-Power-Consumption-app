// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import y;

// Referenced classes of package android.support.v4.app:
//            FragmentState, BackStackState

public final class FragmentManagerState
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new y();
    public FragmentState a[];
    public int b[];
    public BackStackState c[];

    public FragmentManagerState()
    {
    }

    public FragmentManagerState(Parcel parcel)
    {
        a = (FragmentState[])parcel.createTypedArray(FragmentState.CREATOR);
        b = parcel.createIntArray();
        c = (BackStackState[])parcel.createTypedArray(BackStackState.CREATOR);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeTypedArray(a, i);
        parcel.writeIntArray(b);
        parcel.writeTypedArray(c, i);
    }

}
