.class Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;
.super Landroid/os/AsyncTask;
.source "TJAdUnitJSBridge.java"


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJAdUnitJSBridge;

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1148
    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;->webView:Landroid/webkit/WebView;

    .line 1149
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1141
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;->doInBackground([Ljava/lang/Boolean;)[Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)[Ljava/lang/Boolean;
    .locals 0
    .parameter

    .prologue
    .line 1153
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1141
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;->onPostExecute([Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Boolean;)V
    .locals 4
    .parameter

    .prologue
    .line 1158
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1159
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1161
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    #getter for: Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->access$200(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v3, Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView$1;-><init>(Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;ZZ)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1215
    return-void
.end method
