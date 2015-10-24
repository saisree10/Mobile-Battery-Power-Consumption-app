// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.controller;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.Environment;
import android.os.StatFs;
import android.util.Log;
import com.tapjoy.TapjoyLog;
import com.tapjoy.mraid.view.MraidView;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.jar.JarFile;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.ByteArrayBuffer;

// Referenced classes of package com.tapjoy.mraid.controller:
//            Abstract

public class Assets extends Abstract
{

    private static final char HEX_CHARS[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'a', 'b', 'c', 'd', 'e', 'f'
    };
    private static final String TAG = "MRAID Assets";
    private int imageNameCounter;

    public Assets(MraidView mraidview, Context context)
    {
        super(mraidview, context);
        imageNameCounter = 0;
    }

    private String asHex(MessageDigest messagedigest)
    {
        int i = 0;
        byte abyte0[] = messagedigest.digest();
        char ac[] = new char[2 * abyte0.length];
        for (int j = 0; j < abyte0.length; j++)
        {
            int k = i + 1;
            ac[i] = HEX_CHARS[0xf & abyte0[j] >>> 4];
            i = k + 1;
            ac[k] = HEX_CHARS[0xf & abyte0[j]];
        }

        return new String(ac);
    }

    private boolean contains(StringBuffer stringbuffer, String s)
    {
        int i = stringbuffer.indexOf(s);
        if (i >= 0)
        {
            return true;
        }
        break MISSING_BLOCK_LABEL_39;
        Exception exception;
        exception;
        TapjoyLog.d("contains", (new StringBuilder()).append("html file does not contain ").append(s).toString());
        return false;
    }

    public static boolean deleteDirectory(File file)
    {
        if (file.exists())
        {
            File afile[] = file.listFiles();
            int i = 0;
            while (i < afile.length) 
            {
                if (afile[i].isDirectory())
                {
                    deleteDirectory(afile[i]);
                } else
                {
                    afile[i].delete();
                }
                i++;
            }
        }
        return file.delete();
    }

    public static boolean deleteDirectory(String s)
    {
        if (s != null)
        {
            return deleteDirectory(new File(s));
        } else
        {
            return false;
        }
    }

    private File getAssetDir(String s)
    {
        File file = mContext.getFilesDir();
        return new File((new StringBuilder()).append(file.getPath()).append(File.separator).append(s).toString());
    }

    private String getAssetName(String s)
    {
        if (s.lastIndexOf(File.separatorChar) >= 0)
        {
            s = s.substring(1 + s.lastIndexOf(File.separatorChar));
        }
        return s;
    }

    private String getAssetPath(String s)
    {
        int i = s.lastIndexOf(File.separatorChar);
        String s1 = "/";
        if (i >= 0)
        {
            s1 = s.substring(0, s.lastIndexOf(File.separatorChar));
        }
        return s1;
    }

    private String getFilesDir()
    {
        return mContext.getFilesDir().getPath();
    }

