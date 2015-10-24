// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.net.Uri;
import android.provider.BaseColumns;

public final class vj
    implements BaseColumns
{

    public static final Uri a;

    static 
    {
        a = Uri.parse((new StringBuilder()).append("content://").append(vh.a).append("/hottopics").toString());
    }
}
