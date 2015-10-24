.class public Ladg;
.super Ljava/lang/Object;
.source "BatteryPercentFixer.java"


# instance fields
.field private a:I

.field private b:Landroid/content/SharedPreferences;

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Landroid/app/AlarmManager;

.field private f:Landroid/app/PendingIntent;

.field private g:J

.field private h:J

.field private i:I

.field private j:J

.field private k:I

.field private l:I

.field private m:I

.field private n:Laff;

.field private o:Lb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v2, p0, Ladg;->c:Z

    .line 54
    invoke-static {}, Lazf;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lazf;->b:Z

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ladg;->c:Z

    .line 58
    iput-object p1, p0, Ladg;->d:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Ladg;->d:Landroid/content/Context;

    const-string v1, "battery_fix_config"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ladg;->b:Landroid/content/SharedPreferences;

    .line 60
    iget-object v0, p0, Ladg;->b:Landroid/content/SharedPreferences;

    const-string v1, "fixed_percent"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ladg;->a:I

    .line 61
    iget-object v0, p0, Ladg;->d:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Ladg;->e:Landroid/app/AlarmManager;

    .line 62
    iget-object v0, p0, Ladg;->d:Landroid/content/Context;

    invoke-static {v0}, Laff;->a(Landroid/content/Context;)Laff;

    move-result-object v0

    iput-object v0, p0, Ladg;->n:Laff;

    .line 63
    iput-object p2, p0, Ladg;->o:Lb;

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Ladg;->f:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Ladg;->e:Landroid/app/AlarmManager;

    iget-object v1, p0, Ladg;->f:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Ladg;->f:Landroid/app/PendingIntent;

    .line 267
    :cond_0
    return-void
.end method

.method private a(IIZ)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Ladg;->o:Lb;

    invoke-interface {v0}, Lb;->a()J

    move-result-wide v1

    .line 131
    iget v0, p0, Ladg;->l:I

    if-ne v0, p1, :cond_2

    .line 132
    iget-wide v3, p0, Ladg;->j:J

    sub-long v3, v1, v3

    .line 134
    const/4 v0, 0x0

    .line 135
    iget-wide v5, p0, Ladg;->h:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 136
    long-to-float v0, v3

    iget-wide v3, p0, Ladg;->h:J

    long-to-float v3, v3

    div-float/2addr v0, v3

    .line 145
    :cond_0
    if-eqz p3, :cond_1

    .line 146
    rsub-int/lit8 v3, p1, 0x64

    div-int v3, p2, v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    iput-wide v3, p0, Ladg;->h:J

    .line 150
    :goto_0
    iget-wide v3, p0, Ladg;->h:J

    long-to-float v3, v3

    const/high16 v4, 0x3f80

    sub-float v0, v4, v0

    mul-float/2addr v0, v3

    float-to-long v3, v0

    .line 151
    add-long v0, v1, v3

    iput-wide v0, p0, Ladg;->g:J

    .line 165
    :goto_1
    iget-wide v0, p0, Ladg;->h:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Ladg;->i:I

    .line 173
    return-void

    .line 148
    :cond_1
    div-int v3, p2, p1

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    iput-wide v3, p0, Ladg;->h:J

    goto :goto_0

    .line 154
    :cond_2
    iput p1, p0, Ladg;->l:I

    .line 155
    if-eqz p3, :cond_3

    .line 156
    rsub-int/lit8 v0, p1, 0x64

    div-int v0, p2, v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    iput-wide v3, p0, Ladg;->h:J

    .line 162
    :goto_2
    iget-wide v3, p0, Ladg;->h:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Ladg;->g:J

    .line 163
    iput-wide v1, p0, Ladg;->j:J

    goto :goto_1

    .line 159
    :cond_3
    div-int v0, p2, p1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    iput-wide v3, p0, Ladg;->h:J

    goto :goto_2
.end method

.method private a(Z)V
    .locals 5
    .parameter

    .prologue
    .line 253
    invoke-direct {p0}, Ladg;->a()V

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.dxbs.BATTERY_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    const-string v1, "percent"

    iget v2, p0, Ladg;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const-string v1, "fix_time"

    iget v2, p0, Ladg;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Ladg;->d:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Ladg;->f:Landroid/app/PendingIntent;

    .line 259
    iget-object v0, p0, Ladg;->e:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    iget-wide v2, p0, Ladg;->g:J

    iget-object v4, p0, Ladg;->f:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 260
    return-void
.end method

.method private a(IZZ)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x14

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 102
    const/16 v2, 0x64

    if-lt p1, v2, :cond_1

    if-eqz p3, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    if-gt p1, v1, :cond_2

    if-eqz p3, :cond_0

    .line 106
    :cond_2
    if-eqz p2, :cond_5

    .line 107
    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Ladg;->m:I

    .line 113
    :goto_1
    iget v2, p0, Ladg;->m:I

    if-ge v2, v3, :cond_3

    iget v2, p0, Ladg;->m:I

    rem-int/lit8 v2, v2, 0x5

    if-eqz v2, :cond_0

    .line 116
    :cond_3
    iget v2, p0, Ladg;->m:I

    if-lt v2, v3, :cond_4

    iget v2, p0, Ladg;->m:I

    rem-int/lit8 v2, v2, 0xa

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 119
    goto :goto_0

    .line 110
    :cond_5
    add-int/lit8 v2, p1, -0x1

    iput v2, p0, Ladg;->m:I

    goto :goto_1
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 243
    iget-boolean v0, p0, Ladg;->c:Z

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 246
    :cond_0
    iput p1, p0, Ladg;->a:I

    .line 247
    iget-object v0, p0, Ladg;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 248
    const-string v1, "fixed_percent"

    iget v2, p0, Ladg;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 249
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public a(IIIZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    iget-boolean v0, p0, Ladg;->c:Z

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Ladg;->n:Laff;

    invoke-virtual {v0}, Laff;->g()Z

    move-result v0

    .line 80
    iget v1, p0, Ladg;->k:I

    if-eq v1, p3, :cond_1

    .line 81
    iget-object v1, p0, Ladg;->o:Lb;

    invoke-interface {v1}, Lb;->a()J

    move-result-wide v1

    iput-wide v1, p0, Ladg;->j:J

    .line 82
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ladg;->h:J

    .line 84
    :cond_1
    iput p3, p0, Ladg;->k:I

    .line 86
    invoke-direct {p0, p1, v0, p5}, Ladg;->a(IZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    invoke-direct {p0, p1, p2, p4}, Ladg;->a(IIZ)V

    .line 88
    invoke-direct {p0, v0}, Ladg;->a(Z)V

    goto :goto_0

    .line 96
    :cond_2
    invoke-direct {p0}, Ladg;->a()V

    goto :goto_0
.end method
