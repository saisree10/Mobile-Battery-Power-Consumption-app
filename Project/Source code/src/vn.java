// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.UriMatcher;
import android.net.Uri;

public class vn
{

    private static final UriMatcher a;

    public static vo a(Uri uri)
    {
        switch (a.match(uri))
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("Unknown URI ").append(uri).toString());

        case 1: // '\001'
            return new vs(false);

        case 2: // '\002'
            return new vs(true);

        case 101: // 'e'
            return new vr(false);

        case 102: // 'f'
            return new vr(true);

        case 1001: 
            return new vp(false);

        case 1002: 
            return new vp(true);

        case 10001: 
            return new vm(false);

        case 10002: 
            return new vm(true);

        case 100001: 
            return new vq(false);

        case 100002: 
            return new vq(true);
        }
    }

    public static String b(Uri uri)
    {
        switch (a.match(uri))
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("Unknown URI ").append(uri).toString());

        case 1: // '\001'
            return "vnd.android.cursor.dir/vnd.google.topics";

        case 2: // '\002'
            return "vnd.android.cursor.item/vnd.google.topic";

        case 101: // 'e'
            return "vnd.android.cursor.dir/vnd.google.replys";

        case 102: // 'f'
            return "vnd.android.cursor.item/vnd.google.replys";

        case 1001: 
            return "vnd.android.cursor.dir/vnd.google.hottopics";

        case 1002: 
            return "vnd.android.cursor.item/vnd.google.hottopic";

        case 10001: 
            return "vnd.android.cursor.dir/vnd.google.atts";

        case 10002: 
            return "vnd.android.cursor.item/vnd.google.att";

        case 100001: 
            return "vnd.android.cursor.dir/vnd.google.record";

        case 100002: 
            return "vnd.android.cursor.item/vnd.google.record";
        }
    }

    static 
    {
        a = new UriMatcher(-1);
        a.addURI(vh.a, "topics", 1);
        a.addURI(vh.a, "topics/*", 2);
        a.addURI(vh.a, "replys", 101);
        a.addURI(vh.a, "replys/*", 102);
        a.addURI(vh.a, "hottopics", 1001);
        a.addURI(vh.a, "hottopics/*", 1002);
        a.addURI(vh.a, "atts", 10001);
        a.addURI(vh.a, "atts/#", 10002);
        a.addURI(vh.a, "records", 0x186a1);
        a.addURI(vh.a, "records/#", 0x186a2);
    }
}
