// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.controller;

import android.os.Parcel;

public class rcelable extends rcelable
{

    public static final android.os.tract.Properties._cls1 CREATOR = new _cls1();
    public int backgroundColor;
    public float backgroundOpacity;
    public boolean isModal;
    public boolean lockOrientation;
    public boolean useBackground;
    public boolean useCustomClose;


    public _cls1()
    {
        useBackground = false;
        backgroundColor = 0;
        backgroundOpacity = 0.0F;
        isModal = false;
        lockOrientation = false;
        useCustomClose = false;
    }

    protected useCustomClose(Parcel parcel)
    {
        super(parcel);
    }

    class _cls1
        implements android.os.Parcelable.Creator
    {

        public Abstract.Properties createFromParcel(Parcel parcel)
        {
            return new Abstract.Properties(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Abstract.Properties[] newArray(int i)
        {
            return new Abstract.Properties[i];
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
