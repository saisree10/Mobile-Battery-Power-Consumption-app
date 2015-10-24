.class Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;
.super Ljava/util/TimerTask;
.source "TapjoyConnectCore.java"


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectCore;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TapjoyConnectCore;)V
    .locals 0
    .parameter

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyConnectCore;Lcom/tapjoy/TapjoyConnectCore$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1100
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;-><init>(Lcom/tapjoy/TapjoyConnectCore;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x3c

    .line 1104
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lcom/tapjoy/TapjoyConnectCore;->access$214(Lcom/tapjoy/TapjoyConnectCore;J)J

    .line 1106
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "elapsed_time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    #getter for: Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J
    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->access$200(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    #getter for: Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J
    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->access$200(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v2

    div-long/2addr v2, v6

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    #getter for: Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J
    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->access$200(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v2

    div-long/2addr v2, v6

    rem-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$300()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tjcPrefrences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1109
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1110
    const-string v1, "tapjoy_elapsed_time"

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    #getter for: Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J
    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->access$200(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1111
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1114
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    #getter for: Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J
    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->access$200(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v0

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1116
    const-string v0, "TapjoyConnect"

    const-string v1, "timer done..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$400()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$400()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1121
    const-string v0, "TapjoyConnect"

    const-string v1, "Calling PPA actionComplete..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->actionComplete(Ljava/lang/String;)V

    .line 1126
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->cancel()Z

    .line 1128
    :cond_1
    return-void
.end method
