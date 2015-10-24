.class public Larr;
.super Ljava/lang/Object;
.source "SmartConfig.java"


# static fields
.field private static B:Larr;


# instance fields
.field private A:Z

.field private C:Landroid/content/Context;

.field private D:I

.field private final E:Ljava/lang/String;

.field private final F:Ljava/lang/String;

.field private final G:Ljava/lang/String;

.field private final H:Ljava/lang/String;

.field private final I:Ljava/lang/String;

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private a:Landroid/content/SharedPreferences;

.field private b:Z

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lart;

.field private o:Laru;

.field private p:Lars;

.field private q:Z

.field private r:Z

.field private s:I

.field private t:Z

.field private u:I

.field private v:J

.field private w:Z

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "action_user_present_enable"

    iput-object v0, p0, Larr;->E:Ljava/lang/String;

    .line 73
    const-string v0, "net_switch_enable"

    iput-object v0, p0, Larr;->F:Ljava/lang/String;

    .line 74
    const-string v0, "clean_process_enable"

    iput-object v0, p0, Larr;->G:Ljava/lang/String;

    .line 75
    const-string v0, "lock_apn_switch"

    iput-object v0, p0, Larr;->H:Ljava/lang/String;

    .line 76
    const-string v0, "lock_wifi_switch"

    iput-object v0, p0, Larr;->I:Ljava/lang/String;

    .line 77
    iput-boolean v1, p0, Larr;->J:Z

    .line 78
    iput-boolean v1, p0, Larr;->K:Z

    .line 79
    iput-boolean v1, p0, Larr;->L:Z

    .line 80
    iput-boolean v1, p0, Larr;->M:Z

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Larr;->N:Z

    .line 95
    iput-object p1, p0, Larr;->C:Landroid/content/Context;

    .line 96
    invoke-direct {p0}, Larr;->v()V

    .line 97
    return-void
.end method

.method public static a(Landroid/content/Context;)Larr;
    .locals 2
    .parameter

    .prologue
    .line 84
    sget-object v0, Larr;->B:Larr;

    if-nez v0, :cond_1

    .line 85
    const-class v1, Larr;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Larr;->B:Larr;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Larr;

    invoke-direct {v0, p0}, Larr;-><init>(Landroid/content/Context;)V

    sput-object v0, Larr;->B:Larr;

    .line 89
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_1
    sget-object v0, Larr;->B:Larr;

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private v()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 100
    iget-object v0, p0, Larr;->C:Landroid/content/Context;

    const-string v1, "smart_settings"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    .line 101
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "SmartSwitchStatus"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Larr;->b:Z

    .line 102
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "LowPowerSwitchMode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Larr;->f:Z

    .line 103
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "LowBatteryThreshold"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Larr;->c:I

    .line 104
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "LowPowerModeId"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Larr;->d:I

    .line 105
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "LowPowerModeName"

    iget-object v2, p0, Larr;->C:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a0056

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Larr;->e:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "ModeTimeStatus"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Larr;->g:Z

    .line 108
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "ModeTimeId"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Larr;->h:I

    .line 109
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "ModeTimeModeName"

    iget-object v2, p0, Larr;->C:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a00b6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Larr;->i:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "ModeTimeStartHour"

    const/16 v2, 0x17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Larr;->j:I

    .line 113
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "ModeTimeStartMin"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Larr;->k:I

    .line 114
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "ModeTimeEndHour"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Larr;->l:I

    .line 115
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "ModeTimeEndMin"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Larr;->m:I

    .line 116
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "Used"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Larr;->q:Z

    .line 117
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "ModeTimeStarted"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Larr;->r:Z

    .line 118
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "LowPowerStarted"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Larr;->t:Z

    .line 119
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "LastSwitchWay"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Larr;->u:I

    .line 120
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "ManualSwitchTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Larr;->v:J

    .line 122
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "batteryused"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Larr;->w:Z

    .line 123
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "lowbatteryshowed"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Larr;->x:Z

    .line 124
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "cpu_settings_status"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Larr;->y:I

    .line 126
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "init_percent_boolean"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Larr;->A:Z

    .line 127
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "last_battery_percent"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Larr;->z:I

    .line 129
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "first_trigger_level"

    const/16 v2, -0x3e8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Larr;->D:I

    .line 131
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "action_user_present_enable"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Larr;->J:Z

    .line 132
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "net_switch_enable"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Larr;->K:Z

    .line 133
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "clean_process_enable"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Larr;->L:Z

    .line 134
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "lock_apn_switch"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Larr;->M:Z

    .line 135
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "lock_wifi_switch"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Larr;->N:Z

    .line 136
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2
    .parameter

    .prologue
    .line 261
    iget v0, p0, Larr;->z:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 262
    iput p1, p0, Larr;->z:I

    .line 264
    :cond_0
    iget v0, p0, Larr;->z:I

    return v0
