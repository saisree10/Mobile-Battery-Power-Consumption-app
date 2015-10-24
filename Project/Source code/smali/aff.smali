.class public Laff;
.super Ljava/lang/Object;
.source "ChargerManager.java"


# static fields
.field private static volatile a:Laff;


# instance fields
.field private b:Lafh;

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Ladh;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Landroid/app/AlarmManager;

.field private j:Landroid/app/PendingIntent;

.field private k:Lafs;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Laff;->i:Landroid/app/AlarmManager;

    .line 56
    iput-object v0, p0, Laff;->j:Landroid/app/PendingIntent;

    .line 58
    iput-object v0, p0, Laff;->k:Lafs;

    .line 63
    iput-object p1, p0, Laff;->d:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Laff;->d:Landroid/content/Context;

    invoke-static {v0}, Ladh;->a(Landroid/content/Context;)Ladh;

    move-result-object v0

    iput-object v0, p0, Laff;->e:Ladh;

    .line 65
    iget-object v0, p0, Laff;->e:Ladh;

    invoke-virtual {v0}, Ladh;->d()I

    move-result v0

    iput v0, p0, Laff;->c:I

    .line 66
    iget-object v0, p0, Laff;->d:Landroid/content/Context;

    invoke-static {v0}, Lafs;->a(Landroid/content/Context;)Lafs;

    move-result-object v0

    iput-object v0, p0, Laff;->k:Lafs;

    .line 67
    iget-object v0, p0, Laff;->d:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Laff;->i:Landroid/app/AlarmManager;

    .line 68
    return-void
.end method

