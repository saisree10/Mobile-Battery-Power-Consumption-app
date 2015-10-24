// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.common.ui.fragment;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.reflect.Constructor;
import rc;
import rg;

public class TabInfo
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new rg();
    public boolean a;
    public rc b;
    public boolean c;
    public Class d;
    private int e;
    private int f;
    private String g;

    public TabInfo(int i, String s, int j, Class class1)
    {
        g = null;
        a = false;
        b = null;
        c = false;
        d = null;
        g = s;
        e = i;
        f = j;
        d = class1;
    }

    public TabInfo(int i, String s, Class class1)
    {
        this(i, s, 0, class1);
    }

    public TabInfo(Parcel parcel)
    {
        boolean flag = true;
        super();
        g = null;
        a = false;
        b = null;
        c = false;
        d = null;
        e = parcel.readInt();
        g = parcel.readString();
        f = parcel.readInt();
        if (parcel.readInt() != flag)
        {
            flag = false;
        }
        c = flag;
    }

    public String a()
    {
        return g;
    }

    public int b()
    {
        return f;
    }

    public rc c()
    {
        if (b == null)
        {
            try
            {
                b = (rc)d.getConstructor(new Class[0]).newInstance(new Object[0]);
                b.a = e;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }
        return b;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(e);
        parcel.writeString(g);
        parcel.writeInt(f);
        int j;
        if (c)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        parcel.writeInt(j);
    }

}
