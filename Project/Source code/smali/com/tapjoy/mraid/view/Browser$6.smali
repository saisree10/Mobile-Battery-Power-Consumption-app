.class Lcom/tapjoy/mraid/view/Browser$6;
.super Landroid/webkit/WebChromeClient;
.source "Browser.java"


# instance fields
.field final synthetic this$0:Lcom/tapjoy/mraid/view/Browser;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/Browser;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/tapjoy/mraid/view/Browser$6;->this$0:Lcom/tapjoy/mraid/view/Browser;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 251
    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 252
    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 253
    const/16 v1, 0x64

    if-ne p2, v1, :cond_0

    .line 254
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 255
    :cond_0
    return-void
.end method