    private HttpEntity getHttpEntity(String s)
    {
        HttpEntity httpentity;
        try
        {
            httpentity = (new DefaultHttpClient()).execute(new HttpGet(s)).getEntity();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        return httpentity;
    }

    private String moveToAdDirectory(String s, String s1, String s2)
    {
        File file = new File((new StringBuilder()).append(s1).append(File.separator).append(s).toString());
        (new File((new StringBuilder()).append(s1).append(File.separator).append("ad").toString())).mkdir();
        File file1 = new File((new StringBuilder()).append(s1).append(File.separator).append("ad").append(File.separator).append(s2).toString());
        file1.mkdir();
        file.renameTo(new File(file1, file.getName()));
        return (new StringBuilder()).append(file1.getPath()).append(File.separator).toString();
    }

    private void replace(StringBuffer stringbuffer, String s, String s1)
    {
        int i = stringbuffer.indexOf(s);
        TapjoyLog.d("replace ", s1);
        stringbuffer.replace(i, i + s.length(), (new StringBuilder()).append("file://").append(s1).toString());
    }

    public void addAsset(String s, String s1)
    {
        HttpEntity httpentity;
        InputStream inputstream;
        httpentity = getHttpEntity(s1);
        inputstream = null;
        inputstream = httpentity.getContent();
        writeToDisk(inputstream, s, false);
        String s2 = (new StringBuilder()).append("MraidAdController.addedAsset('").append(s).append("' )").toString();
        mMraidView.injectMraidJavaScript(s2);
        Exception exception;
        Exception exception2;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (Exception exception5) { }
        }
        try
        {
            httpentity.consumeContent();
            return;
        }
        catch (Exception exception4)
        {
            exception4.printStackTrace();
        }
        break MISSING_BLOCK_LABEL_125;
        exception2;
        exception2.printStackTrace();
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (Exception exception3) { }
        }
        break MISSING_BLOCK_LABEL_71;
        exception;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (Exception exception1) { }
        }
        throw exception;
    }

    public int cacheRemaining()
    {
        StatFs statfs = new StatFs(mContext.getFilesDir().getPath());
        return statfs.getFreeBlocks() * statfs.getBlockSize();
    }

    public String copyTextFromJarIntoAssetDir(String s, String s1)
    {
        URL url = com/tapjoy/mraid/controller/Assets.getClassLoader().getResource(s1);
        if (url != null) goto _L2; else goto _L1
_L1:
        InputStream inputstream1 = mContext.getAssets().open(s1);
        InputStream inputstream = inputstream1;
_L3:
        String s3 = writeToDisk(inputstream, s, false);
        Exception exception1;
        Exception exception3;
        String s2 = s3;
        Exception exception;
        Exception exception4;
        String s4;
        int i;
        JarFile jarfile;
        InputStream inputstream2;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (Exception exception5)
            {
                return s2;
            }
        }
        return s2;
_L2:
        s4 = url.getFile();
        if (s4.startsWith("jar:"))
        {
            s4 = s4.substring(4);
        }
        if (s4.startsWith("file:"))
        {
            s4 = s4.substring(5);
        }
        i = s4.indexOf("!");
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_130;
        }
        s4 = s4.substring(0, i);
        jarfile = new JarFile(s4);
        inputstream2 = jarfile.getInputStream(jarfile.getJarEntry(s1));
        inputstream = inputstream2;
          goto _L3
        exception3;
        inputstream = null;
_L7:
        TapjoyLog.e("MRAID Assets", (new StringBuilder()).append("copyTextFromJarIntoAssetDir: ").append(exception3.toString()).toString());
        s2 = null;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception4)
            {
                return null;
            }
            return null;
        } else
        {
            break MISSING_BLOCK_LABEL_57;
        }
        exception;
        inputstream = null;
        exception1 = exception;
_L5:
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (Exception exception2) { }
        }
        throw exception1;
        exception1;
        if (true) goto _L5; else goto _L4
_L4:
        exception3;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void deleteOldAds()
    {
        String s = getFilesDir();
        deleteDirectory(new File((new StringBuilder()).append(s).append(File.separator).append("ad").toString()));
    }

    public FileOutputStream getAssetOutputString(String s)
    {
        File file = getAssetDir(getAssetPath(s));
        file.mkdirs();
        return new FileOutputStream(new File(file, getAssetName(s)));
    }

    public String getAssetPath()
    {
        return (new StringBuilder()).append("file://").append(mContext.getFilesDir()).append("/").toString();
    }

    public void removeAsset(String s)
    {
        File file = getAssetDir(getAssetPath(s));
        file.mkdirs();
        (new File(file, getAssetName(s))).delete();
        String s1 = (new StringBuilder()).append("MraidAdController.assetRemoved('").append(s).append("' )").toString();
        mMraidView.injectMraidJavaScript(s1);
    }

    public void stopAllListeners()
    {
    }

    public void storePicture(String s)
    {
        TapjoyLog.d("MRAID Assets", (new StringBuilder()).append("Storing media from ").append(s).append(" to device photo album.  Output directory: ").append(Environment.getExternalStorageDirectory()).append(" state: ").append(Environment.getExternalStorageState()).toString());
        imageNameCounter = 1 + imageNameCounter;
        File file;
        long l;
        BufferedInputStream bufferedinputstream;
        ByteArrayBuffer bytearraybuffer;
        URL url = new URL(s);
        String s1 = (new StringBuilder()).append("MraidMedia").append(imageNameCounter).append(".jpg").toString();
        file = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory().toString()).append("/").append(s1).toString());
        l = System.currentTimeMillis();
        Log.d("MRAID Assets", "download beginning");
        Log.d("MRAID Assets", (new StringBuilder()).append("download url:").append(url).toString());
        Log.d("MRAID Assets", (new StringBuilder()).append("downloaded file name:").append(s1).toString());
        bufferedinputstream = new BufferedInputStream(url.openConnection().getInputStream());
        bytearraybuffer = new ByteArrayBuffer(50);
