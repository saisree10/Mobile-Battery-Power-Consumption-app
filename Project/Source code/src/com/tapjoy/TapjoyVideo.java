// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Environment;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Set;
import java.util.Vector;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

// Referenced classes of package com.tapjoy:
//            TapjoyUtil, TapjoyConnectCore, TapjoyLog, TapjoyVideoObject, 
//            TapjoyURLConnection, TapjoyVideoNotifier, TapjoyVideoView

public class TapjoyVideo
{

    private static final String TAG = "TapjoyVideo";
    private static TapjoyVideo tapjoyVideo = null;
    private static TapjoyVideoNotifier tapjoyVideoNotifier;
    private static Bitmap watermarkImage;
    private static final String watermarkURL = "https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png";
    private boolean cache3g;
    private boolean cacheAuto;
    private boolean cacheWifi;
    private Hashtable cachedVideos;
    Context context;
    private String imageCacheDir;
    private boolean initialized;
    private Hashtable uncachedVideos;
    private String videoCacheDir;
    private int videoCacheLimit;
    private Vector videoQueue;
    private TapjoyVideoObject videoToPlay;

    public TapjoyVideo(Context context1)
    {
        videoCacheDir = null;
        imageCacheDir = null;
        videoCacheLimit = 5;
        cacheAuto = false;
        initialized = false;
        cacheWifi = false;
        cache3g = false;
        context = context1;
        tapjoyVideo = this;
        if (Environment.getExternalStorageDirectory() != null)
        {
            videoCacheDir = (new StringBuilder()).append(Environment.getExternalStorageDirectory().toString()).append("/tjcache/data/").toString();
            imageCacheDir = (new StringBuilder()).append(Environment.getExternalStorageDirectory().toString()).append("/tjcache/tmp/").toString();
            TapjoyUtil.deleteFileOrDirectory(new File((new StringBuilder()).append(Environment.getExternalStorageDirectory().toString()).append("/tapjoy/").toString()));
            TapjoyUtil.deleteFileOrDirectory(new File(imageCacheDir));
        }
        videoQueue = new Vector();
        uncachedVideos = new Hashtable();
        cachedVideos = new Hashtable();
        if (TapjoyConnectCore.getConnectFlagValue("video_cache_count") != null && TapjoyConnectCore.getConnectFlagValue("video_cache_count").length() > 0)
        {
            try
            {
                TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("Setting video cache count to: ").append(TapjoyConnectCore.getConnectFlagValue("video_cache_count")).toString());
                setVideoCacheCount(Integer.parseInt(TapjoyConnectCore.getConnectFlagValue("video_cache_count")));
            }
            catch (Exception exception)
            {
                TapjoyLog.e("TapjoyVideo", (new StringBuilder()).append("Error, invalid value for video_cache_count: ").append(TapjoyConnectCore.getConnectFlagValue("video_cache_count")).toString());
            }
        }
        init();
    }

    private void cacheVideoFromURL(String s)
    {
        File file;
        long l;
        file = null;
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("download and cache video from: ").append(s).toString());
        l = System.currentTimeMillis();
        BufferedInputStream bufferedinputstream1;
        URLConnection urlconnection = (new URL(s)).openConnection();
        urlconnection.setConnectTimeout(15000);
        urlconnection.setReadTimeout(30000);
        urlconnection.connect();
        bufferedinputstream1 = new BufferedInputStream(urlconnection.getInputStream());
        File file2;
        File file3 = new File(videoCacheDir);
        String s2 = s.substring(0, 1 + s.lastIndexOf("/"));
        String s3 = s.substring(1 + s.lastIndexOf("/"));
        String s4 = s3.substring(0, s3.indexOf('.'));
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("fileDir: ").append(file3).toString());
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("path: ").append(s2).toString());
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("file name: ").append(s4).toString());
        if (file3.mkdirs())
        {
            TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("created directory at: ").append(file3.getPath()).toString());
        }
        file2 = new File(videoCacheDir, s4);
        FileOutputStream fileoutputstream1 = new FileOutputStream(file2);
        byte abyte0[];
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("downloading video file to: ").append(file2.toString()).toString());
        abyte0 = new byte[1024];
