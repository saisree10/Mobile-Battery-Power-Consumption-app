.class public Lcom/tapjoy/TapjoyFullScreenAdWebView;
.super Lcom/tapjoy/TJAdUnitView;
.source "TapjoyFullScreenAdWebView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Full Screen Ad"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnitView;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 18
    const-string v0, "Full Screen Ad"

    const-string v1, "TapjoyFullScreenAdWebView onCreate"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-super {p0, p1}, Lcom/tapjoy/TJAdUnitView;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->viewDidOpen(I)V

    .line 22
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-super {p0}, Lcom/tapjoy/TJAdUnitView;->onDestroy()V

    .line 29
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyFullScreenAdWebView;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->viewWillClose(I)V

    .line 32
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->viewDidClose(I)V

    .line 34
    :cond_0
    return-void
.end method
