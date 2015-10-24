.class public Lzj;
.super Landroid/webkit/WebChromeClient;
.source "WebActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/ui/MainTitle;

.field final synthetic b:Landroid/widget/ProgressBar;

.field final synthetic c:Lcom/dianxinos/optimizer/module/messagebox/WebActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/optimizer/module/messagebox/WebActivity;Lcom/dianxinos/powermanager/ui/MainTitle;Landroid/widget/ProgressBar;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lzj;->c:Lcom/dianxinos/optimizer/module/messagebox/WebActivity;

    iput-object p2, p0, Lzj;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    iput-object p3, p0, Lzj;->b:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 129
    iget-object v0, p0, Lzj;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lzj;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 132
    :cond_0
    const/16 v0, 0xa

    if-ge p2, v0, :cond_2

    .line 133
    iget-object v0, p0, Lzj;->b:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lzj;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 153
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 154
    :cond_1
    return-void

    .line 134
    :cond_2
    const/16 v0, 0x64

    if-ge p2, v0, :cond_3

    .line 135
    iget-object v0, p0, Lzj;->b:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lzj;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 137
    :cond_3
    iget-object v0, p0, Lzj;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lzj;->c:Lcom/dianxinos/optimizer/module/messagebox/WebActivity;

    invoke-static {v0}, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->b(Lcom/dianxinos/optimizer/module/messagebox/WebActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lzj;->c:Lcom/dianxinos/optimizer/module/messagebox/WebActivity;

    invoke-static {v0}, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->c(Lcom/dianxinos/optimizer/module/messagebox/WebActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lzj;->c:Lcom/dianxinos/optimizer/module/messagebox/WebActivity;

    invoke-static {v0, v2}, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->b(Lcom/dianxinos/optimizer/module/messagebox/WebActivity;Z)Z

    .line 144
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 146
    :try_start_0
    const-string v1, "lt"

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lzj;->c:Lcom/dianxinos/optimizer/module/messagebox/WebActivity;

    invoke-static {v4}, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->d(Lcom/dianxinos/optimizer/module/messagebox/WebActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 148
    const/4 v1, 0x1

    iget-object v2, p0, Lzj;->c:Lcom/dianxinos/optimizer/module/messagebox/WebActivity;

    const-string v3, "fwlc"

    invoke-static {v1, v2, v3, v0}, Lbal;->a(ZLandroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lzj;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    invoke-virtual {v0, p2}, Lcom/dianxinos/powermanager/ui/MainTitle;->setTitleTextMiddleLeftOfRightIcon(Ljava/lang/String;)V

    .line 125
    return-void
.end method