_L3:
        int i = bufferedinputstream1.read(abyte0);
        if (i == -1) goto _L2; else goto _L1
_L1:
        fileoutputstream1.write(abyte0, 0, i);
          goto _L3
        SocketTimeoutException sockettimeoutexception;
        sockettimeoutexception;
        File file1;
        FileOutputStream fileoutputstream;
        BufferedInputStream bufferedinputstream;
        file1 = file2;
        fileoutputstream = fileoutputstream1;
        bufferedinputstream = bufferedinputstream1;
_L7:
        boolean flag;
        boolean flag1;
        TapjoyLog.e("TapjoyVideo", (new StringBuilder()).append("Network timeout: ").append(sockettimeoutexception.toString()).toString());
        fileoutputstream1 = fileoutputstream;
        bufferedinputstream1 = bufferedinputstream;
        flag = true;
        file2 = file1;
        flag1 = true;
_L4:
        Exception exception2;
        if (flag)
        {
            TapjoyLog.i("TapjoyVideo", "Network timeout");
            Exception exception;
            String s1;
            TapjoyVideoObject tapjoyvideoobject;
            long l1;
            try
            {
                bufferedinputstream1.close();
                fileoutputstream1.close();
            }
            catch (Exception exception1) { }
        }
        if (!flag && !flag1)
        {
            try
            {
                s1 = (String)videoQueue.elementAt(0);
                tapjoyvideoobject = (TapjoyVideoObject)uncachedVideos.get(s1);
                tapjoyvideoobject.dataLocation = file2.getAbsolutePath();
                cachedVideos.put(s1, tapjoyvideoobject);
                uncachedVideos.remove(s1);
                videoQueue.removeElementAt(0);
                setVideoIDs();
                TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("video cached in: ").append(System.currentTimeMillis() - l).append("ms").toString());
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                TapjoyLog.e("TapjoyVideo", (new StringBuilder()).append("error caching video ???: ").append(exception.toString()).toString());
            }
            return;
        } else
        {
            videoNotifierError(2);
            return;
        }
_L2:
        fileoutputstream1.close();
        bufferedinputstream1.close();
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("FILE SIZE: ").append(file2.length()).toString());
        l1 = file2.length();
        if (l1 == 0L)
        {
            flag = true;
            flag1 = false;
        } else
        {
            flag = false;
            flag1 = false;
        }
          goto _L4
        exception2;
        fileoutputstream1 = null;
        bufferedinputstream1 = null;
