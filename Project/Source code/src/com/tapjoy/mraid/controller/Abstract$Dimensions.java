// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.controller;

import android.os.Parcel;

public class rcelable extends rcelable
{

    public static final android.os.tract.Dimensions._cls1 CREATOR = new _cls1();
    public int height;
    public int width;
    public int x;
    public int y;


    public _cls1()
    {
        x = -1;
        y = -1;
        width = -1;
        height = -1;
    }

    protected height(Parcel parcel)
    {
        super(parcel);
    }

    class _cls1
        implements android.os.Parcelable.Creator
    {

        public Abstract.Dimensions createFromParcel(Parcel parcel)
        {
            return new Abstract.Dimensions(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Abstract.Dimensions[] newArray(int i)
        {
            return new Abstract.Dimensions[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

            _cls1()
            {
            }
    }

}
