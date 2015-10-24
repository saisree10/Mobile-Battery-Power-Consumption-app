.class Lcom/tapjoy/TJEventOptimizer$2;
.super Ljava/lang/Object;
.source "TJEventOptimizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJEventOptimizer;

.field final synthetic val$params:Ljava/lang/String;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJEventOptimizer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/tapjoy/TJEventOptimizer$2;->this$0:Lcom/tapjoy/TJEventOptimizer;

    iput-object p2, p0, Lcom/tapjoy/TJEventOptimizer$2;->val$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/TJEventOptimizer$2;->val$params:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:window.eventsProxy.processEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJEventOptimizer$2;->val$token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJEventOptimizer$2;->val$params:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/tapjoy/TJEventOptimizer$TJEventTimerTask;

    iget-object v2, p0, Lcom/tapjoy/TJEventOptimizer$2;->this$0:Lcom/tapjoy/TJEventOptimizer;

    iget-object v3, p0, Lcom/tapjoy/TJEventOptimizer$2;->val$token:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TJEventOptimizer$TJEventTimerTask;-><init>(Lcom/tapjoy/TJEventOptimizer;Ljava/lang/String;)V

    .line 116
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 117
    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 119
    iget-object v1, p0, Lcom/tapjoy/TJEventOptimizer$2;->this$0:Lcom/tapjoy/TJEventOptimizer;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJEventOptimizer;->loadUrl(Ljava/lang/String;)V

    .line 121
    return-void
.end method