_L5:
        TapjoyLog.e("TapjoyVideo", (new StringBuilder()).append("Error caching video file: ").append(exception2.toString()).toString());
        file2 = file;
        flag1 = true;
        flag = false;
          goto _L4
        exception2;
        file = null;
        fileoutputstream1 = null;
          goto _L5
        exception2;
        file = file2;
        fileoutputstream1 = null;
          goto _L5
        exception2;
        file = file2;
          goto _L5
        sockettimeoutexception;
        file1 = null;
        fileoutputstream = null;
        bufferedinputstream = null;
        continue; /* Loop/switch isn't completed */
        sockettimeoutexception;
        bufferedinputstream = bufferedinputstream1;
        file1 = null;
        fileoutputstream = null;
        continue; /* Loop/switch isn't completed */
        sockettimeoutexception;
        file1 = file2;
        bufferedinputstream = bufferedinputstream1;
        fileoutputstream = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static TapjoyVideo getInstance()
    {
        return tapjoyVideo;
    }

    public static Bitmap getWatermarkImage()
    {
        return watermarkImage;
    }

    private boolean handleGetVideosResponse(String s)
    {
        int i;
        TapjoyVideoObject tapjoyvideoobject;
        int j;
        String s8;
        String s9;
        int k;
        String s10;
        String s11;
        DocumentBuilderFactory documentbuilderfactory = DocumentBuilderFactory.newInstance();
        TapjoyLog.i("TapjoyVideo", "========================================");
        NodeList nodelist1;
        Node node;
        Element element;
        String s1;
        String s2;
        String s3;
        String s4;
        String s5;
        String s6;
        String s7;
        NodeList nodelist2;
        NodeList nodelist3;
        String s12;
        String s13;
        String s14;
        try
        {
            ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(s.getBytes("UTF-8"));
            Document document = documentbuilderfactory.newDocumentBuilder().parse(bytearrayinputstream);
            document.getDocumentElement().normalize();
            NodeList nodelist = document.getElementsByTagName("TapjoyVideos");
            nodelist1 = nodelist.item(0).getChildNodes();
            NamedNodeMap namednodemap = nodelist.item(0).getAttributes();
            if (namednodemap.getNamedItem("cache_auto") != null && namednodemap.getNamedItem("cache_auto").getNodeValue() != null)
            {
                cacheAuto = Boolean.valueOf(namednodemap.getNamedItem("cache_auto").getNodeValue()).booleanValue();
            }
            if (namednodemap.getNamedItem("cache_wifi") != null && namednodemap.getNamedItem("cache_wifi").getNodeValue() != null)
            {
                cacheWifi = Boolean.valueOf(namednodemap.getNamedItem("cache_wifi").getNodeValue()).booleanValue();
            }
            if (namednodemap.getNamedItem("cache_mobile") != null && namednodemap.getNamedItem("cache_mobile").getNodeValue() != null)
            {
                cache3g = Boolean.valueOf(namednodemap.getNamedItem("cache_mobile").getNodeValue()).booleanValue();
            }
            TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("cacheAuto: ").append(cacheAuto).toString());
            TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("cacheWifi: ").append(cacheWifi).toString());
            TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("cache3g: ").append(cache3g).toString());
            TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("nodelistParent length: ").append(nodelist.getLength()).toString());
            TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("nodelist length: ").append(nodelist1.getLength()).toString());
        }
        catch (Exception exception)
        {
            TapjoyLog.e("TapjoyVideo", (new StringBuilder()).append("Error parsing XML: ").append(exception.toString()).toString());
            return false;
        }
        i = 0;
_L17:
        if (i >= nodelist1.getLength()) goto _L2; else goto _L1
_L1:
        node = nodelist1.item(i);
        tapjoyvideoobject = new TapjoyVideoObject();
        if (node == null) goto _L4; else goto _L3
_L3:
        if (node.getNodeType() != 1) goto _L4; else goto _L5
_L5:
        element = (Element)node;
        s1 = TapjoyUtil.getNodeTrimValue(element.getElementsByTagName("ClickURL"));
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_501;
        }
        if (!s1.equals(""))
        {
            tapjoyvideoobject.clickURL = s1;
        }
        s2 = TapjoyUtil.getNodeTrimValue(element.getElementsByTagName("OfferID"));
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_539;
        }
        if (!s2.equals(""))
        {
            tapjoyvideoobject.offerID = s2;
        }
        s3 = TapjoyUtil.getNodeTrimValue(element.getElementsByTagName("Name"));
        if (s3 == null)
        {
            break MISSING_BLOCK_LABEL_577;
        }
        if (!s3.equals(""))
        {
            tapjoyvideoobject.videoAdName = s3;
        }
        s4 = TapjoyUtil.getNodeTrimValue(element.getElementsByTagName("Amount"));
        if (s4 == null)
        {
            break MISSING_BLOCK_LABEL_615;
        }
        if (!s4.equals(""))
        {
            tapjoyvideoobject.currencyAmount = s4;
        }
        s5 = TapjoyUtil.getNodeTrimValue(element.getElementsByTagName("CurrencyName"));
        if (s5 == null)
        {
            break MISSING_BLOCK_LABEL_653;
        }
        if (!s5.equals(""))
        {
            tapjoyvideoobject.currencyName = s5;
        }
        s6 = TapjoyUtil.getNodeTrimValue(element.getElementsByTagName("VideoURL"));
        if (s6 == null)
        {
            break MISSING_BLOCK_LABEL_691;
        }
        if (!s6.equals(""))
        {
            tapjoyvideoobject.videoURL = s6;
        }
        s7 = TapjoyUtil.getNodeTrimValue(element.getElementsByTagName("IconURL"));
        if (s7 == null)
        {
            break MISSING_BLOCK_LABEL_729;
        }
        if (!s7.equals(""))
        {
            tapjoyvideoobject.iconURL = s7;
        }
        TapjoyLog.i("TapjoyVideo", "-----");
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("videoObject.offerID: ").append(tapjoyvideoobject.offerID).toString());
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("videoObject.videoAdName: ").append(tapjoyvideoobject.videoAdName).toString());
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("videoObject.videoURL: ").append(tapjoyvideoobject.videoURL).toString());
        nodelist2 = element.getElementsByTagName("Buttons").item(0).getChildNodes();
        j = 0;
