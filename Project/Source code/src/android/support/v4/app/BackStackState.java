// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import h;
import i;
import j;
import java.util.ArrayList;
import v;

// Referenced classes of package android.support.v4.app:
//            Fragment

public final class BackStackState
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new j();
    final int a[];
    final int b;
    final int c;
    final String d;
    final int e;
    final int f;
    final CharSequence g;
    final int h;
    final CharSequence i;

    public BackStackState(Parcel parcel)
    {
        a = parcel.createIntArray();
        b = parcel.readInt();
        c = parcel.readInt();
        d = parcel.readString();
        e = parcel.readInt();
        f = parcel.readInt();
        g = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        h = parcel.readInt();
        i = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
    }

    public BackStackState(v v1, h h1)
    {
        i k = h1.b;
        int l = 0;
        for (; k != null; k = k.a)
        {
            if (k.i != null)
            {
                l += k.i.size();
            }
        }

        a = new int[l + 7 * h1.d];
        if (!h1.k)
        {
            throw new IllegalStateException("Not on back stack");
        }
        i i1 = h1.b;
        int j1 = 0;
        while (i1 != null) 
        {
            int ai[] = a;
            int k1 = j1 + 1;
            ai[j1] = i1.c;
            int ai1[] = a;
            int l1 = k1 + 1;
            int i2;
            int ai2[];
            int j2;
            int ai3[];
            int k2;
            int ai4[];
            int l2;
            int ai5[];
            int i3;
            if (i1.d != null)
            {
                i2 = i1.d.mIndex;
            } else
            {
                i2 = -1;
            }
            ai1[k1] = i2;
            ai2 = a;
            j2 = l1 + 1;
            ai2[l1] = i1.e;
            ai3 = a;
            k2 = j2 + 1;
            ai3[j2] = i1.f;
            ai4 = a;
            l2 = k2 + 1;
            ai4[k2] = i1.g;
            ai5 = a;
            i3 = l2 + 1;
            ai5[l2] = i1.h;
            if (i1.i != null)
            {
                int j3 = i1.i.size();
                int ai7[] = a;
                int k3 = i3 + 1;
                ai7[i3] = j3;
                for (int l3 = 0; l3 < j3;)
                {
                    int ai8[] = a;
                    int i4 = k3 + 1;
                    ai8[k3] = ((Fragment)i1.i.get(l3)).mIndex;
                    l3++;
                    k3 = i4;
                }

                j1 = k3;
            } else
            {
                int ai6[] = a;
                j1 = i3 + 1;
                ai6[i3] = 0;
            }
            i1 = i1.a;
        }
        b = h1.i;
        c = h1.j;
        d = h1.m;
        e = h1.o;
        f = h1.p;
        g = h1.q;
        h = h1.r;
        i = h1.s;
    }

    public h a(v v1)
    {
        h h1 = new h(v1);
        int k = 0;
        int i3;
        for (int l = 0; l < a.length; l = i3)
        {
            i i1 = new i();
            int ai[] = a;
            int j1 = l + 1;
            i1.c = ai[l];
            if (v.a)
            {
                Log.v("FragmentManager", (new StringBuilder()).append("Instantiate ").append(h1).append(" op #").append(k).append(" base fragment #").append(a[j1]).toString());
            }
            int ai1[] = a;
            int k1 = j1 + 1;
            int l1 = ai1[j1];
            int ai2[];
            int i2;
            int ai3[];
            int j2;
            int ai4[];
            int k2;
            int ai5[];
            int l2;
            int ai6[];
            int j3;
            if (l1 >= 0)
            {
                i1.d = (Fragment)v1.f.get(l1);
            } else
            {
                i1.d = null;
            }
            ai2 = a;
            i2 = k1 + 1;
            i1.e = ai2[k1];
            ai3 = a;
            j2 = i2 + 1;
            i1.f = ai3[i2];
            ai4 = a;
            k2 = j2 + 1;
            i1.g = ai4[j2];
            ai5 = a;
            l2 = k2 + 1;
            i1.h = ai5[k2];
            ai6 = a;
            i3 = l2 + 1;
            j3 = ai6[l2];
            if (j3 > 0)
            {
                i1.i = new ArrayList(j3);
                for (int k3 = 0; k3 < j3;)
                {
                    if (v.a)
                    {
                        Log.v("FragmentManager", (new StringBuilder()).append("Instantiate ").append(h1).append(" set remove fragment #").append(a[i3]).toString());
                    }
                    ArrayList arraylist = v1.f;
                    int ai7[] = a;
                    int l3 = i3 + 1;
                    Fragment fragment = (Fragment)arraylist.get(ai7[i3]);
                    i1.i.add(fragment);
                    k3++;
                    i3 = l3;
                }

            }
            h1.a(i1);
            k++;
        }

        h1.i = b;
        h1.j = c;
        h1.m = d;
        h1.o = e;
        h1.k = true;
        h1.p = f;
        h1.q = g;
        h1.r = h;
        h1.s = i;
        h1.a(1);
        return h1;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int k)
    {
        parcel.writeIntArray(a);
        parcel.writeInt(b);
        parcel.writeInt(c);
        parcel.writeString(d);
        parcel.writeInt(e);
        parcel.writeInt(f);
        TextUtils.writeToParcel(g, parcel, 0);
        parcel.writeInt(h);
        TextUtils.writeToParcel(i, parcel, 0);
    }

}
