.class public Lacu;
.super Ljava/lang/Object;
.source "BatteryChargingHelper.java"


# instance fields
.field private a:Lacw;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private volatile e:I

.field private f:Ladh;

.field private g:Lb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const v0, 0x927c0

    iput v0, p0, Lacu;->d:I

    .line 33
    const/16 v0, 0x66

    iput v0, p0, Lacu;->e:I

    .line 38
    iput-object p1, p0, Lacu;->b:Landroid/content/Context;

    .line 39
    iget-object v0, p0, Lacu;->b:Landroid/content/Context;

    invoke-static {v0}, Ladh;->a(Landroid/content/Context;)Ladh;

    move-result-object v0

    iput-object v0, p0, Lacu;->f:Ladh;

    .line 40
    iput-object p2, p0, Lacu;->g:Lb;

    .line 41
    return-void
.end method

.method static synthetic a(Lacu;)Lb;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lacu;->g:Lb;

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    const v1, 0xea60

    .line 101
    div-int v0, p1, v1

    mul-int/2addr v0, v1

    .line 102
    iput v0, p0, Lacu;->c:I

    .line 103
    iget-object v0, p0, Lacu;->f:Ladh;

    iget v1, p0, Lacu;->c:I

    invoke-virtual {v0, v1}, Ladh;->b(I)V

    .line 105
    iget v0, p0, Lacu;->c:I

    invoke-direct {p0, v0}, Lacu;->b(I)V

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.dxbs.HEALTHCHARGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lacu;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method static synthetic a(Lacu;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lacu;->a(I)V

    return-void
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    const v1, 0x927c0

    .line 111
    if-ge p1, v1, :cond_0

    .line 112
    const/16 v0, 0x66

    iput v0, p0, Lacu;->e:I

    .line 113
    sub-int v0, v1, p1

    iput v0, p0, Lacu;->d:I

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    const/16 v0, 0x67

    iput v0, p0, Lacu;->e:I

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lacu;->d:I

    goto :goto_0
.end method

.method static synthetic b(Lacu;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Lacu;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lacu;->a:Lacw;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lacu;->a:Lacw;

    invoke-virtual {v0}, Lacw;->b()V

    .line 81
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lacu;->a:Lacw;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lacu;->c:I

    .line 83
    iget-object v0, p0, Lacu;->f:Ladh;

    iget v1, p0, Lacu;->c:I

    invoke-virtual {v0, v1}, Ladh;->b(I)V

    .line 84
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lacu;->a:Lacw;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lacw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lacw;-><init>(Lacu;Lacv;)V

    iput-object v0, p0, Lacu;->a:Lacw;

    .line 52
    :cond_0
    iget-object v0, p0, Lacu;->a:Lacw;

    invoke-virtual {v0}, Lacw;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lacu;->f:Ladh;

    invoke-virtual {v0}, Ladh;->b()I

    move-result v0

    .line 56
    invoke-direct {p0, v0}, Lacu;->b(I)V

    .line 57
    iget-object v1, p0, Lacu;->a:Lacw;

    invoke-virtual {v1, v0}, Lacw;->a(I)V

    .line 60
    :try_start_0
    iget-object v0, p0, Lacu;->a:Lacw;

    invoke-virtual {v0}, Lacw;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_1
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-string v1, "BatteryChargingHelper"

    const-string v2, "ChargingTimer error"

    invoke-static {v1, v2, v0}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lacu;->e()V

    .line 72
    iget-object v0, p0, Lacu;->a:Lacw;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lacu;->a:Lacw;

    invoke-virtual {v0}, Lacw;->b()V

    .line 75
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lacu;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lacu;->d:I

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method