_L18:
        if (j >= nodelist2.getLength()) goto _L7; else goto _L6
_L6:
        nodelist3 = nodelist2.item(j).getChildNodes();
        if (nodelist3.getLength() != 0) goto _L9; else goto _L8
_L19:
        if (k >= nodelist3.getLength()) goto _L11; else goto _L10
_L10:
        if ((Element)nodelist3.item(k) == null) goto _L13; else goto _L12
_L12:
        s12 = ((Element)nodelist3.item(k)).getTagName();
        if (!s12.equals("Name") || nodelist3.item(k).getFirstChild() == null) goto _L15; else goto _L14
_L14:
        s13 = nodelist3.item(k).getFirstChild().getNodeValue();
        s14 = s9;
        s11 = s13;
        s10 = s14;
        break MISSING_BLOCK_LABEL_1215;
_L15:
        if (!s12.equals("URL") || nodelist3.item(k).getFirstChild() == null) goto _L13; else goto _L16
_L16:
        s10 = nodelist3.item(k).getFirstChild().getNodeValue();
        s11 = s8;
        break MISSING_BLOCK_LABEL_1215;
_L11:
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("name: ").append(s8).append(", url: ").append(s9).toString());
        tapjoyvideoobject.addButton(s8, s9);
          goto _L8
_L7:
        videoQueue.addElement(tapjoyvideoobject.offerID);
        uncachedVideos.put(tapjoyvideoobject.offerID, tapjoyvideoobject);
_L4:
        i++;
          goto _L17
_L2:
        TapjoyLog.i("TapjoyVideo", "========================================");
        return true;
_L13:
        s10 = s9;
        s11 = s8;
        break MISSING_BLOCK_LABEL_1215;
_L8:
        j++;
          goto _L18
