// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import m;

public class a
    implements Parcelable
{

    public static final android.os..SavedState.a CREATOR = new m();
    final Bundle a;

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeBundle(a);
    }


    public (Parcel parcel, ClassLoader classloader)
    {
        a = parcel.readBundle();
        if (classloader != null && a != null)
        {
            a.setClassLoader(classloader);
        }
    }
}
