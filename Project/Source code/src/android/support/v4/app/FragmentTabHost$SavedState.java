// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import ab;
import ac;
import android.os.Parcel;
import android.os.Parcelable;

public class <init> extends android.view.avedState
{

    public static final android.os..SavedState.a CREATOR = new ac();
    String a;

    public String toString()
    {
        return (new StringBuilder()).append("FragmentTabHost.SavedState{").append(Integer.toHexString(System.identityHashCode(this))).append(" curTab=").append(a).append("}").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.Parcel(parcel, i);
        parcel.writeString(a);
    }


    private (Parcel parcel)
    {
        super(parcel);
        a = parcel.readString();
    }

    public a(Parcel parcel, ab ab)
    {
        this(parcel);
    }

    <init>(Parcelable parcelable)
    {
        super(parcelable);
    }
}
