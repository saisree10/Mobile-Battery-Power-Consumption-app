.class public Lcom/dianxinos/powermanager/menu/HelperActivity;
.super Laao;
.source "HelperActivity.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Laao;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/dianxinos/powermanager/menu/HelperActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/HelperActivity;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_DXR_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.dianxinos.dxbs"

    invoke-static {v1}, Lazy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/HelperActivity;->a:Ljava/lang/String;

    .line 25
    invoke-virtual {p0, v3}, Lcom/dianxinos/powermanager/menu/HelperActivity;->requestWindowFeature(I)Z

    .line 26
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/HelperActivity;->setContentView(I)V

    .line 27
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07011d

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/HelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 28
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 29
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 31
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 32
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 33
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 34
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 35
    new-instance v1, Lcom/dianxinos/powermanager/menu/HelperActivity$JavaScriptInterface;

    invoke-direct {v1, p0}, Lcom/dianxinos/powermanager/menu/HelperActivity$JavaScriptInterface;-><init>(Lcom/dianxinos/powermanager/menu/HelperActivity;)V

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/menu/HelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v2, 0x7f09008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/help/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0370

    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/menu/HelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 38
    return-void
.end method
