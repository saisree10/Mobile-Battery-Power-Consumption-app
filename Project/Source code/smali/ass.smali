.class public Lass;
.super Ljava/lang/Object;
.source "SmartSettingsMgr.java"

# interfaces
.implements Ladc;
.implements Lart;
.implements Laru;


# static fields
.field private static c:Ljava/lang/String;

.field private static d:Z

.field private static volatile e:Lass;


# instance fields
.field protected a:Z

.field protected b:Z

.field private f:Larr;

.field private g:Landroid/content/Context;

.field private h:Landroid/app/AlarmManager;

.field private i:Landroid/app/PendingIntent;

.field private j:Landroid/app/PendingIntent;

.field private k:Landroid/app/PendingIntent;

.field private l:J

.field private m:Lamp;

.field private n:Larp;

.field private o:Laap;

.field private p:Larm;

.field private q:Landroid/app/AlarmManager;

.field private r:Ladd;

.field private s:Lamh;

.field private t:Landroid/content/IntentFilter;

.field private u:Landroid/content/IntentFilter;

.field private v:Lasv;

.field private w:Landroid/content/BroadcastReceiver;

.field private x:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "SmartSettingsMgr"

    sput-object v0, Lass;->c:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lass;->d:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lass;->a:Z

    .line 84
    new-instance v0, Last;

    invoke-direct {v0, p0}, Last;-><init>(Lass;)V

    iput-object v0, p0, Lass;->w:Landroid/content/BroadcastReceiver;

    .line 97
    new-instance v0, Lasu;

    invoke-direct {v0, p0}, Lasu;-><init>(Lass;)V

    iput-object v0, p0, Lass;->x:Landroid/content/BroadcastReceiver;

    .line 171
    invoke-static {p1}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v0

    iput-object v0, p0, Lass;->f:Larr;

    .line 172
    iput-object p1, p0, Lass;->g:Landroid/content/Context;

    .line 173
    iget-object v0, p0, Lass;->g:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lass;->h:Landroid/app/AlarmManager;

    .line 174
    invoke-virtual {p0}, Lass;->a()V

    .line 175
    iget-object v0, p0, Lass;->f:Larr;

    invoke-virtual {v0, p0}, Larr;->a(Lart;)V

    .line 176
    iget-object v0, p0, Lass;->f:Larr;

    invoke-virtual {v0, p0}, Larr;->a(Laru;)V

    .line 178
    iget-object v0, p0, Lass;->g:Landroid/content/Context;

    invoke-static {v0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    iput-object v0, p0, Lass;->m:Lamp;

    .line 179
    iget-object v0, p0, Lass;->g:Landroid/content/Context;

    iget-object v1, p0, Lass;->m:Lamp;

    invoke-static {v0, v1}, Lamh;->a(Landroid/content/Context;Lamp;)Lamh;

    move-result-object v0

    iput-object v0, p0, Lass;->s:Lamh;

    .line 181
    new-instance v0, Larp;

    invoke-direct {v0}, Larp;-><init>()V

    iput-object v0, p0, Lass;->n:Larp;

    .line 182
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 183
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lass;->g:Landroid/content/Context;

    iget-object v2, p0, Lass;->n:Larp;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    iget-object v0, p0, Lass;->g:Landroid/content/Context;

    invoke-static {v0}, Larm;->a(Landroid/content/Context;)Larm;

    move-result-object v0

    iput-object v0, p0, Lass;->p:Larm;

    .line 187
    iget-object v0, p0, Lass;->g:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lass;->q:Landroid/app/AlarmManager;

    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lass;->t:Landroid/content/IntentFilter;

    .line 189
    iget-object v0, p0, Lass;->t:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lass;->t:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lass;->t:Landroid/content/IntentFilter;

    const-string v1, "com.dianxinos.dxbs.ALARMCHECKER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lass;->u:Landroid/content/IntentFilter;

    .line 193
    iget-object v0, p0, Lass;->u:Landroid/content/IntentFilter;

    const-string v1, "com.dianxinos.dxbs.HANGUPPHONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lass;->g:Landroid/content/Context;

    iget-object v1, p0, Lass;->x:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lass;->t:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    iget-object v0, p0, Lass;->g:Landroid/content/Context;

    iget-object v1, p0, Lass;->w:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lass;->u:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    iget-object v0, p0, Lass;->g:Landroid/content/Context;

    invoke-static {v0}, Laap;->a(Landroid/content/Context;)Laap;

    move-result-object v0

    iput-object v0, p0, Lass;->o:Laap;

    .line 197
    return-void
.end method

.method public static a(Landroid/content/Context;)Lass;
    .locals 2
    .parameter

    .prologue
    .line 160
    sget-object v0, Lass;->e:Lass;

    if-nez v0, :cond_1

    .line 161
    const-class v1, Lass;

    monitor-enter v1

    .line 162
    :try_start_0
    sget-object v0, Lass;->e:Lass;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lass;

    invoke-direct {v0, p0}, Lass;-><init>(Landroid/content/Context;)V

    sput-object v0, Lass;->e:Lass;

    .line 165
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_1
    sget-object v0, Lass;->e:Lass;

    return-object v0

    .line 165
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lass;)Lasv;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lass;->v:Lasv;

    return-object v0
