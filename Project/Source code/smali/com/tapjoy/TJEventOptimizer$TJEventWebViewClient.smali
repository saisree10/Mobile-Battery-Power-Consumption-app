.class Lcom/tapjoy/TJEventOptimizer$TJEventWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "TJEventOptimizer.java"


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJEventOptimizer;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJEventOptimizer;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/tapjoy/TJEventOptimizer$TJEventWebViewClient;->this$0:Lcom/tapjoy/TJEventOptimizer;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJEventOptimizer;Lcom/tapjoy/TJEventOptimizer$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/tapjoy/TJEventOptimizer$TJEventWebViewClient;-><init>(Lcom/tapjoy/TJEventOptimizer;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/tapjoy/TJEventOptimizer$TJEventWebViewClient;->this$0:Lcom/tapjoy/TJEventOptimizer;

    #getter for: Lcom/tapjoy/TJEventOptimizer;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/tapjoy/TJEventOptimizer;->access$400(Lcom/tapjoy/TJEventOptimizer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "boostrap html loaded successfully"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/tapjoy/TJEventOptimizer$TJEventWebViewClient;->this$0:Lcom/tapjoy/TJEventOptimizer;

    #getter for: Lcom/tapjoy/TJEventOptimizer;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/tapjoy/TJEventOptimizer;->access$400(Lcom/tapjoy/TJEventOptimizer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method
