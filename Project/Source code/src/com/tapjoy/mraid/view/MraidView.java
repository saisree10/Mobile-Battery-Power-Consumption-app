// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.GestureDetector;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.URLUtil;
import android.webkit.WebBackForwardList;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.tapjoy.TapjoyHttpURLResponse;
import com.tapjoy.TapjoyLog;
import com.tapjoy.TapjoyURLConnection;
import com.tapjoy.TapjoyUtil;
import com.tapjoy.mraid.controller.Utility;
import com.tapjoy.mraid.listener.MraidViewListener;
import com.tapjoy.mraid.util.MraidPlayer;
import com.tapjoy.mraid.util.Utils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.tapjoy.mraid.view:
//            Browser, ActionHandler

public class MraidView extends WebView
    implements android.view.ViewTreeObserver.OnGlobalLayoutListener
{

    public static final String ACTION_KEY = "action";
    private static final String AD_PATH = "AD_PATH";
    protected static final int BACKGROUND_ID = 101;
    private static final String CURRENT_FILE = "_current_file";
    public static final String DIMENSIONS = "expand_dimensions";
    private static final String ERROR_ACTION = "action";
    private static final String ERROR_MESSAGE = "message";
    private static final String EXPAND_PROPERTIES = "expand_properties";
    public static final String EXPAND_URL = "expand_url";
    private static final int MESSAGE_CLOSE = 1001;
    private static final int MESSAGE_EXPAND = 1004;
    private static final int MESSAGE_HIDE = 1002;
    private static final int MESSAGE_OPEN = 1006;
    private static final int MESSAGE_PLAY_AUDIO = 1008;
    private static final int MESSAGE_PLAY_VIDEO = 1007;
    private static final int MESSAGE_RAISE_ERROR = 1009;
    private static final int MESSAGE_RESIZE = 1000;
    private static final int MESSAGE_RESIZE_ORIENTATION = 1010;
    private static final int MESSAGE_SEND_EXPAND_CLOSE = 1005;
    private static final int MESSAGE_SHOW = 1003;
    public static final int MRAID_ID = 102;
    private static final String NO_CONNECTION_HTML = "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\"><html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"><title>Connection not Established</title></head><h2>Connection Not Properly Established</h2><body></body></html>";
    protected static final int PLACEHOLDER_ID = 100;
    public static final String PLAYER_PROPERTIES = "player_properties";
    private static final String RESIZE_ALLOWOFFSCREEN = "resize_allowOffScreen";
    private static final String RESIZE_CUSTOMCLOSEPOSITION = "resize_customClosePostition";
    private static final String RESIZE_HEIGHT = "resize_height";
    private static final String RESIZE_WIDTH = "resize_width";
    private static final String RESIZE_X = "resize_x";
    private static final String RESIZE_Y = "resize_y";
    private static final String TAG = "MRAIDView";
    private static int attrs[] = {
        0x101011f, 0x1010120
    };
    private static String mScriptPath;
    private static MraidPlayer player;
    private static final String videoFormats[] = {
        ".mp4", ".3gp", ".mpg"
    };
    private boolean bGotLayoutParams;
    private boolean bKeyboardOut;
    private boolean bPageFinished;
    private customCloseState closeButtonState;
    private Context ctx;
    private String initialExpandUrl;
    private boolean initialLoadUrl;
    private boolean isMraid;
    private int lastScreenHeight;
    private int lastScreenWidth;
    private int mContentViewHeight;
    private int mDefaultHeight;
    private int mDefaultWidth;
    private int mDefaultX;
    private int mDefaultY;
    private float mDensity;
    private GestureDetector mGestureDetector;
    private Handler mHandler;
    private int mIndex;
    private int mInitLayoutHeight;
    private int mInitLayoutWidth;
    private MraidViewListener mListener;
    private String mLocalFilePath;
    private TimeOut mTimeOut;
    private Utility mUtilityController;
    private VIEW_STATE mViewState;
    WebChromeClient mWebChromeClient;
    WebViewClient mWebViewClient;
    private Thread orientationThread;
    private int originalRequestedOrientation;
    private PLACEMENT_TYPE placement;
    private ProgressBar progressBar;
    private final HashSet registeredProtocols;
    private RelativeLayout videoRelativeLayout;
    private VideoView videoView;
    private android.webkit.WebChromeClient.CustomViewCallback videoViewCallback;
    private boolean viewDetached;

    public MraidView(Context context)
    {
        super(context);
        closeButtonState = customCloseState.UNKNOWN;
        initialExpandUrl = null;
        initialLoadUrl = true;
        isMraid = false;
        mViewState = VIEW_STATE.DEFAULT;
        registeredProtocols = new HashSet();
        lastScreenWidth = 0;
        lastScreenHeight = 0;
        orientationThread = null;
        viewDetached = false;
        mHandler = new _cls2();
        mWebViewClient = new _cls4();
        mWebChromeClient = new _cls5();
        ctx = context;
        initialize();
    }

    public MraidView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        closeButtonState = customCloseState.UNKNOWN;
        initialExpandUrl = null;
        initialLoadUrl = true;
        isMraid = false;
        mViewState = VIEW_STATE.DEFAULT;
        registeredProtocols = new HashSet();
        lastScreenWidth = 0;
        lastScreenHeight = 0;
        orientationThread = null;
        viewDetached = false;
        mHandler = new _cls2();
        mWebViewClient = new _cls4();
        mWebChromeClient = new _cls5();
        initialize();
        TypedArray typedarray = getContext().obtainStyledAttributes(attributeset, attrs);
        int i = typedarray.getDimensionPixelSize(0, -1);
        int j = typedarray.getDimensionPixelSize(1, -1);
        if (i > 0 && j > 0)
        {
            mUtilityController.setMaxSize(i, j);
        }
        typedarray.recycle();
    }

    public MraidView(Context context, MraidViewListener mraidviewlistener)
    {
        super(context);
        closeButtonState = customCloseState.UNKNOWN;
        initialExpandUrl = null;
        initialLoadUrl = true;
        isMraid = false;
        mViewState = VIEW_STATE.DEFAULT;
        registeredProtocols = new HashSet();
        lastScreenWidth = 0;
        lastScreenHeight = 0;
        orientationThread = null;
        viewDetached = false;
        mHandler = new _cls2();
        mWebViewClient = new _cls4();
        mWebChromeClient = new _cls5();
        setListener(mraidviewlistener);
        ctx = context;
        initialize();
    }

    private FrameLayout changeContentArea(com.tapjoy.mraid.controller.Abstract.Dimensions dimensions)
    {
        FrameLayout framelayout = (FrameLayout)getRootView().findViewById(0x1020002);
        ViewGroup viewgroup = (ViewGroup)getParent();
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(dimensions.width, dimensions.height);
        layoutparams.topMargin = dimensions.x;
        layoutparams.leftMargin = dimensions.y;
        int i = viewgroup.getChildCount();
        int j = 0;
        do
        {
            if (j >= i || viewgroup.getChildAt(j) == this)
            {
                mIndex = j;
                FrameLayout framelayout1 = new FrameLayout(getContext());
                framelayout1.setId(100);
                viewgroup.addView(framelayout1, j, new android.view.ViewGroup.LayoutParams(getWidth(), getHeight()));
                viewgroup.removeView(this);
                FrameLayout framelayout2 = new FrameLayout(getContext());
                framelayout2.setOnTouchListener(new _cls3());
                android.widget.FrameLayout.LayoutParams layoutparams1 = new android.widget.FrameLayout.LayoutParams(-1, -1);
                framelayout2.setId(101);
                framelayout2.setPadding(dimensions.x, dimensions.y, 0, 0);
                framelayout2.addView(this, layoutparams);
                framelayout.addView(framelayout2, layoutparams1);
                return framelayout2;
            }
            j++;
        } while (true);
    }

    private void checkForOrientationChange()
    {
        WindowManager windowmanager = (WindowManager)getContext().getSystemService("window");
        int i = windowmanager.getDefaultDisplay().getWidth();
        int j = windowmanager.getDefaultDisplay().getHeight();
        if ((i != lastScreenWidth || j != lastScreenHeight) && (getPlacementType() == PLACEMENT_TYPE.INLINE && getViewState() == VIEW_STATE.EXPANDED || getPlacementType() == PLACEMENT_TYPE.INTERSTITIAL))
        {
            resizeOrientation(i, j, "top-right", true);
        }
    }

    private static boolean checkForVideo(String s)
    {
        String as[] = videoFormats;
        int i = as.length;
        int j = 0;
        do
        {
label0:
            {
                boolean flag = false;
                if (j < i)
                {
                    if (!s.endsWith(as[j]))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            j++;
        } while (true);
    }

    private void closeResized()
    {
        mViewState = VIEW_STATE.DEFAULT;
        if (mListener != null)
        {
            mListener.onResizeClose();
        }
        String s = (new StringBuilder()).append("window.mraidview.fireChangeEvent({ state: 'default', size: { width: ").append(mDefaultWidth).append(", ").append("height: ").append(mDefaultHeight).append(", ").append("x:0").append(",").append("y:0").append("}").append("});").toString();
        TapjoyLog.d("MRAIDView", (new StringBuilder()).append("closeResized: injection: ").append(s).toString());
        injectMraidJavaScript(s);
        repositionCloseButton("top-right");
        resetLayout();
    }

    private void closeWindow()
    {
        if (mListener != null)
        {
            mListener.onClose();
        }
        ((ViewGroup)(ViewGroup)getParent()).removeView(this);
    }

    private void doExpand(Bundle bundle)
    {
        if (mViewState != VIEW_STATE.EXPANDED)
        {
            com.tapjoy.mraid.controller.Abstract.Dimensions dimensions = (com.tapjoy.mraid.controller.Abstract.Dimensions)bundle.getParcelable("expand_dimensions");
            String s = bundle.getString("expand_url");
            com.tapjoy.mraid.controller.Abstract.Properties properties = (com.tapjoy.mraid.controller.Abstract.Properties)bundle.getParcelable("expand_properties");
            if (URLUtil.isValidUrl(s))
            {
                loadUrl(s);
            }
            FrameLayout framelayout = changeContentArea(dimensions);
            if (properties.useBackground)
            {
                framelayout.setBackgroundColor(properties.backgroundColor | 0x10000000 * (int)(255F * properties.backgroundOpacity));
            }
            if (!properties.useCustomClose)
            {
                showCloseImageButton();
            }
            String s1 = (new StringBuilder()).append("window.mraidview.fireChangeEvent({ state: 'expanded', size: { width: ").append((int)((float)dimensions.width / mDensity)).append(", ").append("height: ").append((int)((float)dimensions.height / mDensity)).append(",").append("x:0,").append("y:0").append("}").append(" });").toString();
            TapjoyLog.d("MRAIDView", (new StringBuilder()).append("doExpand: injection: ").append(s1).toString());
            injectMraidJavaScript(s1);
            mViewState = VIEW_STATE.EXPANDED;
            checkForOrientationChange();
            if (mListener != null)
            {
                mListener.onExpand();
                return;
            }
        }
    }

    private int getContentViewHeight()
    {
        View view = getRootView().findViewById(0x1020002);
        if (view != null)
        {
            return view.getHeight();
        } else
        {
            return -1;
        }
    }

    private void initAndPlayVideo(String s)
    {
        com.tapjoy.mraid.controller.Abstract.Dimensions dimensions = new com.tapjoy.mraid.controller.Abstract.Dimensions();
        dimensions.x = 0;
        dimensions.y = 0;
        dimensions.width = getWidth();
        dimensions.height = getHeight();
        playVideo(s, false, true, true, false, dimensions, "fullscreen", "exit");
    }

    private boolean isRegisteredProtocol(Uri uri)
    {
        String s = uri.getScheme();
        if (s == null)
        {
            return false;
        }
        for (Iterator iterator = registeredProtocols.iterator(); iterator.hasNext();)
        {
            if (((String)iterator.next()).equalsIgnoreCase(s))
            {
                return true;
            }
        }

        return false;
    }

    private void repositionCloseButton(String s)
    {
        if (s == null)
        {
            return;
        }
        String s1;
        if (s.equals("top-right"))
        {
            s1 = "document.getElementById(\"closeButton\").style.right = 1;document.getElementById(\"closeButton\").style.top = 1;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.left = mraid.getSize().width -36";
        } else
        if (s.equals("top-center"))
        {
            s1 = "document.getElementById(\"closeButton\").style.right = mraid.getSize().width/2 - 18;document.getElementById(\"closeButton\").style.top = 1;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.left = mraid.getSize().width/2 -18";
        } else
        if (s.equals("top-left"))
        {
            s1 = "document.getElementById(\"closeButton\").style.right = mraid.getSize().width -36;document.getElementById(\"closeButton\").style.top = 1;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.left = 1";
        } else
        if (s.equals("center"))
        {
            s1 = "document.getElementById(\"closeButton\").style.right = mraid.getSize().width/2 - 18;document.getElementById(\"closeButton\").style.top = mraid.getSize().height/2 -18;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height/2 -18;document.getElementById(\"closeButton\").style.left = mraid.getSize().width/2 -18";
        } else
        if (s.equals("bottom-right"))
        {
            s1 = "document.getElementById(\"closeButton\").style.right = 1;document.getElementById(\"closeButton\").style.top = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.bottom = 1;document.getElementById(\"closeButton\").style.left = mraid.getSize().width -36";
        } else
        if (s.equals("bottom-left"))
        {
            s1 = "document.getElementById(\"closeButton\").style.left = 1;document.getElementById(\"closeButton\").style.bottom = 1;document.getElementById(\"closeButton\").style.right = mraid.getSize().width -36;document.getElementById(\"closeButton\").style.top = mraid.getSize().height-36;";
        } else
        {
            boolean flag = s.equals("bottom-center");
            s1 = null;
            if (flag)
            {
                s1 = "document.getElementById(\"closeButton\").style.bottom = 1;document.getElementById(\"closeButton\").style.right = mraid.getSize().width -36document.getElementById(\"closeButton\").style.right = mraid.getSize().width/2 -18;document.getElementById(\"closeButton\").style.top = mraid.getSize().height-36;";
            }
        }
        if (s1 != null)
        {
            injectMraidJavaScript(s1);
            return;
        } else
        {
            TapjoyLog.d("MRAIDView", "Reposition of close button failed.");
            return;
        }
    }

    private void resetLayout()
    {
        android.view.ViewGroup.LayoutParams layoutparams = getLayoutParams();
        if (bGotLayoutParams)
        {
            layoutparams.height = mInitLayoutHeight;
            layoutparams.width = mInitLayoutWidth;
        }
        setVisibility(0);
        requestLayout();
    }

    private void setScriptPath()
    {
        this;
        JVM INSTR monitorenter ;
        TapjoyLog.d("MRAIDView", (new StringBuilder()).append(" paths").append(mScriptPath).toString());
        if (mScriptPath == null && TapjoyUtil.getResource("mraid.js") == null)
        {
            mScriptPath = mUtilityController.copyTextFromJarIntoAssetDir("/js/mraid.js", "js/mraid.js");
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void addJavascriptObject(Object obj, String s)
    {
        addJavascriptInterface(obj, s);
    }

    public void clearView()
    {
        reset();
        super.clearView();
    }

    public void close()
    {
        mHandler.sendEmptyMessage(1001);
    }

    protected void closeExpanded()
    {
        this;
        JVM INSTR monitorenter ;
        resetContents();
        String s = (new StringBuilder()).append("window.mraidview.fireChangeEvent({ state: 'default', size: { width: ").append(mDefaultWidth).append(", ").append("height: ").append(mDefaultHeight).append("}").append("});").toString();
        TapjoyLog.d("MRAIDView", (new StringBuilder()).append("closeExpanded: injection: ").append(s).toString());
        injectMraidJavaScript(s);
        mViewState = VIEW_STATE.DEFAULT;
        mHandler.sendEmptyMessage(1005);
        setVisibility(0);
        removeCloseImageButton();
        ((Activity)getContext()).setRequestedOrientation(originalRequestedOrientation);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected void closeOpened(View view)
    {
        ((ViewGroup)((Activity)getContext()).getWindow().getDecorView()).removeView(view);
        requestLayout();
    }

    public void createCloseImageButton()
    {
        injectMraidJavaScript("window.mraidview.createCss();");
        TapjoyLog.d("MRAIDView", "Creating close button.");
    }

    public void deregisterProtocol(String s)
    {
        if (s != null)
        {
            registeredProtocols.remove(s.toLowerCase());
        }
    }

    public void expand(com.tapjoy.mraid.controller.Abstract.Dimensions dimensions, String s, com.tapjoy.mraid.controller.Abstract.Properties properties)
    {
        Message message = mHandler.obtainMessage(1004);
        Bundle bundle = new Bundle();
        bundle.putParcelable("expand_dimensions", dimensions);
        bundle.putString("expand_url", s);
        bundle.putParcelable("expand_properties", properties);
        message.setData(bundle);
        mHandler.sendMessage(message);
    }

    public customCloseState getCloseButtonState()
    {
        return closeButtonState;
    }

    public ConnectivityManager getConnectivityManager()
    {
        return (ConnectivityManager)getContext().getSystemService("connectivity");
    }

    public PLACEMENT_TYPE getPlacementType()
    {
        return placement;
    }

    MraidPlayer getPlayer()
    {
        if (player != null)
        {
            player.releasePlayer();
        }
        player = new MraidPlayer(getContext());
        return player;
    }

    public String getSize()
    {
        return (new StringBuilder()).append("{ width: ").append((int)Math.ceil((float)getWidth() / mDensity)).append(", ").append("height: ").append((int)Math.ceil((float)getHeight() / mDensity)).append("}").toString();
    }

    public String getState()
    {
        return mViewState.toString().toLowerCase();
    }

    public VIEW_STATE getViewState()
    {
        return mViewState;
    }

    public boolean hasMraidTag(String s)
    {
        Pattern pattern = Pattern.compile("<\\s*script[^>]+ormma\\.js");
        Matcher matcher = Pattern.compile("<\\s*script[^>]+mraid\\.js").matcher(s);
        Matcher matcher1 = pattern.matcher(s);
        return matcher.find() || matcher1.find();
    }

    public void hide()
    {
        mHandler.sendEmptyMessage(1002);
    }

    public void initialize()
    {
        setPlacementType(PLACEMENT_TYPE.INTERSTITIAL);
        setScrollContainer(false);
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        mGestureDetector = new GestureDetector(new ScrollEater());
        setBackgroundColor(0);
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        mDensity = displaymetrics.density;
        bPageFinished = false;
        if (getSettings() != null)
        {
            getSettings().setJavaScriptEnabled(true);
        }
        mUtilityController = new Utility(this, getContext());
        addJavascriptInterface(mUtilityController, "MRAIDUtilityControllerBridge");
        setWebViewClient(mWebViewClient);
        setWebChromeClient(mWebChromeClient);
        setScriptPath();
        mContentViewHeight = getContentViewHeight();
        if (getViewTreeObserver() != null)
        {
            getViewTreeObserver().addOnGlobalLayoutListener(this);
        }
        WindowManager windowmanager = (WindowManager)getContext().getSystemService("window");
        lastScreenWidth = windowmanager.getDefaultDisplay().getWidth();
        lastScreenHeight = windowmanager.getDefaultDisplay().getHeight();
        originalRequestedOrientation = ((Activity)getContext()).getRequestedOrientation();
    }

    public void injectMraidJavaScript(String s)
    {
        if (s != null && isMraid)
        {
            loadUrl((new StringBuilder()).append("javascript:").append(s).toString());
        }
    }

    public boolean isExpanded()
    {
        return mViewState == VIEW_STATE.EXPANDED;
    }

    public boolean isMraid()
    {
        return isMraid;
    }

    public boolean isPageFinished()
    {
        return bPageFinished;
    }

    public void loadDataWithBaseURL(String s, String s1, String s2, String s3, String s4)
    {
        StringBuffer stringbuffer;
        int i;
        int j;
        if (s1 == null)
        {
            return;
        }
        stringbuffer = new StringBuffer();
        i = s1.indexOf("<html>");
        isMraid = false;
        j = s1.indexOf("mraid.js");
        if (j < 0)
        {
            j = s1.indexOf("ormma.js");
        }
        if (j <= 0 || !hasMraidTag(s1)) goto _L2; else goto _L1
_L1:
        int k;
        isMraid = true;
        k = j;
_L5:
        if (k < 0)
        {
            break MISSING_BLOCK_LABEL_487;
        }
        if (!s1.substring(k, k + 7).equals("<script")) goto _L4; else goto _L3
_L3:
        int l = 0;
_L6:
        if (l < s1.length())
        {
            if (s1.substring(j + l, 2 + (j + l)).equalsIgnoreCase("/>"))
            {
                j = 2 + (j + l);
            } else
            {
label0:
                {
                    if (!s1.substring(j + l, 9 + (j + l)).equalsIgnoreCase("</script>"))
                    {
                        break label0;
                    }
                    j = 9 + (j + l);
                }
            }
        }
        if (i < 0)
        {
            TapjoyLog.d("MRAIDView", "wrapping fragment");
            stringbuffer.append("<html>");
            stringbuffer.append("<head>");
            stringbuffer.append("<meta name='viewport' content='user-scalable=no initial-scale=1.0' />");
            stringbuffer.append("<title>Advertisement</title>");
            stringbuffer.append("</head>");
            stringbuffer.append("<body style=\"margin:0; padding:0; overflow:hidden; background-color:transparent;\">");
            stringbuffer.append("<div align=\"center\"> ");
            stringbuffer.append(s1.substring(0, k));
            stringbuffer.append("<script type=text/javascript>");
            String s6 = (String)TapjoyUtil.getResource("mraid.js");
            if (s6 == null)
            {
                s6 = TapjoyUtil.copyTextFromJarIntoString("js/mraid.js", getContext());
            }
            stringbuffer.append(s6);
            stringbuffer.append("</script>");
            stringbuffer.append(s1.substring(j));
        } else
        {
            int i1 = s1.indexOf("<head>");
            if (i1 != -1)
            {
                String s5 = (String)TapjoyUtil.getResource("mraid.js");
                if (s5 == null)
                {
                    s5 = TapjoyUtil.copyTextFromJarIntoString("js/mraid.js", getContext());
                }
                stringbuffer.append(s1.substring(0, i1 + 6));
                stringbuffer.append("<script type='text/javascript'>");
                stringbuffer.append(s5);
                stringbuffer.append("</script>");
                stringbuffer.append(s1.substring(i1 + 6));
            }
        }
        TapjoyLog.d("MRAIDView", "injected js/mraid.js");
_L7:
        super.loadDataWithBaseURL(s, stringbuffer.toString(), s2, s3, s4);
        return;
_L4:
        k--;
          goto _L5
        l++;
          goto _L6
_L2:
        stringbuffer.append(s1);
          goto _L7
        k = j;
          goto _L3
    }

    public void loadUrl(final String url)
    {
        ((Activity)ctx).runOnUiThread(new _cls1());
    }

    public void loadUrlStandard(String s)
    {
        super.loadUrl(s);
    }

    protected void onAttachedToWindow()
    {
        if (!bGotLayoutParams)
        {
            android.view.ViewGroup.LayoutParams layoutparams = getLayoutParams();
            mInitLayoutHeight = layoutparams.height;
            mInitLayoutWidth = layoutparams.width;
            bGotLayoutParams = true;
        }
        viewDetached = false;
        if (orientationThread == null || !orientationThread.isAlive())
        {
            orientationThread = new Thread(new OrientationThread());
            orientationThread.start();
        }
        super.onAttachedToWindow();
    }

    protected void onDetachedFromWindow()
    {
        viewDetached = true;
        mUtilityController.stopAllListeners();
        try
        {
            if (videoView != null)
            {
                videoView.stopPlayback();
            }
            if (videoViewCallback != null)
            {
                videoViewCallback.onCustomViewHidden();
            }
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        super.onDetachedFromWindow();
    }

    public void onGlobalLayout()
    {
        boolean flag = bKeyboardOut;
        if (!bKeyboardOut && mContentViewHeight >= 0 && getContentViewHeight() >= 0 && mContentViewHeight != getContentViewHeight())
        {
            flag = true;
            injectMraidJavaScript("window.mraidview.fireChangeEvent({ keyboardState: true});");
        }
        if (bKeyboardOut && mContentViewHeight >= 0 && getContentViewHeight() >= 0 && mContentViewHeight == getContentViewHeight())
        {
            flag = false;
            injectMraidJavaScript("window.mraidview.fireChangeEvent({ keyboardState: false});");
        }
        if (mContentViewHeight < 0)
        {
            mContentViewHeight = getContentViewHeight();
        }
        bKeyboardOut = flag;
    }

    public void open(String s, boolean flag, boolean flag1, boolean flag2)
    {
        boolean flag3 = true;
        String s1;
        if (checkForVideo(s))
        {
            s1 = s;
        } else
        {
            TapjoyHttpURLResponse tapjoyhttpurlresponse = (new TapjoyURLConnection()).getRedirectFromURL(s);
            TapjoyLog.i("MRAIDView", (new StringBuilder()).append("redirect: ").append(tapjoyhttpurlresponse.redirectURL).append(", ").append(tapjoyhttpurlresponse.statusCode).toString());
            Intent intent;
            if (tapjoyhttpurlresponse != null && tapjoyhttpurlresponse.redirectURL != null && tapjoyhttpurlresponse.redirectURL.length() > 0 && checkForVideo(tapjoyhttpurlresponse.redirectURL))
            {
                s1 = tapjoyhttpurlresponse.redirectURL;
            } else
            {
                s1 = null;
                flag3 = false;
            }
        }
        if (flag3)
        {
            initAndPlayVideo(s1);
            return;
        } else
        {
            TapjoyLog.d("MRAIDView", (new StringBuilder()).append("Mraid Browser open:").append(s).toString());
            intent = new Intent(getContext(), com/tapjoy/mraid/view/Browser);
            intent.putExtra("extra_url", s);
            intent.putExtra("open_show_back", flag);
            intent.putExtra("open_show_forward", flag1);
            intent.putExtra("open_show_refresh", flag2);
            intent.addFlags(0x10000000);
            getContext().startActivity(intent);
            return;
        }
    }

    public void openMap(String s, boolean flag)
    {
        String s1;
        TapjoyLog.d("MRAIDView", (new StringBuilder()).append("Opening Map Url ").append(s).toString());
        s1 = Utils.convert(s.trim());
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s1));
        intent.setFlags(0x10000000);
        getContext().startActivity(intent);
        return;
        ActivityNotFoundException activitynotfoundexception;
        activitynotfoundexception;
        activitynotfoundexception.printStackTrace();
        return;
    }

    public void playAudio(String s, boolean flag, boolean flag1, boolean flag2, boolean flag3, String s1, String s2)
    {
        com.tapjoy.mraid.controller.Abstract.PlayerProperties playerproperties = new com.tapjoy.mraid.controller.Abstract.PlayerProperties();
        playerproperties.setProperties(false, flag, flag1, flag3, flag2, s1, s2);
        Bundle bundle = new Bundle();
        bundle.putString("action", Action.PLAY_AUDIO.toString());
        bundle.putString("expand_url", s);
        bundle.putParcelable("player_properties", playerproperties);
        if (playerproperties.isFullScreen())
        {
            try
            {
                Intent intent = new Intent(getContext(), com/tapjoy/mraid/view/ActionHandler);
                intent.putExtras(bundle);
                getContext().startActivity(intent);
                return;
            }
            catch (ActivityNotFoundException activitynotfoundexception)
            {
                activitynotfoundexception.printStackTrace();
            }
            return;
        } else
        {
            Message message = mHandler.obtainMessage(1008);
            message.setData(bundle);
            mHandler.sendMessage(message);
            return;
        }
    }

    public void playAudioImpl(Bundle bundle)
    {
        com.tapjoy.mraid.controller.Abstract.PlayerProperties playerproperties = (com.tapjoy.mraid.controller.Abstract.PlayerProperties)bundle.getParcelable("player_properties");
        String s = bundle.getString("expand_url");
        MraidPlayer mraidplayer = getPlayer();
        mraidplayer.setPlayData(playerproperties, s);
        mraidplayer.setLayoutParams(new android.view.ViewGroup.LayoutParams(1, 1));
        ((ViewGroup)getParent()).addView(mraidplayer);
        mraidplayer.playAudio();
    }

    public void playVideo(String s, boolean flag, boolean flag1, boolean flag2, boolean flag3, com.tapjoy.mraid.controller.Abstract.Dimensions dimensions, String s1, 
            String s2)
    {
        Message message;
        Bundle bundle;
        message = mHandler.obtainMessage(1007);
        com.tapjoy.mraid.controller.Abstract.PlayerProperties playerproperties = new com.tapjoy.mraid.controller.Abstract.PlayerProperties();
        playerproperties.setProperties(flag, flag1, flag2, false, flag3, s1, s2);
        bundle = new Bundle();
        bundle.putString("expand_url", s);
        bundle.putString("action", Action.PLAY_VIDEO.toString());
        bundle.putParcelable("player_properties", playerproperties);
        if (dimensions != null)
        {
            bundle.putParcelable("expand_dimensions", dimensions);
        }
        if (!playerproperties.isFullScreen())
        {
            break MISSING_BLOCK_LABEL_149;
        }
        Intent intent = new Intent(getContext(), com/tapjoy/mraid/view/ActionHandler);
        intent.putExtras(bundle);
        intent.setFlags(0x10000000);
        getContext().startActivity(intent);
_L1:
        return;
        ActivityNotFoundException activitynotfoundexception;
        activitynotfoundexception;
        activitynotfoundexception.printStackTrace();
        return;
        if (dimensions != null)
        {
            message.setData(bundle);
            mHandler.sendMessage(message);
            return;
        }
          goto _L1
    }

    public void playVideoImpl(Bundle bundle)
    {
        com.tapjoy.mraid.controller.Abstract.PlayerProperties playerproperties = (com.tapjoy.mraid.controller.Abstract.PlayerProperties)bundle.getParcelable("player_properties");
        com.tapjoy.mraid.controller.Abstract.Dimensions dimensions = (com.tapjoy.mraid.controller.Abstract.Dimensions)bundle.getParcelable("expand_dimensions");
        String s = bundle.getString("expand_url");
        MraidPlayer mraidplayer = getPlayer();
        mraidplayer.setPlayData(playerproperties, s);
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(dimensions.width, dimensions.height);
        layoutparams.topMargin = dimensions.x;
        layoutparams.leftMargin = dimensions.y;
        mraidplayer.setLayoutParams(layoutparams);
        FrameLayout framelayout = new FrameLayout(getContext());
        framelayout.setId(101);
        framelayout.setPadding(dimensions.x, dimensions.y, 0, 0);
        ((FrameLayout)getRootView().findViewById(0x1020002)).addView(framelayout, new android.widget.FrameLayout.LayoutParams(-1, -1));
        framelayout.addView(mraidplayer);
        setVisibility(4);
        mraidplayer.setListener(new _cls6());
        mraidplayer.playVideo();
    }

    public void raiseError(String s, String s1)
    {
        Message message = mHandler.obtainMessage(1009);
        Bundle bundle = new Bundle();
        bundle.putString("message", s);
        bundle.putString("action", s1);
        message.setData(bundle);
        mHandler.sendMessage(message);
    }

    public void registerProtocol(String s)
    {
        if (s != null)
        {
            registeredProtocols.add(s.toLowerCase());
        }
    }

    public void removeCloseImageButton()
    {
        injectMraidJavaScript("document.getElementById(\"closeButton\").style.visibility=\"hidden\";");
        TapjoyLog.d("MRAIDView", "Removing close button.");
        closeButtonState = customCloseState.HIDDEN;
    }

    public void removeListener()
    {
        mListener = null;
    }

    public void reset()
    {
        if (mViewState != VIEW_STATE.EXPANDED) goto _L2; else goto _L1
_L1:
        closeExpanded();
_L4:
        invalidate();
        mUtilityController.deleteOldAds();
        mUtilityController.stopAllListeners();
        resetLayout();
        return;
_L2:
        if (mViewState == VIEW_STATE.RESIZED)
        {
            closeResized();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void resetContents()
    {
        FrameLayout framelayout = (FrameLayout)getRootView().findViewById(0x1020002);
        FrameLayout framelayout1 = (FrameLayout)getRootView().findViewById(100);
        FrameLayout framelayout2 = (FrameLayout)getRootView().findViewById(101);
        framelayout2.removeView(this);
        framelayout.removeView(framelayout2);
        resetLayout();
        if (framelayout1 != null)
        {
            ViewGroup viewgroup = (ViewGroup)framelayout1.getParent();
            if (viewgroup != null)
            {
                viewgroup.addView(this, mIndex);
                viewgroup.removeView(framelayout1);
                viewgroup.invalidate();
            }
        }
    }

    public void resize(int i, int j, int k, int l, String s, boolean flag)
    {
        Message message = mHandler.obtainMessage(1000);
        Bundle bundle = new Bundle();
        bundle.putInt("resize_width", i);
        bundle.putInt("resize_height", j);
        bundle.putInt("resize_x", k);
        bundle.putInt("resize_y", l);
        bundle.putBoolean("resize_allowOffScreen", flag);
        bundle.putString("resize_customClosePostition", s);
        message.setData(bundle);
        mHandler.sendMessage(message);
    }

    public void resizeOrientation(int i, int j, String s, boolean flag)
    {
        lastScreenWidth = i;
        lastScreenHeight = j;
        TapjoyLog.i("MRAIDView", (new StringBuilder()).append("resizeOrientation to dimensions: ").append(i).append("x").append(j).toString());
        Message message = mHandler.obtainMessage(1010);
        Bundle bundle = new Bundle();
        bundle.putInt("resize_width", i);
        bundle.putInt("resize_height", j);
        bundle.putBoolean("resize_allowOffScreen", flag);
        bundle.putString("resize_customClosePostition", s);
        message.setData(bundle);
        mHandler.sendMessage(message);
    }

    public WebBackForwardList restoreState(Bundle bundle)
    {
        return super.restoreState(bundle);
    }

    public WebBackForwardList saveState(Bundle bundle)
    {
        return super.saveState(bundle);
    }

    public void setListener(MraidViewListener mraidviewlistener)
    {
        mListener = mraidviewlistener;
    }

    public void setMaxSize(int i, int j)
    {
        mUtilityController.setMaxSize(i, j);
    }

    public void setOrientationProperties(boolean flag, String s)
    {
        int i;
        if (!flag)
        {
            boolean flag1;
            if (s.equals("landscape"))
            {
                flag1 = false;
            } else
            {
                flag1 = true;
            }
            i = ((flag1) ? 1 : 0);
        } else
        {
            i = -1;
        }
        ((Activity)getContext()).setRequestedOrientation(i);
    }

    public void setPlacementType(PLACEMENT_TYPE placement_type)
    {
        if (placement_type.equals(PLACEMENT_TYPE.INLINE) || placement_type.equals(PLACEMENT_TYPE.INTERSTITIAL))
        {
            placement = placement_type;
        } else
        {
            TapjoyLog.d("MRAIDView", "Incorrect placement type.");
        }
        if (placement_type.equals(PLACEMENT_TYPE.INLINE) && (orientationThread == null || !orientationThread.isAlive()))
        {
            orientationThread = new Thread(new OrientationThread());
            orientationThread.start();
        }
    }

    public void show()
    {
        mHandler.sendEmptyMessage(1003);
    }

    public void showCloseImageButton()
    {
        injectMraidJavaScript("document.getElementById(\"closeButton\").style.visibility=\"visible\";");
        TapjoyLog.d("MRAIDView", "Showing close button.");
        closeButtonState = customCloseState.OPEN;
    }

    public boolean videoPlaying()
    {
        return videoView != null;
    }

    public void videoViewCleanup()
    {
        if (videoRelativeLayout != null)
        {
            ((ViewGroup)videoRelativeLayout.getParent()).removeView(videoRelativeLayout);
            videoRelativeLayout.setVisibility(8);
            videoRelativeLayout = null;
        }
        try
        {
            if (videoView != null)
            {
                videoView.stopPlayback();
            }
            if (videoViewCallback != null)
            {
                videoViewCallback.onCustomViewHidden();
            }
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        videoView = null;
        videoViewCallback = null;
        if (this != null)
        {
            setVisibility(0);
        }
        loadUrl("javascript:try{Tapjoy.AdUnit.dispatchEvent('videoend')}catch(e){}");
    }





/*
    static int access$1102(MraidView mraidview, int i)
    {
        mraidview.mDefaultHeight = i;
        return i;
    }

*/


/*
    static int access$1202(MraidView mraidview, int i)
    {
        mraidview.mDefaultWidth = i;
        return i;
    }

*/



/*
    static android.webkit.WebChromeClient.CustomViewCallback access$1402(MraidView mraidview, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
    {
        mraidview.videoViewCallback = customviewcallback;
        return customviewcallback;
    }

*/




/*
    static VideoView access$1602(MraidView mraidview, VideoView videoview)
    {
        mraidview.videoView = videoview;
        return videoview;
    }

*/



/*
    static RelativeLayout access$1702(MraidView mraidview, RelativeLayout relativelayout)
    {
        mraidview.videoRelativeLayout = relativelayout;
        return relativelayout;
    }

*/



/*
    static ProgressBar access$1802(MraidView mraidview, ProgressBar progressbar)
    {
        mraidview.progressBar = progressbar;
        return progressbar;
    }

*/






/*
    static VIEW_STATE access$302(MraidView mraidview, VIEW_STATE view_state)
    {
        mraidview.mViewState = view_state;
        return view_state;
    }

*/







    private class customCloseState extends Enum
    {

        private static final customCloseState $VALUES[];
        public static final customCloseState HIDDEN;
        public static final customCloseState OPEN;
        public static final customCloseState UNKNOWN;

        public static customCloseState valueOf(String s)
        {
            return (customCloseState)Enum.valueOf(com/tapjoy/mraid/view/MraidView$customCloseState, s);
        }

        public static customCloseState[] values()
        {
            return (customCloseState[])$VALUES.clone();
        }

        static 
        {
            HIDDEN = new customCloseState("HIDDEN", 0);
            OPEN = new customCloseState("OPEN", 1);
            UNKNOWN = new customCloseState("UNKNOWN", 2);
            customCloseState acustomclosestate[] = new customCloseState[3];
            acustomclosestate[0] = HIDDEN;
            acustomclosestate[1] = OPEN;
            acustomclosestate[2] = UNKNOWN;
            $VALUES = acustomclosestate;
        }

        private customCloseState(String s, int i)
        {
            super(s, i);
        }
    }


    private class VIEW_STATE extends Enum
    {

        private static final VIEW_STATE $VALUES[];
        public static final VIEW_STATE DEFAULT;
        public static final VIEW_STATE EXPANDED;
        public static final VIEW_STATE HIDDEN;
        public static final VIEW_STATE LEFT_BEHIND;
        public static final VIEW_STATE OPENED;
        public static final VIEW_STATE RESIZED;

        public static VIEW_STATE valueOf(String s)
        {
            return (VIEW_STATE)Enum.valueOf(com/tapjoy/mraid/view/MraidView$VIEW_STATE, s);
        }

        public static VIEW_STATE[] values()
        {
            return (VIEW_STATE[])$VALUES.clone();
        }

        static 
        {
            DEFAULT = new VIEW_STATE("DEFAULT", 0);
            RESIZED = new VIEW_STATE("RESIZED", 1);
            EXPANDED = new VIEW_STATE("EXPANDED", 2);
            HIDDEN = new VIEW_STATE("HIDDEN", 3);
            LEFT_BEHIND = new VIEW_STATE("LEFT_BEHIND", 4);
            OPENED = new VIEW_STATE("OPENED", 5);
            VIEW_STATE aview_state[] = new VIEW_STATE[6];
            aview_state[0] = DEFAULT;
            aview_state[1] = RESIZED;
            aview_state[2] = EXPANDED;
            aview_state[3] = HIDDEN;
            aview_state[4] = LEFT_BEHIND;
            aview_state[5] = OPENED;
            $VALUES = aview_state;
        }

        private VIEW_STATE(String s, int i)
        {
            super(s, i);
        }
    }


    private class _cls2 extends Handler
    {

        final MraidView this$0;

        public void handleMessage(Message message)
        {
            Bundle bundle = message.getData();
            message.what;
            JVM INSTR tableswitch 1000 1010: default 68
        //                       1000 100
        //                       1001 607
        //                       1002 694
        //                       1003 714
        //                       1004 734
        //                       1005 74
        //                       1006 745
        //                       1007 770
        //                       1008 759
        //                       1009 781
        //                       1010 345;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12
_L1:
            super.handleMessage(message);
            return;
_L7:
            if (mListener != null)
            {
                mListener.onExpandClose();
            }
            continue; /* Loop/switch isn't completed */
_L2:
            android.view.ViewGroup.MarginLayoutParams marginlayoutparams1 = (android.view.ViewGroup.MarginLayoutParams)getLayoutParams();
            if (marginlayoutparams1 != null)
            {
                removeCloseImageButton();
                mViewState = VIEW_STATE.RESIZED;
                marginlayoutparams1.height = bundle.getInt("resize_height", marginlayoutparams1.height);
                marginlayoutparams1.width = bundle.getInt("resize_width", marginlayoutparams1.width);
                marginlayoutparams1.leftMargin = bundle.getInt("resize_x", marginlayoutparams1.leftMargin);
                marginlayoutparams1.topMargin = bundle.getInt("resize_y", marginlayoutparams1.topMargin);
                String s4 = (new StringBuilder()).append("window.mraidview.fireChangeEvent({ state: 'resized', size: { width: ").append(marginlayoutparams1.width).append(", ").append("height: ").append(marginlayoutparams1.height).append(", ").append("x: ").append(marginlayoutparams1.leftMargin).append(", ").append("y: ").append(marginlayoutparams1.topMargin).append("}});").toString();
                injectMraidJavaScript(s4);
                requestLayout();
                repositionCloseButton(bundle.getString("resize_customClosePostition"));
                showCloseImageButton();
            }
            if (mListener != null)
            {
                mListener.onResize();
            }
            continue; /* Loop/switch isn't completed */
_L12:
            android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)getLayoutParams();
            if (marginlayoutparams != null)
            {
                removeCloseImageButton();
                marginlayoutparams.height = bundle.getInt("resize_height", marginlayoutparams.height);
                marginlayoutparams.width = bundle.getInt("resize_width", marginlayoutparams.width);
                String s3 = (new StringBuilder()).append("window.mraidview.fireChangeEvent({ state: '").append(getState()).append("',").append(" size: { width: ").append((int)((float)marginlayoutparams.width / mDensity)).append(", ").append("height: ").append((int)((float)marginlayoutparams.height / mDensity)).append("}").append("});").toString();
                TapjoyLog.i("MRAIDView", (new StringBuilder()).append("resize: injection: ").append(s3).toString());
                injectMraidJavaScript(s3);
                requestLayout();
                repositionCloseButton(bundle.getString("resize_customClosePostition"));
                if (placement != PLACEMENT_TYPE.INLINE && closeButtonState == customCloseState.OPEN)
                {
                    showCloseImageButton();
                }
            }
            if (mListener != null)
            {
                mListener.onResize();
            }
            continue; /* Loop/switch isn't completed */
_L3:
            switch (_cls7..SwitchMap.com.tapjoy.mraid.view.MraidView.VIEW_STATE[mViewState.ordinal()])
            {
            case 1: // '\001'
                closeResized();
                break;

            case 2: // '\002'
                closeExpanded();
                break;

            case 3: // '\003'
                if (placement != PLACEMENT_TYPE.INLINE)
                {
                    closeWindow();
                }
                break;
            }
            continue; /* Loop/switch isn't completed */
_L4:
            setVisibility(4);
            injectMraidJavaScript("window.mraidview.fireChangeEvent({ state: 'hidden' });");
            continue; /* Loop/switch isn't completed */
_L5:
            injectMraidJavaScript("window.mraidview.fireChangeEvent({ state: 'default' });");
            setVisibility(0);
            continue; /* Loop/switch isn't completed */
_L6:
            doExpand(bundle);
            continue; /* Loop/switch isn't completed */
_L8:
            mViewState = VIEW_STATE.LEFT_BEHIND;
            continue; /* Loop/switch isn't completed */
_L10:
            playAudioImpl(bundle);
            continue; /* Loop/switch isn't completed */
_L9:
            playVideoImpl(bundle);
            continue; /* Loop/switch isn't completed */
_L11:
            String s = bundle.getString("message");
            String s1 = bundle.getString("action");
            String s2 = (new StringBuilder()).append("window.mraidview.fireErrorEvent(\"").append(s).append("\", \"").append(s1).append("\")").toString();
            injectMraidJavaScript(s2);
            if (true) goto _L1; else goto _L13
_L13:
        }

        _cls2()
        {
            this$0 = MraidView.this;
            super();
        }

        private class _cls7
        {

            static final int $SwitchMap$com$tapjoy$mraid$view$MraidView$VIEW_STATE[];

            static 
            {
                $SwitchMap$com$tapjoy$mraid$view$MraidView$VIEW_STATE = new int[VIEW_STATE.values().length];
                try
                {
                    $SwitchMap$com$tapjoy$mraid$view$MraidView$VIEW_STATE[VIEW_STATE.RESIZED.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$tapjoy$mraid$view$MraidView$VIEW_STATE[VIEW_STATE.EXPANDED.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$tapjoy$mraid$view$MraidView$VIEW_STATE[VIEW_STATE.DEFAULT.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

    }


    private class _cls4 extends WebViewClient
    {

        final MraidView this$0;

        public void onLoadResource(WebView webview, String s)
        {
        }

        public void onPageFinished(WebView webview, String s)
        {
            if (mListener != null)
            {
                mListener.onPageFinished(webview, s);
            }
            mDefaultHeight = (int)((float)getHeight() / mDensity);
            mDefaultWidth = (int)((float)getWidth() / mDensity);
            mUtilityController.init(mDensity);
            createCloseImageButton();
            if (placement == PLACEMENT_TYPE.INLINE)
            {
                removeCloseImageButton();
            }
        }

        public void onPageStarted(WebView webview, String s, Bitmap bitmap)
        {
            if (mListener != null)
            {
                mListener.onPageStarted(webview, s, bitmap);
            }
        }

        public void onReceivedError(WebView webview, int i, String s, String s1)
        {
            if (mListener != null)
            {
                mListener.onReceivedError(webview, i, s, s1);
            }
            TapjoyLog.d("MRAIDView", (new StringBuilder()).append("error:").append(s).toString());
            super.onReceivedError(webview, i, s, s1);
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            Uri uri;
            TapjoyLog.i("MRAIDView", (new StringBuilder()).append("shouldOverrideUrlLoading: ").append(s).toString());
            if (mListener != null && mListener.shouldOverrideUrlLoading(webview, s))
            {
                return true;
            }
            uri = Uri.parse(s);
            if (s.startsWith("mraid"))
            {
                return super.shouldOverrideUrlLoading(webview, s);
            }
            if (!s.startsWith("tel:"))
            {
                break MISSING_BLOCK_LABEL_173;
            }
            Intent intent1 = new Intent("android.intent.action.DIAL", Uri.parse(s));
            intent1.addFlags(0x10000000);
            getContext().startActivity(intent1);
            Exception exception;
            Intent intent;
            Exception exception1;
            return true;
            if (!s.startsWith("mailto:"))
            {
                break MISSING_BLOCK_LABEL_219;
            }
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(s));
            intent2.addFlags(0x10000000);
            getContext().startActivity(intent2);
            return true;
            try
            {
                Intent intent3 = new Intent();
                intent3.setAction("android.intent.action.VIEW");
                intent3.setData(uri);
                intent3.addFlags(0x10000000);
                getContext().startActivity(intent3);
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                try
                {
                    intent = new Intent();
                    intent.setAction("android.intent.action.VIEW");
                    intent.setData(uri);
                    intent.addFlags(0x10000000);
                    getContext().startActivity(intent);
                }
                // Misplaced declaration of an exception variable
                catch (Exception exception1)
                {
                    return false;
                }
                return true;
            }
            return true;
        }

        _cls4()
        {
            this$0 = MraidView.this;
            super();
        }
    }


    private class _cls5 extends WebChromeClient
    {

        final MraidView this$0;

        public void onCloseWindow(WebView webview)
        {
            super.onCloseWindow(webview);
            closeWindow();
        }

        public boolean onConsoleMessage(ConsoleMessage consolemessage)
        {
            if (mListener != null)
            {
                return mListener.onConsoleMessage(consolemessage);
            } else
            {
                return super.onConsoleMessage(consolemessage);
            }
        }

        public void onHideCustomView()
        {
            super.onHideCustomView();
        }

        public boolean onJsAlert(WebView webview, String s, String s1, JsResult jsresult)
        {
            TapjoyLog.d("MRAIDView", s1);
            return false;
        }

        public void onShowCustomView(View view, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
        {
            FrameLayout framelayout;
label0:
            {
                TapjoyLog.i("MRAIDView", "-- onShowCustomView --");
                super.onShowCustomView(view, customviewcallback);
                videoViewCallback = customviewcallback;
                if (view instanceof FrameLayout)
                {
                    framelayout = (FrameLayout)view;
                    if ((framelayout.getFocusedChild() instanceof VideoView) && (ctx instanceof Activity))
                    {
                        break label0;
                    }
                }
                return;
            }
            Activity activity = (Activity)ctx;
            videoView = (VideoView)framelayout.getFocusedChild();
            framelayout.removeView(videoView);
            if (videoRelativeLayout == null)
            {
                videoRelativeLayout = new RelativeLayout(ctx);
                videoRelativeLayout.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
                videoRelativeLayout.setBackgroundColor(0xff000000);
            }
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
            layoutparams.addRule(13);
            videoView.setLayoutParams(layoutparams);
            progressBar = new ProgressBar(ctx, null, 0x101007a);
            progressBar.setVisibility(0);
            android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            layoutparams1.addRule(13);
            progressBar.setLayoutParams(layoutparams1);
            videoRelativeLayout.addView(videoView);
            videoRelativeLayout.addView(progressBar);
            activity.getWindow().addContentView(videoRelativeLayout, new android.view.ViewGroup.LayoutParams(-1, -1));
            (new Thread(new VideoLoadingThread())).start();
            setVisibility(8);
            class _cls1
                implements android.media.MediaPlayer.OnPreparedListener
            {

                final _cls5 this$1;

                public void onPrepared(MediaPlayer mediaplayer)
                {
                    TapjoyLog.i("MRAIDView", "** ON PREPARED **");
                    TapjoyLog.i("MRAIDView", (new StringBuilder()).append("isPlaying: ").append(mediaplayer.isPlaying()).toString());
                    if (!mediaplayer.isPlaying())
                    {
                        mediaplayer.start();
                    }
                }

                _cls1()
                {
                    this$1 = _cls5.this;
                    super();
                }
            }

            videoView.setOnPreparedListener(new _cls1());
            class _cls2
                implements android.media.MediaPlayer.OnCompletionListener
            {

                final _cls5 this$1;

                public void onCompletion(MediaPlayer mediaplayer)
                {
                    TapjoyLog.i("MRAIDView", "** ON COMPLETION **");
                    videoViewCleanup();
                }

                _cls2()
                {
                    this$1 = _cls5.this;
                    super();
                }
            }

            videoView.setOnCompletionListener(new _cls2());
            class _cls3
                implements android.media.MediaPlayer.OnErrorListener
            {

                final _cls5 this$1;

                public boolean onError(MediaPlayer mediaplayer, int i, int j)
                {
                    TapjoyLog.i("MRAIDView", "** ON ERROR **");
                    videoViewCleanup();
                    return false;
                }

                _cls3()
                {
                    this$1 = _cls5.this;
                    super();
                }
            }

            videoView.setOnErrorListener(new _cls3());
            videoView.start();
        }

        _cls5()
        {
            this$0 = MraidView.this;
            super();
        }

        private class VideoLoadingThread
            implements Runnable
        {

            final MraidView this$0;

            public void run()
            {
                int i = 0;
_L2:
                if (videoView == null || videoView.isPlaying())
                {
                    break MISSING_BLOCK_LABEL_41;
                }
                Thread.sleep(50L);
                if ((i += 50) < 10000)
                {
                    continue; /* Loop/switch isn't completed */
                }
                class _cls1
                    implements Runnable
                {

                    final VideoLoadingThread this$1;

                    public void run()
                    {
                        if (progressBar != null)
                        {
                            progressBar.setVisibility(8);
                        }
                        class VideoRunningThread
                            implements Runnable
                        {

                            private boolean playing;
                            final VideoLoadingThread this$1;

                            public void run()
                            {
_L5:
                                if (videoView == null) goto _L2; else goto _L1
_L1:
                                Thread.sleep(100L);
                                if (playing == videoView.isPlaying()) goto _L4; else goto _L3
_L3:
                                playing = videoView.isPlaying();
                                String s;
                                if (playing)
                                {
                                    s = "videoplay";
                                } else
                                {
                                    s = "videopause";
                                }
                                try
                                {
                                    loadUrl((new StringBuilder()).append("javascript:try{Tapjoy.AdUnit.dispatchEvent('").append(s).append("')}catch(e){}").toString());
                                }
                                catch (Exception exception1) { }
_L4:
                                if (true) goto _L5; else goto _L2
_L2:
                            }

                                public VideoRunningThread()
                                {
                                    this$1 = VideoLoadingThread.this;
                                    super();
                                    playing = false;
                                }
                        }

                        (new Thread(new VideoRunningThread())).start();
                    }

                    _cls1()
                    {
                        this$1 = VideoLoadingThread.this;
                        super();
                    }
                }

                ((Activity)ctx).runOnUiThread(new _cls1());
                return;
                Exception exception;
                exception;
                if (true) goto _L2; else goto _L1
_L1:
            }

            public VideoLoadingThread()
            {
                this$0 = MraidView.this;
                super();
            }
        }

    }


    private class _cls3
        implements android.view.View.OnTouchListener
    {

        final MraidView this$0;

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            TapjoyLog.i("MRAIDView", "background touch called");
            return true;
        }

        _cls3()
        {
            this$0 = MraidView.this;
            super();
        }
    }


    private class PLACEMENT_TYPE extends Enum
    {

        private static final PLACEMENT_TYPE $VALUES[];
        public static final PLACEMENT_TYPE INLINE;
        public static final PLACEMENT_TYPE INTERSTITIAL;

        public static PLACEMENT_TYPE valueOf(String s)
        {
            return (PLACEMENT_TYPE)Enum.valueOf(com/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE, s);
        }

        public static PLACEMENT_TYPE[] values()
        {
            return (PLACEMENT_TYPE[])$VALUES.clone();
        }

        static 
        {
            INLINE = new PLACEMENT_TYPE("INLINE", 0);
            INTERSTITIAL = new PLACEMENT_TYPE("INTERSTITIAL", 1);
            PLACEMENT_TYPE aplacement_type[] = new PLACEMENT_TYPE[2];
            aplacement_type[0] = INLINE;
            aplacement_type[1] = INTERSTITIAL;
            $VALUES = aplacement_type;
        }

        private PLACEMENT_TYPE(String s, int i)
        {
            super(s, i);
        }
    }


    private class ScrollEater extends android.view.GestureDetector.SimpleOnGestureListener
    {

        final MraidView this$0;

        public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
        {
            return true;
        }

        ScrollEater()
        {
            this$0 = MraidView.this;
            super();
        }
    }


    private class _cls1
        implements Runnable
    {

        final MraidView this$0;
        final String val$url;

        public void run()
        {
            if (URLUtil.isValidUrl(url))
            {
                if (url.startsWith("javascript"))
                {
                    loadUrl(url);
                    return;
                } else
                {
                    MraidHTTPTask mraidhttptask = new MraidHTTPTask(null);
                    String as[] = new String[1];
                    as[0] = url;
                    mraidhttptask.execute(as);
                    return;
                }
            } else
            {
                loadDataWithBaseURL(null, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\"><html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"><title>Connection not Established</title></head><h2>Connection Not Properly Established</h2><body></body></html>", "text/html", "utf-8", null);
                return;
            }
        }

        _cls1()
        {
            this$0 = MraidView.this;
            url = s;
            super();
        }

        private class MraidHTTPTask extends AsyncTask
        {

            TapjoyHttpURLResponse httpResult;
            TapjoyURLConnection tapjoyConnection;
            final MraidView this$0;
            String url;

            protected volatile Object doInBackground(Object aobj[])
            {
                return doInBackground((String[])aobj);
            }

            protected transient Void doInBackground(String as[])
            {
                url = as[0];
                try
                {
                    tapjoyConnection = new TapjoyURLConnection();
                    httpResult = tapjoyConnection.getResponseFromURL(url);
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                }
                return null;
            }

            protected volatile void onPostExecute(Object obj)
            {
                onPostExecute((Void)obj);
            }

            protected void onPostExecute(Void void1)
            {
                if (httpResult.statusCode == 0 || httpResult.response == null)
                {
                    TapjoyLog.e("MRAIDView", "Connection not properly established");
                    if (mListener != null)
                    {
                        mListener.onReceivedError(MraidView.this, 0, "Connection not properly established", url);
                        return;
                    }
                    break MISSING_BLOCK_LABEL_198;
                }
                try
                {
                    if (httpResult.statusCode == 302 && httpResult.redirectURL != null && httpResult.redirectURL.length() > 0)
                    {
                        TapjoyLog.i("MRAIDView", (new StringBuilder()).append("302 redirectURL detected: ").append(httpResult.redirectURL).toString());
                        loadUrlStandard(httpResult.redirectURL);
                        return;
                    }
                }
                catch (Exception exception)
                {
                    TapjoyLog.w("MRAIDView", (new StringBuilder()).append("error in loadURL ").append(exception).toString());
                    exception.printStackTrace();
                    return;
                }
                loadDataWithBaseURL(url, httpResult.response, "text/html", "utf-8", url);
            }

            private MraidHTTPTask()
            {
                this$0 = MraidView.this;
                super();
            }

            MraidHTTPTask(_cls1 _pcls1)
            {
                this();
            }
        }

    }


    private class OrientationThread
        implements Runnable
    {

        final MraidView this$0;

        public void run()
        {
            while (!viewDetached) 
            {
                try
                {
                    Thread.sleep(250L);
                    checkForOrientationChange();
                }
                catch (Exception exception) { }
            }
        }

        public OrientationThread()
        {
            this$0 = MraidView.this;
            super();
        }
    }


    private class Action extends Enum
    {

        private static final Action $VALUES[];
        public static final Action PLAY_AUDIO;
        public static final Action PLAY_VIDEO;

        public static Action valueOf(String s)
        {
            return (Action)Enum.valueOf(com/tapjoy/mraid/view/MraidView$Action, s);
        }

        public static Action[] values()
        {
            return (Action[])$VALUES.clone();
        }

        static 
        {
            PLAY_AUDIO = new Action("PLAY_AUDIO", 0);
            PLAY_VIDEO = new Action("PLAY_VIDEO", 1);
            Action aaction[] = new Action[2];
            aaction[0] = PLAY_AUDIO;
            aaction[1] = PLAY_VIDEO;
            $VALUES = aaction;
        }

        private Action(String s, int i)
        {
            super(s, i);
        }
    }


    private class _cls6
        implements Player
    {

        final MraidView this$0;

        public void onComplete()
        {
            FrameLayout framelayout = (FrameLayout)getRootView().findViewById(101);
            ((ViewGroup)framelayout.getParent()).removeView(framelayout);
            setVisibility(0);
        }

        public void onError()
        {
            onComplete();
        }

        public void onPrepared()
        {
        }

        _cls6()
        {
            this$0 = MraidView.this;
            super();
        }
    }

}
