.class Lcom/tapjoy/TJEventOptimizer$TJEventTimerTask;
.super Ljava/util/TimerTask;
.source "TJEventOptimizer.java"


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJEventOptimizer;

.field token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJEventOptimizer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/tapjoy/TJEventOptimizer$TJEventTimerTask;->this$0:Lcom/tapjoy/TJEventOptimizer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 180
    iput-object p2, p0, Lcom/tapjoy/TJEventOptimizer$TJEventTimerTask;->token:Ljava/lang/String;

    .line 181
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Lcom/tapjoy/TJEventOptimizer$TJEventTimerTask;->this$0:Lcom/tapjoy/TJEventOptimizer;

    #getter for: Lcom/tapjoy/TJEventOptimizer;->events:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/tapjoy/TJEventOptimizer;->access$500(Lcom/tapjoy/TJEventOptimizer;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJEventOptimizer$TJEventTimerTask;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJEvent;

    .line 186
    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/tapjoy/TJEventOptimizer$TJEventTimerTask;->this$0:Lcom/tapjoy/TJEventOptimizer;

    #getter for: Lcom/tapjoy/TJEventOptimizer;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/tapjoy/TJEventOptimizer;->access$400(Lcom/tapjoy/TJEventOptimizer;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event optimization call timed out for event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tapjoy/TJEvent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fall through to full event call"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/tapjoy/TJEventOptimizer$TJEventTimerTask;->this$0:Lcom/tapjoy/TJEventOptimizer;

    iget-object v1, p0, Lcom/tapjoy/TJEventOptimizer$TJEventTimerTask;->token:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJEventOptimizer;->eventOptimizationCallback(Ljava/lang/String;Z)V

    .line 191
    :cond_0
    return-void
.end method