.end method

.method private a(II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 426
    if-ge p1, v2, :cond_0

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    :goto_0
    if-ge p2, v2, :cond_1

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    :goto_1
    return-object v0

    .line 430
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 436
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lass;Lasv;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lass;->d(Lasv;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-static {p0}, Lass;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 286
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lass;)Larm;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lass;->p:Larm;

    return-object v0
.end method

.method private b(I)Lase;
    .locals 2
    .parameter

    .prologue
    .line 349
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 351
    :cond_0
    new-instance v0, Lase;

    const-string v1, "switch_by_battery"

    invoke-direct {v0, v1, p1}, Lase;-><init>(Ljava/lang/String;I)V

    .line 358
    :goto_0
    return-object v0

    .line 352
    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 356
    :cond_2
    new-instance v0, Lase;

    const-string v1, "switch_by_time"

    invoke-direct {v0, v1, p1}, Lase;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 358
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lasv;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v7, -0x1

    .line 296
    .line 297
    iget v0, p1, Lasv;->a:I

    invoke-static {v0}, Lamq;->d(I)I

    move-result v0

    .line 298
    iget-object v2, p0, Lass;->s:Lamh;

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lamh;->b(II)I

    move-result v2

    .line 299
    iget-object v3, p0, Lass;->s:Lamh;

    const/4 v4, 0x4

    invoke-virtual {v3, v0, v4}, Lamh;->b(II)I

    move-result v3

    .line 300
    iget-object v4, p0, Lass;->s:Lamh;

    const/16 v5, 0xd

    invoke-virtual {v4, v0, v5}, Lamh;->b(II)I

    move-result v4

    .line 301
    if-eq v4, v7, :cond_0

    if-eq v4, v1, :cond_0

    if-eq v2, v1, :cond_0

    if-eq v3, v1, :cond_0

    if-eq v2, v7, :cond_0

    if-ne v3, v7, :cond_1

    :cond_0
    move v0, v1

    .line 304
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wifi:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mobileData:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " module:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lass;->b(Ljava/lang/String;)V

    .line 305
    if-eqz v0, :cond_7

    .line 306
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dangerous:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " isCalling:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lass;->g:Landroid/content/Context;

    invoke-static {v5}, Lasx;->a(Landroid/content/Context;)Lasx;

    move-result-object v5

    invoke-virtual {v5}, Lasx;->b()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lass;->b(Ljava/lang/String;)V

    .line 307
    if-ne v4, v7, :cond_2

    iget-object v0, p0, Lass;->g:Landroid/content/Context;

    invoke-static {v0}, Lasx;->a(Landroid/content/Context;)Lasx;

    move-result-object v0

    invoke-virtual {v0}, Lasx;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    const-string v0, "delayedSwitchShow"

    invoke-static {v0}, Lass;->b(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0, p1}, Lass;->e(Lasv;)V

    .line 324
    :goto_1
    return-void

    .line 301
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 313
    :cond_2
    if-eq v3, v1, :cond_5

    if-ne v4, v7, :cond_3

    iget-object v0, p0, Lass;->g:Landroid/content/Context;

    invoke-static {v0}, Lasx;->a(Landroid/content/Context;)Lasx;

    move-result-object v0

    invoke-virtual {v0}, Lasx;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    if-ne v2, v7, :cond_4

    invoke-direct {p0}, Lass;->j()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    if-ne v3, v7, :cond_6

    invoke-direct {p0}, Lass;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 317
    :cond_5
    invoke-direct {p0, p1}, Lass;->d(Lasv;)V

    goto :goto_1

    .line 320
    :cond_6
    invoke-direct {p0, p1}, Lass;->c(Lasv;)V

    goto :goto_1

    .line 322
    :cond_7
    invoke-direct {p0, p1}, Lass;->c(Lasv;)V

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 569
    sget-boolean v0, Lass;->d:Z

    if-eqz v0, :cond_0

    .line 570
    sget-object v0, Lass;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_0
    return-void
.end method

.method static synthetic c(Lass;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lass;->g:Landroid/content/Context;

    return-object v0
.end method

.method private c(Lasv;)V
    .locals 3
    .parameter

    .prologue
    .line 330
    iget v0, p1, Lasv;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p1, Lasv;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 338
    :cond_0
    iget-object v0, p0, Lass;->g:Landroid/content/Context;

    invoke-static {v0}, Lasc;->a(Landroid/content/Context;)Lasc;

    move-result-object v0

    iget v1, p1, Lasv;->b:I

    invoke-direct {p0, v1}, Lass;->b(I)Lase;

    move-result-object v1

    iget v2, p1, Lasv;->a:I

    invoke-static {v2}, Lamq;->d(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lasc;->a(Lase;I)V

    .line 340
    return-void
.end method

.method private c(I)Z
    .locals 1
    .parameter

    .prologue
    .line 520
    iget-object v0, p0, Lass;->m:Lamp;

    invoke-virtual {v0}, Lamp;->c()I

    move-result v0

    .line 521
    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lass;->m:Lamp;

    invoke-virtual {v0}, Lamp;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    const/4 v0, 0x1

    .line 524
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lass;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lass;->e()V

    return-void
.end method

.method private d(Lasv;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 365
    invoke-direct {p0, p1}, Lass;->f(Lasv;)V

    .line 366
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.dxbs.ALARMCHECKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lass;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    iget-object v1, p0, Lass;->k:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    .line 369
    iget-object v1, p0, Lass;->g:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lass;->k:Landroid/app/PendingIntent;

    .line 371
    :cond_0
    iget-object v0, p0, Lass;->q:Landroid/app/AlarmManager;

    iget-object v1, p0, Lass;->k:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lass;->b:Z

    .line 373
    iget-object v0, p0, Lass;->q:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x1d4c0

    add-long/2addr v1, v3

    iget-object v3, p0, Lass;->k:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 374
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    .line 128
    invoke-direct {p0}, Lass;->g()V

    .line 129
    iget-object v0, p0, Lass;->k:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lass;->b:Z

    .line 131
    iget-object v0, p0, Lass;->q:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    add-long/2addr v2, v4

    iget-object v4, p0, Lass;->k:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 133
    :cond_0
    return-void
.end method

.method private e(Lasv;)V
    .locals 1
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lass;->v:Lasv;

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lass;->a:Z

    .line 387
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-direct {p0}, Lass;->g()V

    .line 140
    iput-boolean v0, p0, Lass;->b:Z

    .line 141
    iput-boolean v0, p0, Lass;->a:Z

    .line 142
    return-void
.end method

.method private f(Lasv;)V
    .locals 10
    .parameter

    .prologue
    const v7, 0x7f0a0174

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 391
    iget v1, p1, Lasv;->b:I

    .line 392
    iget v2, p1, Lasv;->a:I

    .line 393
    iget-object v0, p0, Lass;->m:Lamp;

    invoke-virtual {v0, v2}, Lamp;->g(I)I

    move-result v0

    .line 394
    iget-object v3, p0, Lass;->p:Larm;

    invoke-virtual {v3}, Larm;->c()V

    .line 395
    if-ne v1, v8, :cond_0

    .line 396
    iget-object v3, p0, Lass;->g:Landroid/content/Context;

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a0173

    new-array v5, v6, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lass;->f:Larr;

    invoke-virtual {v7}, Larr;->j()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    iget-object v6, p0, Lass;->m:Lamp;

    invoke-virtual {v6, v0}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 399
    iget-object v3, p0, Lass;->p:Larm;

    invoke-virtual {v3, v9}, Larm;->a(I)V

    .line 400
    iget-object v3, p0, Lass;->p:Larm;

    invoke-virtual {v3, v8}, Larm;->b(I)V

    .line 419
    :goto_0
    iget-object v3, p0, Lass;->p:Larm;

    invoke-direct {p0, v1}, Lass;->b(I)Lase;

    move-result-object v1

    invoke-virtual {v3, v1}, Larm;->a(Lase;)V

    .line 420
    iget-object v1, p0, Lass;->p:Larm;

    iget-object v3, p0, Lass;->m:Lamp;

    invoke-virtual {v1, v2, v3}, Larm;->a(ILamp;)V

    .line 421
    iget-object v1, p0, Lass;->p:Larm;

    invoke-virtual {v1, v0}, Larm;->a(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lass;->p:Larm;

    invoke-virtual {v0}, Larm;->b()V

    .line 423
    return-void

    .line 401
    :cond_0
    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 402
    iget-object v3, p0, Lass;->f:Larr;

    invoke-virtual {v3}, Larr;->o()[I

    move-result-object v3

    .line 403
    aget v4, v3, v9

    aget v3, v3, v8

    invoke-direct {p0, v4, v3}, Lass;->a(II)Ljava/lang/String;

    move-result-object v3

    .line 405
    iget-object v4, p0, Lass;->g:Landroid/content/Context;

    sget-object v5, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v3, v5, v9

    iget-object v3, p0, Lass;->m:Lamp;

    invoke-virtual {v3, v0}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v4, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 407
    const-string v3, "SWITCH_BY_TIME_END"

    invoke-static {v3}, Lass;->b(Ljava/lang/String;)V

    .line 408
    iget-object v3, p0, Lass;->p:Larm;

    invoke-virtual {v3, v9}, Larm;->a(I)V

    .line 409
    iget-object v3, p0, Lass;->p:Larm;

    invoke-virtual {v3, v8}, Larm;->b(I)V

    goto :goto_0

    .line 411
    :cond_1
    iget-object v3, p0, Lass;->f:Larr;

    invoke-virtual {v3}, Larr;->n()[I

    move-result-object v3

    .line 412
    aget v4, v3, v9

    aget v3, v3, v8

    invoke-direct {p0, v4, v3}, Lass;->a(II)Ljava/lang/String;

    move-result-object v3

    .line 413
    iget-object v4, p0, Lass;->g:Landroid/content/Context;

    sget-object v5, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v3, v5, v9

    iget-object v3, p0, Lass;->m:Lamp;

    invoke-virtual {v3, v0}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v4, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 416
    iget-object v3, p0, Lass;->p:Larm;

    invoke-virtual {v3, v9}, Larm;->a(I)V

    .line 417
    iget-object v3, p0, Lass;->p:Larm;

    invoke-virtual {v3, v8}, Larm;->b(I)V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lass;->k:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lass;->b:Z

    .line 147
    iget-object v0, p0, Lass;->q:Landroid/app/AlarmManager;

    iget-object v1, p0, Lass;->k:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 149
    :cond_0
    return-void
.end method

.method private h()Lasv;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 238
    const/4 v0, 0x0

    .line 239
    iget-object v1, p0, Lass;->f:Larr;

    invoke-virtual {v1}, Larr;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lass;->f:Larr;

    invoke-virtual {v1}, Larr;->j()I

    move-result v1

    .line 242
    iget-object v2, p0, Lass;->o:Laap;

    invoke-virtual {v2, v1}, Laap;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    new-instance v0, Lasv;

    invoke-direct {v0}, Lasv;-><init>()V

    .line 246
    iput v3, v0, Lasv;->b:I

    .line 247
    iget-object v1, p0, Lass;->f:Larr;

    invoke-virtual {v1}, Larr;->k()I

    move-result v1

    iput v1, v0, Lasv;->a:I

    .line 254
    :cond_0
    :goto_0
    return-object v0

    .line 248
    :cond_1
    iget-object v2, p0, Lass;->o:Laap;

    invoke-virtual {v2, v1}, Laap;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    new-instance v0, Lasv;

    invoke-direct {v0}, Lasv;-><init>()V

    .line 250
    const/4 v1, 0x2

    iput v1, v0, Lasv;->b:I

    .line 251
    iget-object v1, p0, Lass;->f:Larr;

    invoke-virtual {v1, v3}, Larr;->h(I)I

    move-result v1

    iput v1, v0, Lasv;->a:I

    goto :goto_0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lass;->g:Landroid/content/Context;

    invoke-static {v0}, Lazx;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lass;->g:Landroid/content/Context;

    invoke-static {v0}, Lazx;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lass;->g:Landroid/content/Context;

    invoke-static {v0}, Lazx;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private k()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 459
    iget-object v0, p0, Lass;->i:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 460
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.dianxinos.dxbs.ALARMSWITCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    iget-object v2, p0, Lass;->g:Landroid/content/Context;

    invoke-static {v2, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lass;->i:Landroid/app/PendingIntent;

    .line 464
    :cond_0
    iget-object v0, p0, Lass;->f:Larr;

    invoke-virtual {v0}, Larr;->n()[I

    move-result-object v0

    .line 465
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 467
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 468
    const/16 v5, 0xb

    aget v6, v0, v1

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 469
    const/16 v5, 0xc

    const/4 v6, 0x1

    aget v0, v0, v6

    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 470
    const/16 v0, 0xd

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 471
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 472
    const/16 v0, 0xa

    const/16 v3, 0x18

    invoke-virtual {v2, v0, v3}, Ljava/util/Calendar;->add(II)V

    .line 474
    :cond_1
    sget-boolean v0, Lass;->d:Z

    if-eqz v0, :cond_2

    sget-object v0, Lass;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set start time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :cond_2
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lass;->l:J

    .line 476
    iget-object v0, p0, Lass;->h:Landroid/app/AlarmManager;

    iget-wide v2, p0, Lass;->l:J

    invoke-static {v2, v3}, Lazf;->a(J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    iget-object v6, p0, Lass;->i:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 477
    return-void
.end method

.method private l()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 480
    iget-object v0, p0, Lass;->j:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.dianxinos.dxbs.ALARMRESTORE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    iget-object v2, p0, Lass;->g:Landroid/content/Context;

    invoke-static {v2, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lass;->j:Landroid/app/PendingIntent;

    .line 485
    :cond_0
    iget-object v0, p0, Lass;->f:Larr;

    invoke-virtual {v0}, Larr;->o()[I

    move-result-object v0

    .line 487
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 489
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 490
    const/16 v5, 0xb

    aget v6, v0, v1

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 491
    const/16 v5, 0xc

    const/4 v6, 0x1

    aget v0, v0, v6

    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 492
    const/16 v0, 0xd

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 493
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 494
    const/16 v0, 0xa

    const/16 v3, 0x18

    invoke-virtual {v2, v0, v3}, Ljava/util/Calendar;->add(II)V

    .line 501
    :cond_1
    sget-boolean v0, Lass;->d:Z

    if-eqz v0, :cond_2

    sget-object v0, Lass;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set end time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_2
    iget-object v0, p0, Lass;->h:Landroid/app/AlarmManager;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lazf;->a(J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    iget-object v6, p0, Lass;->j:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 503
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 506
    iget-object v0, p0, Lass;->i:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.dxbs.ALARMSWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lass;->g:Landroid/content/Context;

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lass;->i:Landroid/app/PendingIntent;

    .line 510
    :cond_0
    iget-object v0, p0, Lass;->h:Landroid/app/AlarmManager;

    iget-object v1, p0, Lass;->i:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 512
    iget-object v0, p0, Lass;->j:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    .line 513
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.dxbs.ALARMRESTORE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Lass;->g:Landroid/content/Context;

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lass;->j:Landroid/app/PendingIntent;

    .line 516
    :cond_1
    iget-object v0, p0, Lass;->h:Landroid/app/AlarmManager;

    iget-object v1, p0, Lass;->j:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 517
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lass;->f:Larr;

    invoke-virtual {v0}, Larr;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-direct {p0}, Lass;->k()V

    .line 444
    invoke-direct {p0}, Lass;->l()V

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-direct {p0}, Lass;->m()V

    goto :goto_0
.end method

.method public a(Ladd;)V
    .locals 1
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lass;->r:Ladd;

    .line 225
    const-string v0, "onBatteryInfoDataUpdated"

    invoke-static {v0}, Lass;->b(Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lass;->h()Lasv;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0, v0}, Lass;->a(Lasv;)V

    .line 230
    :cond_0
    return-void
.end method

.method public a(Lasv;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 263
    iget v0, p1, Lasv;->a:I

    .line 264
    iget v1, p1, Lasv;->b:I

    .line 265
    invoke-direct {p0, v1}, Lass;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    invoke-direct {p0, p1}, Lass;->c(Lasv;)V

    .line 283
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-direct {p0, v0}, Lass;->c(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-direct {p0, v3}, Lass;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smart switch ignore, inmode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lass;->c(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Sleep Mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v3}, Lass;->c(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lass;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_2
    invoke-direct {p0}, Lass;->f()V

    .line 282
    invoke-direct {p0, p1}, Lass;->b(Lasv;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 201
    :try_start_0
    iget-object v0, p0, Lass;->g:Landroid/content/Context;

    iget-object v1, p0, Lass;->n:Larp;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    sget-object v0, Lass;->c:Ljava/lang/String;

    const-string v1, "CpuSettingsScreenReceiver, stopped"

    invoke-static {v0, v1}, Lazt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void

    .line 202
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lass;->g:Landroid/content/Context;

    invoke-static {v0}, Lasc;->a(Landroid/content/Context;)Lasc;

    move-result-object v0

    const-string v1, "switch_by_battery"

    invoke-virtual {v0, v1}, Lasc;->a(Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lass;->g:Landroid/content/Context;

    invoke-static {v0}, Lasc;->a(Landroid/content/Context;)Lasc;

    move-result-object v0

    const-string v1, "switch_by_time"

    invoke-virtual {v0, v1}, Lasc;->a(Ljava/lang/String;)V

    .line 566
    return-void
.end method