_L1:
        int i = bufferedinputstream.read();
label0:
        {
            if (i == -1)
            {
                break label0;
            }
            try
            {
                bytearraybuffer.append((byte)i);
            }
            catch (IOException ioexception)
            {
                Log.d("MRAID Assets", (new StringBuilder()).append("Error: ").append(ioexception).toString());
                return;
            }
        }
          goto _L1
        FileOutputStream fileoutputstream = new FileOutputStream(file);
        fileoutputstream.write(bytearraybuffer.toByteArray());
        fileoutputstream.close();
        Log.d("MRAID Assets", (new StringBuilder()).append("download ready in").append((System.currentTimeMillis() - l) / 1000L).append(" sec").toString());
        return;
    }

    public void storePictureInit(final String uri)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(mContext);
        builder.setMessage((new StringBuilder()).append("Are you sure you want to save file from ").append(uri).append(" to your SD card?").toString());
        builder.setCancelable(false);
        builder.setPositiveButton("Yes", new _cls1());
        builder.setNegativeButton("No", null);
        builder.show();
    }

    public String writeToDisk(InputStream inputstream, String s, boolean flag)
    {
        FileOutputStream fileoutputstream;
        int i;
        byte abyte0[];
        fileoutputstream = null;
        i = 0;
        abyte0 = new byte[1024];
        if (!flag) goto _L2; else goto _L1
_L1:
        MessageDigest messagedigest1 = MessageDigest.getInstance("MD5");
        MessageDigest messagedigest = messagedigest1;
_L7:
        fileoutputstream = getAssetOutputString(s);
_L5:
        int j = inputstream.read(abyte0);
        if (j > 0) goto _L4; else goto _L3
_L3:
        fileoutputstream.flush();
        Exception exception;
        String s1;
        String s2;
        NoSuchAlgorithmException nosuchalgorithmexception;
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
            }
            catch (Exception exception2) { }
        }
        s1 = getFilesDir();
        Exception exception1;
        if (flag && messagedigest != null)
        {
            s2 = moveToAdDirectory(s, s1, asHex(messagedigest));
        } else
        {
            s2 = s1;
        }
        return (new StringBuilder()).append(s2).append(s).toString();
        nosuchalgorithmexception;
        nosuchalgorithmexception.printStackTrace();
_L2:
        messagedigest = null;
        continue; /* Loop/switch isn't completed */