_L9:
        s8 = "";
        s9 = "";
        k = 0;
          goto _L19
        k++;
        s8 = s11;
        s9 = s10;
          goto _L19
    }

    private void printCachedVideos()
    {
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("cachedVideos size: ").append(cachedVideos.size()).toString());
        java.util.Map.Entry entry;
        for (Iterator iterator = cachedVideos.entrySet().iterator(); iterator.hasNext(); TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("key: ").append((String)entry.getKey()).append(", name: ").append(((TapjoyVideoObject)entry.getValue()).videoAdName).toString()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

    }

    private void setVideoIDs()
    {
        String s = "";
        if (cachedVideos != null && cachedVideos.size() > 0)
        {
            Enumeration enumeration = cachedVideos.keys();
            String s1;
            String s3;
            for (s1 = s; enumeration.hasMoreElements(); s1 = s3)
            {
                String s2 = (String)enumeration.nextElement();
                s3 = (new StringBuilder()).append(s1).append(s2).toString();
                if (enumeration.hasMoreElements())
                {
                    s3 = (new StringBuilder()).append(s3).append(",").toString();
                }
            }

            TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("cachedVideos size: ").append(cachedVideos.size()).toString());
            s = s1;
        }
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("videoIDs: [").append(s).append("]").toString());
        TapjoyConnectCore.setVideoIDs(s);
    }

    private boolean validateCachedVideos()
    {
        File afile[] = (new File(videoCacheDir)).listFiles();
        boolean flag;
        boolean flag1;
        if (uncachedVideos == null)
        {
            TapjoyLog.e("TapjoyVideo", "Error: uncachedVideos is null");
            flag = false;
        } else
        {
            flag = true;
        }
        if (cachedVideos == null)
        {
            TapjoyLog.e("TapjoyVideo", "Error: cachedVideos is null");
            flag = false;
        }
        if (videoQueue == null)
        {
            TapjoyLog.e("TapjoyVideo", "Error: videoQueue is null");
            flag = false;
        }
        flag1 = false;
        if (flag)
        {
            flag1 = false;
            if (afile != null)
            {
                while (flag1 < afile.length) 
                {
                    String s = afile[flag1].getName();
                    TapjoyLog.i("TapjoyVideo", "-----");
                    TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("Examining cached file[").append(flag1).append("]: ").append(afile[flag1].getAbsolutePath()).append(" --- ").append(afile[flag1].getName()).toString());
                    if (uncachedVideos.containsKey(s))
                    {
                        TapjoyLog.i("TapjoyVideo", "Local file found");
                        TapjoyVideoObject tapjoyvideoobject = (TapjoyVideoObject)uncachedVideos.get(s);
                        if (tapjoyvideoobject != null)
                        {
                            String s1 = (new TapjoyURLConnection()).getContentLength(tapjoyvideoobject.videoURL);
                            TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("local file size: ").append(afile[flag1].length()).append(" vs. target: ").append(s1).toString());
                            if (s1 != null && (long)Integer.parseInt(s1) == afile[flag1].length())
                            {
                                tapjoyvideoobject.dataLocation = afile[flag1].getAbsolutePath();
                                cachedVideos.put(s, tapjoyvideoobject);
                                uncachedVideos.remove(s);
                                videoQueue.remove(s);
                                TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("VIDEO PREVIOUSLY CACHED -- ").append(s).append(", location: ").append(tapjoyvideoobject.dataLocation).toString());
                            } else
                            {
                                TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("file size mismatch --- deleting video: ").append(afile[flag1].getAbsolutePath()).toString());
                                TapjoyUtil.deleteFileOrDirectory(afile[flag1]);
                            }
                        }
                    } else
                    {
                        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("VIDEO EXPIRED? removing video from cache: ").append(s).append(" --- ").append(afile[flag1].getAbsolutePath()).toString());
                        TapjoyUtil.deleteFileOrDirectory(afile[flag1]);
                    }
                    flag1++;
                }
                flag1 = true;
            }
        }
        return flag1;
    }

    public static void videoNotifierComplete()
    {
        if (tapjoyVideoNotifier != null)
        {
            tapjoyVideoNotifier.videoComplete();
        }
    }

    public static void videoNotifierError(int i)
    {
        if (tapjoyVideoNotifier != null)
        {
            tapjoyVideoNotifier.videoError(i);
        }
    }

    public static void videoNotifierStart()
    {
        if (tapjoyVideoNotifier != null)
        {
            tapjoyVideoNotifier.videoStart();
        }
    }

    public void cacheVideos()
    {
        (new Thread(new _cls2())).start();
    }

    public TapjoyVideoObject getCurrentVideoData()
    {
        return videoToPlay;
    }

    public void init()
    {
        TapjoyLog.i("TapjoyVideo", "initVideoAd");
        if (TapjoyConnectCore.getConnectFlagValue("disable_videos") != null && TapjoyConnectCore.getConnectFlagValue("disable_videos").equals("true"))
        {
            TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("disable_videos: ").append(TapjoyConnectCore.getConnectFlagValue("disable_videos")).append(". Aborting video initializing... ").toString());
            TapjoyConnectCore.setVideoEnabled(false);
            return;
        } else
        {
            setVideoIDs();
            (new Thread(new _cls1())).start();
            TapjoyConnectCore.setVideoEnabled(true);
            return;
        }
    }

    public void setVideoCacheCount(int i)
    {
        videoCacheLimit = i;
    }

    public void setVideoNotifier(TapjoyVideoNotifier tapjoyvideonotifier)
    {
        tapjoyVideoNotifier = tapjoyvideonotifier;
    }

    public boolean startVideo(String s, String s1, String s2, String s3, String s4, String s5)
    {
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("Starting video activity with video: ").append(s).toString());
        if (s == null || s3 == null || s4 == null || s.length() == 0 || s3.length() == 0 || s4.length() == 0)
        {
            TapjoyLog.i("TapjoyVideo", "aborting video playback... invalid or missing parameter");
            return false;
        }
        videoToPlay = (TapjoyVideoObject)cachedVideos.get(s);
        if (videoToPlay != null) goto _L2; else goto _L1