.end method

.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Larr;->q:Z

    .line 388
    iput p1, p0, Larr;->j:I

    .line 389
    iput p2, p0, Larr;->k:I

    .line 390
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 391
    const-string v1, "ModeTimeStartHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 392
    const-string v1, "ModeTimeStartMin"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 393
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 394
    iget-object v0, p0, Larr;->n:Lart;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Larr;->n:Lart;

    invoke-interface {v0}, Lart;->a()V

    .line 397
    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 444
    iput-wide p1, p0, Larr;->v:J

    .line 445
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 446
    const-string v1, "ManualSwitchTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 449
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 450
    return-void
.end method

.method public a(Lart;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Larr;->n:Lart;

    .line 479
    return-void
.end method

.method public a(Laru;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Larr;->o:Laru;

    .line 483
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Larr;->i:Ljava/lang/String;

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Larr;->q:Z

    .line 377
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 378
    const-string v1, "ModeTimeModeName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 379
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 380
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 143
    iget-boolean v0, p0, Larr;->J:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 146
    :cond_0
    iput-boolean p1, p0, Larr;->J:Z

    .line 147
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    const-string v1, "action_user_present_enable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 181
    iput-boolean p1, p0, Larr;->M:Z

    .line 182
    iput-boolean p2, p0, Larr;->N:Z

    .line 183
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 184
    const-string v1, "lock_apn_switch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 185
    const-string v1, "lock_wifi_switch"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 187
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Larr;->J:Z

    return v0
.end method

.method public b(I)V
    .locals 3
    .parameter

    .prologue
    .line 268
    iput p1, p0, Larr;->z:I

    .line 269
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 270
    const-string v1, "last_battery_percent"

    iget v2, p0, Larr;->z:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 271
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 272
    return-void
.end method

.method public b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Larr;->q:Z

    .line 408
    iput p1, p0, Larr;->l:I

    .line 409
    iput p2, p0, Larr;->m:I

    .line 410
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 411
    const-string v1, "ModeTimeEndHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 412
    const-string v1, "ModeTimeEndMin"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 413
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 414
    iget-object v0, p0, Larr;->n:Lart;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Larr;->n:Lart;

    invoke-interface {v0}, Lart;->a()V

    .line 417
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 157
    iput-boolean p1, p0, Larr;->K:Z

    .line 158
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 159
    const-string v1, "net_switch_enable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 161
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Larr;->K:Z

    return v0
.end method

.method public c(I)V
    .locals 2
    .parameter

    .prologue
    .line 287
    iput p1, p0, Larr;->c:I

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Larr;->q:Z

    .line 289
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 290
    const-string v1, "LowBatteryThreshold"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 291
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 292
    return-void
.end method

.method public c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 168
    iput-boolean p1, p0, Larr;->L:Z

    .line 169
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    const-string v1, "clean_process_enable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 172
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Larr;->L:Z

    return v0
.end method

.method public d(I)V
    .locals 2
    .parameter

    .prologue
    .line 299
    iput p1, p0, Larr;->d:I

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Larr;->q:Z

    .line 301
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 302
    const-string v1, "LowPowerModeId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 303
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 304
    return-void
.end method

.method public d(Z)V
    .locals 2
    .parameter

    .prologue
    .line 275
    iput-boolean p1, p0, Larr;->f:Z

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Larr;->q:Z

    .line 277
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 278
    const-string v1, "LowPowerSwitchMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 280
    return-void
.end method

.method public d()[Z
    .locals 3

    .prologue
    .line 175
    const/4 v0, 0x2

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Larr;->M:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Larr;->N:Z

    aput-boolean v2, v0, v1

    return-object v0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 195
    const-string v1, "Used"

    iget-boolean v2, p0, Larr;->q:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 197
    return-void
.end method

.method public e(I)V
    .locals 2
    .parameter

    .prologue
    .line 338
    iput p1, p0, Larr;->h:I

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Larr;->q:Z

    .line 340
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 341
    const-string v1, "ModeTimeId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 342
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 343
    iget-object v0, p0, Larr;->n:Lart;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Larr;->n:Lart;

    invoke-interface {v0}, Lart;->a()V

    .line 346
    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 2
    .parameter

    .prologue
    .line 323
    iput-boolean p1, p0, Larr;->g:Z

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Larr;->q:Z

    .line 325
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 326
    const-string v1, "ModeTimeStatus"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 327
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 328
    iget-object v0, p0, Larr;->n:Lart;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Larr;->n:Lart;

    invoke-interface {v0}, Lart;->a()V

    .line 331
    :cond_0
    return-void
.end method

.method public f(I)I
    .locals 2
    .parameter

    .prologue
    .line 353
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "ModeTimeLastModeId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 204
    iput-boolean v2, p0, Larr;->w:Z

    .line 205
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 206
    const-string v1, "batteryused"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 207
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 208
    return-void
.end method

.method public f(Z)V
    .locals 2
    .parameter

    .prologue
    .line 471
    iput-boolean p1, p0, Larr;->A:Z

    .line 472
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 473
    const-string v1, "init_percent_boolean"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 474
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 475
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Larr;->r:Z

    .line 229
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 230
    const-string v1, "ModeTimeStarted"

    iget-boolean v2, p0, Larr;->r:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 231
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 234
    return-void
.end method

.method public g(I)V
    .locals 2
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 358
    const-string v1, "ModeTimeLastModeId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 359
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 360
    return-void
.end method

.method public h(I)I
    .locals 2
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    const-string v1, "LowPowerLastModeId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Larr;->s:I

    .line 364
    iget v0, p0, Larr;->s:I

    return v0
.end method

.method public h()V
    .locals 3

    .prologue
    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Larr;->r:Z

    .line 238
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 239
    const-string v1, "ModeTimeStarted"

    iget-boolean v2, p0, Larr;->r:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 240
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 243
    return-void
.end method

.method public i(I)V
    .locals 2
    .parameter

    .prologue
    .line 368
    iput p1, p0, Larr;->s:I

    .line 369
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 370
    const-string v1, "LowPowerLastModeId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 371
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 372
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Larr;->f:Z

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Larr;->c:I

    return v0
.end method

.method public j(I)V
    .locals 2
    .parameter

    .prologue
    .line 431
    iput p1, p0, Larr;->u:I

    .line 432
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 433
    const-string v1, "LastSwitchWay"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 436
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 437
    return-void
.end method

.method public k()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Larr;->d:I

    return v0
.end method

.method public k(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 457
    iput p1, p0, Larr;->y:I

    .line 458
    iget-object v1, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 459
    const-string v2, "cpu_settings_status"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 460
    invoke-static {v1}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 461
    iget-object v1, p0, Larr;->p:Lars;

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Larr;->p:Lars;

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-interface {v1, v0}, Lars;->a(Z)V

    .line 464
    :cond_0
    return-void

    .line 462
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l(I)V
    .locals 2
    .parameter

    .prologue
    .line 510
    iput p1, p0, Larr;->D:I

    .line 511
    iget-object v0, p0, Larr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 512
    const-string v1, "first_trigger_level"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 513
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 514
    return-void
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Larr;->g:Z

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Larr;->h:I

    return v0
.end method

.method public n()[I
    .locals 3

    .prologue
    .line 400
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Larr;->j:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Larr;->k:I

    aput v2, v0, v1

    .line 403
    return-object v0
.end method

.method public o()[I
    .locals 3

    .prologue
    .line 420
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Larr;->l:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Larr;->m:I

    aput v2, v0, v1

    .line 423
    return-object v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Larr;->u:I

    return v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 440
    iget-wide v0, p0, Larr;->v:J

    return-wide v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Larr;->y:I

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Larr;->A:Z

    return v0
.end method

.method public t()V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method public u()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Larr;->D:I

    return v0
.end method
