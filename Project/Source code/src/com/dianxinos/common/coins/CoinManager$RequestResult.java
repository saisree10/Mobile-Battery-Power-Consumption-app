// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.common.coins;

import android.os.Parcel;
import android.os.Parcelable;
import mb;
import md;
import org.json.JSONObject;

public class <init>
    implements Parcelable
{

    public static final android.os.r.RequestResult.g CREATOR = new md();
    public int a;
    public int b;
    public int c;
    public int d;
    public String e;
    public String f;
    public int g;

    public static <init> a(String s)
    {
        JSONObject jsonobject = new JSONObject(s);
        <init> <init>1 = new <init>(jsonobject.optString("mid"), jsonobject.optString("type"));
        <init>1.a = jsonobject.optInt("total");
        <init>1.b = jsonobject.optInt("midscore");
        <init>1.c = jsonobject.optInt("status");
        <init>1.d = jsonobject.optInt("integalmax");
        <init>1.g = jsonobject.optInt("midpayscore");
        return <init>1;
    }

    public boolean a()
    {
        return c == 200 || c == 201;
    }

    public boolean b()
    {
        return c == 200 || c == 201 || c == 420;
    }

    public boolean c()
    {
        return c == 200 || c == 410 || c == 411 || c == 412;
    }

    public boolean d()
    {
        return c == 200 || c == 410 || c == 411 || c == 412;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(a);
        parcel.writeInt(b);
        parcel.writeInt(c);
        parcel.writeInt(d);
        parcel.writeString(e);
        parcel.writeString(f);
        parcel.writeInt(g);
    }


    private (Parcel parcel)
    {
        a = -1;
        a = parcel.readInt();
        b = parcel.readInt();
        c = parcel.readInt();
        d = parcel.readInt();
        e = parcel.readString();
        f = parcel.readString();
        g = parcel.readInt();
    }

    public g(Parcel parcel, mb mb)
    {
        this(parcel);
    }

    private <init>(String s, String s1)
    {
        a = -1;
        if (s == null)
        {
            s = "";
        }
        e = s;
        if (s1 == null)
        {
            s1 = "";
        }
        f = s1;
    }

    f(String s, String s1, mb mb)
    {
        this(s, s1);
    }
}