_L1:
        TapjoyLog.i("TapjoyVideo", "video not cached... checking uncached videos");
        videoToPlay = (TapjoyVideoObject)uncachedVideos.get(s);
        if (videoToPlay != null) goto _L4; else goto _L3
_L3:
        if (s5 == null || s5.length() <= 0) goto _L6; else goto _L5
_L5:
        TapjoyVideoObject tapjoyvideoobject = new TapjoyVideoObject();
        tapjoyvideoobject.offerID = s;
        tapjoyvideoobject.currencyName = s1;
        tapjoyvideoobject.currencyAmount = s2;
        tapjoyvideoobject.clickURL = s3;
        tapjoyvideoobject.webviewURL = s4;
        tapjoyvideoobject.videoURL = s5;
        uncachedVideos.put(s, tapjoyvideoobject);
        videoToPlay = (TapjoyVideoObject)uncachedVideos.get(s);
_L4:
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_214;
_L6:
        TapjoyLog.e("TapjoyVideo", "no video data and no video url - aborting playback...");
        return false;
_L8:
        videoToPlay.currencyName = s1;
        videoToPlay.currencyAmount = s2;
        videoToPlay.clickURL = s3;
        videoToPlay.webviewURL = s4;
        videoToPlay.videoURL = s5;
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("videoToPlay: ").append(videoToPlay.offerID).toString());
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("amount: ").append(videoToPlay.currencyAmount).toString());
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("currency: ").append(videoToPlay.currencyName).toString());
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("clickURL: ").append(videoToPlay.clickURL).toString());
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("location: ").append(videoToPlay.dataLocation).toString());
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("webviewURL: ").append(videoToPlay.webviewURL).toString());
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("videoURL: ").append(videoToPlay.videoURL).toString());
        if (flag && videoToPlay.dataLocation != null)
        {
            File file = new File(videoToPlay.dataLocation);
            if (file == null || !file.exists())
            {
                TapjoyLog.e("TapjoyVideo", "video file does not exist.");
                return false;
            }
        }
        Intent intent = new Intent(context, com/tapjoy/TapjoyVideoView);
        intent.setFlags(0x10000000);
        intent.putExtra("VIDEO_DATA", videoToPlay);
        context.startActivity(intent);
        return true;
_L2:
        flag = true;
        if (true) goto _L8; else goto _L7
_L7:
    }









/*
    static Bitmap access$202(Bitmap bitmap)
    {
        watermarkImage = bitmap;
        return bitmap;
    }

*/




