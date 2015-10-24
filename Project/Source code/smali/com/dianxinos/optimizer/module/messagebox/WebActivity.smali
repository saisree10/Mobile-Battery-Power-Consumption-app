.class public Lcom/dianxinos/optimizer/module/messagebox/WebActivity;
.super Laao;
.source "WebActivity.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:J

.field private d:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Laao;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->a:Z

    .line 35
    iput-boolean v0, p0, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->b:Z

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/optimizer/module/messagebox/WebActivity;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->c:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/dianxinos/optimizer/module/messagebox/WebActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static synthetic a(Lcom/dianxinos/optimizer/module/messagebox/WebActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->a:Z

    return p1
.end method

.method public static synthetic b(Lcom/dianxinos/optimizer/module/messagebox/WebActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->a:Z

    return v0
.end method

.method public static synthetic b(Lcom/dianxinos/optimizer/module/messagebox/WebActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->b:Z

    return p1
.end method

.method public static synthetic c(Lcom/dianxinos/optimizer/module/messagebox/WebActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->b:Z

    return v0
.end method

.method public static synthetic d(Lcom/dianxinos/optimizer/module/messagebox/WebActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->c:J

    return-wide v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->c:J

    .line 42
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->finish()V

    .line 49
    :cond_0
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f0300a6

    invoke-virtual {p0, v0}, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->setContentView(I)V

    .line 51
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07011d

    invoke-virtual {p0, v0}, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    .line 52
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07028a

    invoke-virtual {p0, v0}, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 53
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070007

    invoke-virtual {p0, v1}, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 54
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/dianxinos/powermanager/ui/MainTitle;->setTitleTextMiddleLeftOfRightIcon(Ljava/lang/String;)V

    .line 55
    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020450

    invoke-virtual {v1, v3}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 56
    new-instance v3, Lzg;

    invoke-direct {v3, p0}, Lzg;-><init>(Lcom/dianxinos/optimizer/module/messagebox/WebActivity;)V

    invoke-virtual {v1, v3}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02048d

    invoke-virtual {v1, v3}, Lcom/dianxinos/powermanager/ui/MainTitle;->setRightButtonIcon(I)V

    .line 63
    new-instance v3, Lzh;

    invoke-direct {v3, p0}, Lzh;-><init>(Lcom/dianxinos/optimizer/module/messagebox/WebActivity;)V

    invoke-virtual {v1, v3}, Lcom/dianxinos/powermanager/ui/MainTitle;->setRightButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v3, p0, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 76
    iget-object v3, p0, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    new-instance v4, Lzi;

    invoke-direct {v4, p0}, Lzi;-><init>(Lcom/dianxinos/optimizer/module/messagebox/WebActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 120
    iget-object v3, p0, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    new-instance v4, Lzj;

    invoke-direct {v4, p0, v1, v0}, Lzj;-><init>(Lcom/dianxinos/optimizer/module/messagebox/WebActivity;Lcom/dianxinos/powermanager/ui/MainTitle;Landroid/widget/ProgressBar;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 157
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 158
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 159
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 160
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 161
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 162
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 164
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 169
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 171
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Laao;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