_L4:
        if (!flag || messagedigest == null)
        {
            break MISSING_BLOCK_LABEL_143;
        }
        messagedigest.update(abyte0);
        fileoutputstream.write(abyte0, 0, j);
        i++;
          goto _L5
        exception;
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception1) { }
        }
        throw exception;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public String writeToDiskWrap(InputStream inputstream, String s, boolean flag, String s1, String s2)
    {
        FileOutputStream fileoutputstream;
        byte abyte0[];
        fileoutputstream = null;
        abyte0 = new byte[1024];
        if (!flag) goto _L2; else goto _L1
_L1:
        MessageDigest messagedigest1 = MessageDigest.getInstance("MD5");
        MessageDigest messagedigest = messagedigest1;
_L9:
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
_L10:
        int i = inputstream.read(abyte0);
        fileoutputstream = null;
        if (i > 0) goto _L4; else goto _L3
_L3:
        String s3;
        int j;
        s3 = bytearrayoutputstream.toString();
        j = s3.indexOf("</html>");
        boolean flag1;
        flag1 = false;
        if (j >= 0)
        {
            flag1 = true;
        }
        StringBuffer stringbuffer = new StringBuffer(s3);
        if (!flag1) goto _L6; else goto _L5
_L5:
        if (!contains(stringbuffer, "mraid.js")) goto _L8; else goto _L7
_L7:
        replace(stringbuffer, "mraid.js", s2);
_L6:
        fileoutputstream = getAssetOutputString(s);
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_279;
        }
        fileoutputstream.write("<html>".getBytes());
        fileoutputstream.write("<head>".getBytes());
        fileoutputstream.write("<meta name='viewport' content='user-scalable=no initial-scale=1.0' />".getBytes());
        fileoutputstream.write("<title>Advertisement</title> ".getBytes());
        fileoutputstream.write((new StringBuilder()).append("<script src=\"file://").append(s2).append("\" type=\"text/javascript\"></script>").toString().getBytes());
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_246;
        }
        fileoutputstream.write("<script type=\"text/javascript\">".getBytes());
        fileoutputstream.write(s1.getBytes());
        fileoutputstream.write("</script>".getBytes());
        fileoutputstream.write("</head>".getBytes());
        fileoutputstream.write("<body style=\"margin:0; padding:0; overflow:hidden; background-color:transparent;\">".getBytes());
        fileoutputstream.write("<div align=\"center\"> ".getBytes());
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_505;
        }
        fileoutputstream.write(bytearrayoutputstream.toByteArray());
_L14:
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_332;
        }
        fileoutputstream.write("</div> ".getBytes());
        fileoutputstream.write("</body> ".getBytes());
        fileoutputstream.write("</html> ".getBytes());
        fileoutputstream.flush();
        Exception exception;
        String s4;
        NoSuchAlgorithmException nosuchalgorithmexception;
        if (bytearrayoutputstream != null)
        {
            try
            {
                bytearrayoutputstream.close();
            }
            catch (Exception exception4) { }
        }
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
            }
            catch (Exception exception3) { }
        }
        s4 = getFilesDir();
        Exception exception1;
        Exception exception2;
        if (flag && messagedigest != null)
        {
            return moveToAdDirectory(s, s4, asHex(messagedigest));
        } else
        {
            return s4;
        }
        nosuchalgorithmexception;
        nosuchalgorithmexception.printStackTrace();
_L2:
        messagedigest = null;
          goto _L9
_L4:
        if (!flag || messagedigest == null)
        {
            break MISSING_BLOCK_LABEL_415;
        }
        messagedigest.update(abyte0);
        bytearrayoutputstream.write(abyte0, 0, i);
          goto _L10
        exception;
        if (bytearrayoutputstream != null)
        {
            try
            {
                bytearrayoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception2) { }
        }
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception1) { }
        }
        throw exception;
_L8:
        if (!contains(stringbuffer, "ormma.js")) goto _L12; else goto _L11
_L11:
        replace(stringbuffer, "ormma.js", s2);
          goto _L6
_L12:
        if (!contains(stringbuffer, "ormma_bridge.js")) goto _L6; else goto _L13
_L13:
        replace(stringbuffer, "ormma_bridge.js", s2);
          goto _L6
        fileoutputstream.write(stringbuffer.toString().getBytes());
          goto _L14
    }


    private class _cls1
        implements android.content.DialogInterface.OnClickListener
    {

        final Assets this$0;
        final String val$uri;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            storePicture(uri);
        }

        _cls1()
        {
            this$0 = Assets.this;
            uri = s;
            super();
        }
    }

}
