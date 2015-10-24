.class Lacw;
.super Ljava/lang/Thread;
.source "BatteryChargingHelper.java"


# instance fields
.field final synthetic a:Lacu;

.field private volatile b:Z

.field private volatile c:Z

.field private d:I


# direct methods
.method private constructor <init>(Lacu;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 120
    iput-object p1, p0, Lacw;->a:Lacu;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 121
    iput-boolean v0, p0, Lacw;->b:Z

    .line 122
    iput-boolean v0, p0, Lacw;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lacu;Lacv;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lacw;-><init>(Lacu;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lacw;->b:Z

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lacw;->c:Z

    .line 128
    iput p1, p0, Lacw;->d:I

    .line 129
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lacw;->c:Z

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lacw;->b:Z

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lacw;->c:Z

    .line 138
    invoke-virtual {p0}, Lacw;->interrupt()V

    .line 139
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const-wide/32 v8, 0xea60

    .line 143
    iget-object v0, p0, Lacw;->a:Lacu;

    invoke-static {v0}, Lacu;->a(Lacu;)Lb;

    move-result-object v0

    invoke-interface {v0}, Lb;->a()J

    move-result-wide v1

    .line 144
    iget v0, p0, Lacw;->d:I

    .line 146
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lacw;->b:Z

    if-nez v3, :cond_1

    .line 148
    const-wide/32 v3, 0xea60

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_1
    iget-boolean v3, p0, Lacw;->b:Z

    if-nez v3, :cond_0

    .line 156
    iget-object v3, p0, Lacw;->a:Lacu;

    invoke-static {v3}, Lacu;->a(Lacu;)Lb;

    move-result-object v3

    invoke-interface {v3}, Lb;->a()J

    move-result-wide v3

    .line 157
    sub-long v5, v3, v1

    .line 158
    cmp-long v7, v5, v8

    if-ltz v7, :cond_0

    .line 159
    long-to-int v1, v5

    add-int/2addr v0, v1

    .line 161
    iget-object v1, p0, Lacw;->a:Lacu;

    invoke-static {v1, v0}, Lacu;->a(Lacu;I)V

    .line 162
    const v1, 0x927c0

    if-lt v0, v1, :cond_2

    .line 163
    const-string v0, "BatteryChargingHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Health charging done: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lacw;->c:Z

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lacw;->b:Z

    .line 173
    iget-object v0, p0, Lacw;->a:Lacu;

    invoke-static {v0}, Lacu;->b(Lacu;)V

    .line 176
    return-void

    .line 149
    :catch_0
    move-exception v3

    .line 151
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_2
    move-wide v1, v3

    goto :goto_0
.end method
