// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Environment;
import java.io.File;

public interface kw
{

    public static final File a = new File(Environment.getExternalStorageDirectory(), ".cms/cache");
    public static final File b = new File(a, "img");

    public abstract kv a(String s);

    public abstract boolean a(String s, kv kv);

}
