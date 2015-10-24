.class public Liy;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;

.field public j:J

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:I

.field public q:Z

.field private r:Ljw;

.field private s:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljw;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Liy;->s:Landroid/content/Context;

    .line 135
    iput-object p2, p0, Liy;->r:Ljw;

    .line 136
    return-void
.end method

.method private b(I)I
    .locals 1
    .parameter

    .prologue
    .line 194
    invoke-direct {p0, p1}, Liy;->c(I)I

    move-result v0

    return v0
.end method

.method private c(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 205
    iget-wide v1, p0, Liy;->j:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    if-eq p1, v0, :cond_0

    .line 211
    iget-object v1, p0, Liy;->r:Ljw;

    invoke-interface {v1}, Ljw;->d()Ljava/lang/Long;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_2

    iget-wide v2, p0, Liy;->j:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 213
    const/4 v0, 0x3

    goto :goto_0

    .line 215
    :cond_2
    iget v1, p0, Liy;->p:I

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Liy;->r:Ljw;

    invoke-interface {v1}, Ljw;->e()Ljava/lang/Long;

    move-result-object v1

    .line 218
    if-eqz v1, :cond_0

    iget-wide v2, p0, Liy;->j:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 220
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 147
    iget-object v1, p0, Liy;->r:Ljw;

    invoke-interface {v1}, Ljw;->b()Ljava/lang/Integer;

    move-result-object v1

    .line 148
    if-nez v1, :cond_1

    .line 149
    const/4 v0, 0x2

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 154
    iget-object v0, p0, Liy;->r:Ljw;

    invoke-interface {v0}, Ljw;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Liy;->r:Ljw;

    invoke-interface {v0}, Ljw;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    const/4 v0, 0x5

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Liy;->b(I)I

    move-result v0

    goto :goto_0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 166
    packed-switch p1, :pswitch_data_0

    .line 183
    const-string v0, "unknown error with network connectivity"

    :goto_0
    return-object v0

    .line 168
    :pswitch_0
    const-string v0, "download size exceeds recommended limit for mobile network"

    goto :goto_0

    .line 171
    :pswitch_1
    const-string v0, "download size exceeds limit for mobile network"

    goto :goto_0

    .line 174
    :pswitch_2
    const-string v0, "no network connection available"

    goto :goto_0

    .line 177
    :pswitch_3
    const-string v0, "download cannot use the current network connection because it is roaming"

    goto :goto_0

    .line 180
    :pswitch_4
    const-string v0, "download was requested to not use the current network type"

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
