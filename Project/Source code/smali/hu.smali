.class Lhu;
.super Ljava/lang/Thread;
.source "EventReporter.java"


# instance fields
.field final synthetic a:Lhs;


# direct methods
.method private constructor <init>(Lhs;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lhu;->a:Lhs;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhs;Lht;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lhu;-><init>(Lhs;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 210
    move v0, v1

    .line 211
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 212
    iget-object v2, p0, Lhu;->a:Lhs;

    invoke-static {v2}, Lhs;->a(Lhs;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 218
    :goto_1
    const-wide/32 v2, 0xea60

    :try_start_0
    invoke-static {v2, v3}, Lhu;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v2

    .line 220
    const-string v3, "EventReporter"

    const-string v4, "ReportThread is being interrupted"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 223
    :cond_1
    return-void
.end method