.method public static a(Landroid/content/Context;)Laff;
    .locals 2
    .parameter

    .prologue
    .line 71
    sget-object v0, Laff;->a:Laff;

    if-nez v0, :cond_1

    .line 72
    const-class v1, Laff;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Laff;->a:Laff;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Laff;

    invoke-direct {v0, p0}, Laff;-><init>(Landroid/content/Context;)V

    sput-object v0, Laff;->a:Laff;

    .line 76
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_1
    sget-object v0, Laff;->a:Laff;

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ladd;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x14

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    iget v0, p1, Ladd;->e:I

    if-eqz v0, :cond_8

    iget v0, p0, Laff;->c:I

    if-nez v0, :cond_8

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Laff;->g:Z

    .line 107
    iget v0, p1, Ladd;->e:I

    if-nez v0, :cond_9

    iget v0, p0, Laff;->c:I

    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Laff;->h:Z

    .line 108
    iget v0, p1, Ladd;->e:I

    iput v0, p0, Laff;->c:I

    .line 109
    iget-object v0, p0, Laff;->e:Ladh;

    iget v3, p0, Laff;->c:I

    invoke-virtual {v0, v3}, Ladh;->c(I)V

    .line 110
    iget v0, p1, Ladd;->e:I

    if-nez v0, :cond_a

    .line 111
    iput-boolean v2, p0, Laff;->f:Z

    .line 116
    :goto_2
    iget-boolean v0, p0, Laff;->h:Z

    if-eqz v0, :cond_3

    .line 118
    invoke-virtual {p0}, Laff;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Laff;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 119
    :cond_0
    invoke-virtual {p0}, Laff;->e()I

    move-result v0

    const/16 v1, 0x67

    if-eq v0, v1, :cond_1

    .line 120
    invoke-virtual {p0}, Laff;->i()V

    .line 128
    :cond_1
    :goto_3
    iget-object v0, p0, Laff;->b:Lafh;

    if-nez v0, :cond_c

    .line 135
    :goto_4
    invoke-virtual {p0}, Laff;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Laff;->e:Ladh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ladh;->b(J)V

    .line 139
    :cond_2
    iget-object v0, p0, Laff;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafr;->a(Landroid/content/Context;)Lafr;

    move-result-object v0

    iput-object v0, p0, Laff;->b:Lafh;

    .line 142
    :cond_3
    iget-boolean v0, p0, Laff;->g:Z

    if-eqz v0, :cond_5

    .line 143
    iget v0, p1, Ladd;->c:I

    if-le v0, v4, :cond_4

    invoke-virtual {p0}, Laff;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 145
    :cond_4
    iget-object v0, p0, Laff;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafk;->a(Landroid/content/Context;)Lafk;

    move-result-object v0

    iput-object v0, p0, Laff;->b:Lafh;

    .line 154
    :goto_5
    iget-object v0, p0, Laff;->j:Landroid/app/PendingIntent;

    if-eqz v0, :cond_5

    .line 155
    iget-object v0, p0, Laff;->i:Landroid/app/AlarmManager;

    iget-object v1, p0, Laff;->j:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Laff;->j:Landroid/app/PendingIntent;

    .line 162
    :cond_5
    iget-object v0, p0, Laff;->b:Lafh;

    if-nez v0, :cond_6

    .line 163
    invoke-virtual {p0}, Laff;->g()Z

    move-result v0

    if-nez v0, :cond_e

    .line 164
    iget-object v0, p0, Laff;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafr;->a(Landroid/content/Context;)Lafr;

    move-result-object v0

    iput-object v0, p0, Laff;->b:Lafh;

    .line 174
    :cond_6
    :goto_6
    invoke-virtual {p0}, Laff;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 177
    invoke-virtual {p0}, Laff;->c()V

    .line 178
    const-string v0, "ChargerManager"

    const-string v1, "healthy charging"

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_7
    iget-object v0, p0, Laff;->b:Lafh;

    invoke-virtual {v0, p1}, Lafh;->a(Ladd;)V

    .line 182
    return-void

    :cond_8
    move v0, v2

    .line 106
    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 107
    goto/16 :goto_1

    .line 113
    :cond_a
    iput-boolean v1, p0, Laff;->f:Z

    goto/16 :goto_2

    .line 123
    :cond_b
    iget-object v0, p0, Laff;->k:Lafs;

    invoke-virtual {v0}, Lafs;->b()Lafu;

    move-result-object v0

    .line 124
    iget v1, v0, Lafu;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lafu;->d:I

    .line 125
    iget-object v1, p0, Laff;->k:Lafs;

    invoke-virtual {v1, v0}, Lafs;->b(Lafu;)V

    goto/16 :goto_3

    .line 132
    :cond_c
    iget-object v0, p0, Laff;->b:Lafh;

    invoke-virtual {v0}, Lafh;->d()V

    goto/16 :goto_4

    .line 148
    :cond_d
    iget-object v0, p0, Laff;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iput-object v0, p0, Laff;->b:Lafh;

    goto :goto_5

    .line 166
    :cond_e
    iget v0, p1, Ladd;->c:I

    if-le v0, v4, :cond_f

    invoke-virtual {p0}, Laff;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 168
    :cond_f
    iget-object v0, p0, Laff;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafk;->a(Landroid/content/Context;)Lafk;

    move-result-object v0

    iput-object v0, p0, Laff;->b:Lafh;

    goto :goto_6

    .line 170
    :cond_10
    iget-object v0, p0, Laff;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iput-object v0, p0, Laff;->b:Lafh;

    goto :goto_6
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Laff;->g:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Laff;->h:Z

    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Laff;->b:Lafh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laff;->b:Lafh;

    instance-of v0, v0, Lafk;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Laff;->e:Ladh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ladh;->b(J)V

    .line 192
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 6

    .prologue
    .line 195
    iget-object v0, p0, Laff;->e:Ladh;

    invoke-virtual {v0}, Ladh;->e()J

    move-result-wide v0

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 198
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 7

    .prologue
    const/16 v2, 0x67

    const/16 v0, 0x65

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v1, 0x66

    .line 214
    iget-object v3, p0, Laff;->b:Lafh;

    instance-of v3, v3, Lafp;

    if-eqz v3, :cond_2

    .line 216
    iget-object v3, p0, Laff;->b:Lafh;

    invoke-virtual {v3}, Lafh;->a()Lafg;

    move-result-object v3

    .line 217
    iget v4, v3, Lafg;->b:I

    packed-switch v4, :pswitch_data_0

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "state error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :pswitch_0
    const/16 v0, 0x69

    .line 258
    :goto_0
    :pswitch_1
    return v0

    .line 223
    :pswitch_2
    invoke-virtual {v3}, Lafg;->d()I

    move-result v0

    if-ne v0, v5, :cond_0

    move v0, v1

    .line 224
    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {v3}, Lafg;->d()I

    move-result v0

    if-ne v0, v6, :cond_1

    move v0, v2

    .line 226
    goto :goto_0

    .line 229
    :cond_1
    const-string v0, "ChargerManager"

    const-string v2, "state error"

    invoke-static {v0, v2}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 231
    goto :goto_0

    .line 236
    :cond_2
    iget-object v3, p0, Laff;->b:Lafh;

    instance-of v3, v3, Lafk;

    if-eqz v3, :cond_5

    .line 237
    iget-object v3, p0, Laff;->b:Lafh;

    invoke-virtual {v3}, Lafh;->a()Lafg;

    move-result-object v3

    .line 238
    iget v4, v3, Lafg;->b:I

    packed-switch v4, :pswitch_data_1

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "state error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :pswitch_3
    const/16 v0, 0x69

    goto :goto_0

    .line 244
    :pswitch_4
    invoke-virtual {v3}, Lafg;->d()I

    move-result v0

    if-ne v0, v5, :cond_3

    move v0, v1

    .line 245
    goto :goto_0

    .line 246
    :cond_3
    invoke-virtual {v3}, Lafg;->d()I

    move-result v0

    if-ne v0, v6, :cond_4

    move v0, v2

    .line 247
    goto :goto_0

    .line 250
    :cond_4
    const-string v0, "ChargerManager"

    const-string v2, "state error"

    invoke-static {v0, v2}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 252
    goto :goto_0

    .line 258
    :cond_5
    const/16 v0, 0x68

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 238
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public f()Lafh;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Laff;->b:Lafh;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Laff;->f:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Laff;->b:Lafh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laff;->b:Lafh;

    instance-of v0, v0, Lafk;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 326
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.powermanager.savenormalcharge"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Laff;->d:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Laff;->j:Landroid/app/PendingIntent;

    .line 328
    iget-object v0, p0, Laff;->i:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x927c0

    add-long/2addr v1, v3

    iget-object v3, p0, Laff;->j:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 330
    return-void
.end method
