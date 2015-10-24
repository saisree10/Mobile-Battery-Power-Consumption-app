.class public Lapi;
.super Ljava/lang/Object;
.source "SwitchVibrateCommand.java"


# static fields
.field private static e:Lapi;


# instance fields
.field private a:I

.field private b:Landroid/media/AudioManager;

.field private c:Landroid/content/ContentResolver;

.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lapi;->d:Landroid/content/Context;

    .line 32
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lapi;->b:Landroid/media/AudioManager;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lapi;->c:Landroid/content/ContentResolver;

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;)Lapi;
    .locals 3
    .parameter

    .prologue
    .line 37
    sget-object v0, Lapi;->e:Lapi;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Lapi;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lapi;->e:Lapi;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lapi;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lapi;-><init>(Landroid/content/Context;)V

    sput-object v0, Lapi;->e:Lapi;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lapi;->e:Lapi;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-static {}, Lazf;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p0, Lapi;->c:Landroid/content/ContentResolver;

    const-string v3, "vibrate_when_ringing"

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.dxbs.MODEMODIFIED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    const-string v1, "command"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lapi;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 107
    goto :goto_0

    .line 113
    :cond_1
    iget-object v2, p0, Lapi;->b:Landroid/media/AudioManager;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v2, v1, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private c()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    invoke-static {}, Lazf;->m()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    :try_start_0
    iget-object v2, p0, Lapi;->c:Landroid/content/ContentResolver;

    const-string v3, "vibrate_when_ringing"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v0, v1

    .line 98
    goto :goto_0

    .line 100
    :cond_2
    iget-object v2, p0, Lapi;->b:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v2

    .line 101
    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 49
    iget-object v0, p0, Lapi;->b:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 50
    invoke-direct {p0}, Lapi;->c()Z

    move-result v1

    .line 52
    if-ne v0, v3, :cond_2

    .line 53
    if-eqz v1, :cond_1

    .line 54
    iput v3, p0, Lapi;->a:I

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iput v2, p0, Lapi;->a:I

    goto :goto_0

    .line 58
    :cond_2
    if-nez v0, :cond_3

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Lapi;->a:I

    goto :goto_0

    .line 60
    :cond_3
    if-ne v0, v2, :cond_0

    .line 61
    const/4 v0, 0x4

    iput v0, p0, Lapi;->a:I

    goto :goto_0
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    packed-switch p1, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lapi;->b:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 74
    invoke-direct {p0, v1}, Lapi;->a(Z)V

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v0, p0, Lapi;->b:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 78
    invoke-direct {p0, v2}, Lapi;->a(Z)V

    goto :goto_0

    .line 81
    :pswitch_2
    iget-object v0, p0, Lapi;->b:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 82
    invoke-direct {p0, v1}, Lapi;->a(Z)V

    goto :goto_0

    .line 85
    :pswitch_3
    iget-object v0, p0, Lapi;->b:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 86
    invoke-direct {p0, v2}, Lapi;->a(Z)V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b()I
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lapi;->a()V

    .line 67
    iget v0, p0, Lapi;->a:I

    return v0
.end method
