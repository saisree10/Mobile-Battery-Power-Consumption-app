// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import com.facebook.LoggingBehavior;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.facebook.internal:
//            FileLruCache, Logger

final class 
{

    private static final int HEADER_VERSION;

    static JSONObject readHeader(InputStream inputstream)
    {
        JSONTokener jsontokener;
        int i = 0;
        if (inputstream.read() != 0)
        {
            return null;
        }
        int j = 0;
        int k = 0;
        for (; j < 3; j++)
        {
            int i1 = inputstream.read();
            if (i1 == -1)
            {
                Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, "readHeader: stream.read returned -1 while reading header size");
                return null;
            }
            k = (k << 8) + (i1 & 0xff);
        }

        byte abyte0[];
        int l;
        for (abyte0 = new byte[k]; i < abyte0.length; i += l)
        {
            l = inputstream.read(abyte0, i, abyte0.length - i);
            if (l < 1)
            {
                Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, (new StringBuilder()).append("readHeader: stream.read stopped at ").append(Integer.valueOf(i)).append(" when expected ").append(abyte0.length).toString());
                return null;
            }
        }

        jsontokener = new JSONTokener(new String(abyte0));
        Object obj;
        obj = jsontokener.nextValue();
        if (obj instanceof JSONObject)
        {
            break MISSING_BLOCK_LABEL_217;
        }
        Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, (new StringBuilder()).append("readHeader: expected JSONObject, got ").append(obj.getClass().getCanonicalName()).toString());
        return null;
        JSONObject jsonobject;
        try
        {
            jsonobject = (JSONObject)obj;
        }
        catch (JSONException jsonexception)
        {
            throw new IOException(jsonexception.getMessage());
        }
        return jsonobject;
    }

    static void writeHeader(OutputStream outputstream, JSONObject jsonobject)
    {
        byte abyte0[] = jsonobject.toString().getBytes();
        outputstream.write(0);
        outputstream.write(0xff & abyte0.length >> 16);
        outputstream.write(0xff & abyte0.length >> 8);
        outputstream.write(0xff & abyte0.length >> 0);
        outputstream.write(abyte0);
    }

    private ()
    {
    }
}