/*
    static boolean access$402(TapjoyVideo tapjoyvideo, boolean flag)
    {
        tapjoyvideo.initialized = flag;
        return flag;
    }

*/






    private class _cls2
        implements Runnable
    {

        final TapjoyVideo this$0;

        public void run()
        {
            int i;
            TapjoyLog.i("TapjoyVideo", "--- cacheAllVideos called ---");
            i = 0;
_L2:
            if (initialized)
            {
                break; /* Loop/switch isn't completed */
            }
            Thread.sleep(500L);
            i = (int)(500L + (long)i);
            if ((long)i > 10000L)
            {
                try
                {
                    TapjoyLog.e("TapjoyVideo", "Error during cacheVideos.  Timeout while waiting for initVideos to finish.");
                    return;
                }
                catch (Exception exception)
                {
                    TapjoyLog.e("TapjoyVideo", (new StringBuilder()).append("Exception in cacheAllVideos: ").append(exception.toString()).toString());
                }
            }
            if (true) goto _L2; else goto _L1
_L1:
            TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("cacheVideos connection_type: ").append(TapjoyConnectCore.getConnectionType()).toString());
            TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("cache3g: ").append(cache3g).toString());
            TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("cacheWifi: ").append(cacheWifi).toString());
            if (cache3g && TapjoyConnectCore.getConnectionType().equals("mobile") || cacheWifi && TapjoyConnectCore.getConnectionType().equals("wifi"))
            {
                if (!"mounted".equals(Environment.getExternalStorageState()))
                {
                    TapjoyLog.i("TapjoyVideo", "Media storage unavailable.  Aborting caching videos.");
                    TapjoyVideo.videoNotifierError(1);
                    return;
                }
                String s;
                for (; cachedVideos.size() < videoCacheLimit && videoQueue.size() > 0; cacheVideoFromURL(s))
                {
                    s = ((TapjoyVideoObject)uncachedVideos.get(videoQueue.elementAt(0))).videoURL;
                }

            } else
            {
                TapjoyLog.i("TapjoyVideo", " * Skipping caching videos because of video flags and connection_type...");
            }
            printCachedVideos();
            return;
        }

        _cls2()
        {
            this$0 = TapjoyVideo.this;
            super();
        }
    }


    private class _cls1
        implements Runnable
    {

        final TapjoyVideo this$0;

        public void run()
        {
            TapjoyHttpURLResponse tapjoyhttpurlresponse = (new TapjoyURLConnection()).getResponseFromURL((new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("videos?").toString(), TapjoyConnectCore.getURLParams());
            String s = tapjoyhttpurlresponse.response;
            boolean flag = false;
            if (s != null)
            {
                int i = tapjoyhttpurlresponse.response.length();
                flag = false;
                if (i > 0)
                {
                    flag = handleGetVideosResponse(tapjoyhttpurlresponse.response);
                }
            }
            if (flag)
            {
                validateCachedVideos();
                if ("https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png" != null && "https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png".length() > 0)
                {
                    try
                    {
                        URL url = new URL("https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png");
                        URLConnection urlconnection = url.openConnection();
                        urlconnection.setConnectTimeout(15000);
                        urlconnection.setReadTimeout(25000);
                        urlconnection.connect();
                        TapjoyVideo.watermarkImage = BitmapFactory.decodeStream(url.openConnection().getInputStream());
                        urlconnection.getInputStream().close();
                    }
                    catch (Exception exception)
                    {
                        TapjoyLog.e("TapjoyVideo", (new StringBuilder()).append("e: ").append(exception.toString()).toString());
                    }
                }
                setVideoIDs();
                initialized = true;
                if (cacheAuto)
                {
                    TapjoyLog.i("TapjoyVideo", "trying to cache because of cache_auto flag...");
                    cacheVideos();
                }
                TapjoyLog.i("TapjoyVideo", "------------------------------");
                TapjoyLog.i("TapjoyVideo", "------------------------------");
                TapjoyLog.i("TapjoyVideo", "INIT DONE!");
                TapjoyLog.i("TapjoyVideo", "------------------------------");
                return;
            } else
            {
                TapjoyVideo.videoNotifierError(2);
                return;
            }
        }

        _cls1()
        {
            this$0 = TapjoyVideo.this;
            super();
        }
    }

}
