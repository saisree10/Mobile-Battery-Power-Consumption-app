.class public Lamb;
.super Ljava/lang/Object;
.source "SettingsConfig.java"


# static fields
.field private static b:Lamb;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/Boolean;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:Lamc;

.field private r:Lamd;

.field private s:Lame;

.field private t:Z

.field private u:Z

.field private v:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lamb;->e:I

    .line 86
    iput-object p1, p0, Lamb;->c:Landroid/content/Context;

    .line 87
    invoke-direct {p0}, Lamb;->s()V

    .line 88
    return-void
.end method

.method public static a(Landroid/content/Context;)Lamb;
    .locals 3
    .parameter

    .prologue
    .line 75
    sget-object v0, Lamb;->b:Lamb;

    if-nez v0, :cond_1

    .line 76
    const-class v1, Lamb;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lamb;->b:Lamb;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lamb;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lamb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lamb;->b:Lamb;

    .line 80
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_1
    sget-object v0, Lamb;->b:Lamb;

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private s()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 91
    iget-object v0, p0, Lamb;->c:Landroid/content/Context;

    const-string v1, "SettingsConfig"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    .line 93
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    const-string v1, "statusbar_style"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lamb;->v:I

    .line 94
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    const-string v1, "battery_notification"

    sget-boolean v2, Lazn;->a:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lamb;->g:Z

    .line 95
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    const-string v1, "auto_cleanup_status"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lamb;->d:Ljava/lang/Boolean;

    .line 96
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    const-string v1, "auto_cleanup_period"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lamb;->e:I

    .line 98
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    const-string v1, "smart_notification_status"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lamb;->f:Z

    .line 100
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    const-string v1, "celsius_fahrenheit"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lamb;->h:Z

    .line 101
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    const-string v1, "sleep_floating"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lamb;->i:Z

    .line 102
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    const-string v1, "sleep_floating_guide"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lamb;->j:Z

    .line 103
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    const-string v1, "sleep_floating_showed"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lamb;->k:Z

    .line 104
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    const-string v1, "sleep_floating_need_showed"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lamb;->l:Z

    .line 106
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    const-string v1, "charging_done_notification"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lamb;->t:Z

    .line 107
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    const-string v1, "charging_nf"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lamb;->u:Z

    .line 108
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    const-string v1, "lowbatter_reminder"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lamb;->m:Z

    .line 110
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    const-string v1, "no_disturb_switch"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lamb;->n:Z

    .line 111
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    const-string v1, "no_disturb_start"

    const/16 v2, 0x898

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lamb;->o:I

    .line 112
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    const-string v1, "no_disturb_end"

    const/16 v2, 0x320

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lamb;->p:I

    .line 113
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 142
    iput p1, p0, Lamb;->v:I

    .line 143
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    const-string v1, "statusbar_style"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 146
    iget-object v0, p0, Lamb;->r:Lamd;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lamb;->r:Lamd;

    iget-boolean v1, p0, Lamb;->g:Z

    iget v2, p0, Lamb;->v:I

    invoke-interface {v0, v1, v2}, Lamd;->b(ZI)V

    .line 149
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 357
    iput p1, p0, Lamb;->o:I

    .line 358
    iput p2, p0, Lamb;->p:I

    .line 359
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 360
    const-string v1, "no_disturb_start"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 361
    const-string v1, "no_disturb_end"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 362
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 363
    return-void
.end method

.method public a(Lamc;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lamb;->q:Lamc;

    .line 246
    return-void
.end method

.method public a(Lamd;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lamb;->r:Lamd;

    .line 272
    return-void
.end method

.method public a(Lame;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lamb;->s:Lame;

    .line 280
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 127
    iput-boolean p1, p0, Lamb;->g:Z

    .line 128
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    const-string v1, "battery_notification"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 131
    iget-object v0, p0, Lamb;->r:Lamd;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lamb;->r:Lamd;

    iget v1, p0, Lamb;->v:I

    invoke-interface {v0, p1, v1}, Lamd;->b(ZI)V

    .line 134
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lamb;->g:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lamb;->v:I

    return v0
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 236
    const-string v1, "auto_cleanup_period"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 237
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 238
    iget v0, p0, Lamb;->e:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lamb;->q:Lamc;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lamb;->q:Lamc;

    iget-object v1, p0, Lamb;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1, p1}, Lamc;->a(ZI)V

    .line 241
    :cond_0
    iput p1, p0, Lamb;->e:I

    .line 242
    return-void
.end method

.method public b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 160
    iput-boolean p1, p0, Lamb;->h:Z

    .line 161
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 162
    const-string v1, "celsius_fahrenheit"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 163
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 164
    iget-object v0, p0, Lamb;->r:Lamd;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lamb;->r:Lamd;

    iget-boolean v1, p0, Lamb;->g:Z

    iget v2, p0, Lamb;->v:I

    invoke-interface {v0, v1, v2}, Lamd;->b(ZI)V

    .line 167
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 2
    .parameter

    .prologue
    .line 391
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 392
    const-string v1, "optimize_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 393
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 394
    return-void
.end method

.method public c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 174
    iput-boolean p1, p0, Lamb;->i:Z

    .line 175
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 176
    const-string v1, "sleep_floating"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 178
    iget-object v0, p0, Lamb;->s:Lame;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lamb;->s:Lame;

    invoke-interface {v0, p1}, Lame;->a(Z)V

    .line 181
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    const-string v1, "celsius_fahrenheit"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 2
    .parameter

    .prologue
    .line 188
    iput-boolean p1, p0, Lamb;->k:Z

    .line 189
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 190
    const-string v1, "sleep_floating_showed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 192
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lamb;->h:Z

    return v0
.end method

.method public e(Z)V
    .locals 2
    .parameter

    .prologue
    .line 199
    iput-boolean p1, p0, Lamb;->l:Z

    .line 200
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 201
    const-string v1, "sleep_floating_need_showed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 203
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lamb;->i:Z

    return v0
.end method

.method public f(Z)V
    .locals 2
    .parameter

    .prologue
    .line 210
    iput-boolean p1, p0, Lamb;->j:Z

    .line 211
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 212
    const-string v1, "sleep_floating_guide"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 213
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 214
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lamb;->l:Z

    return v0
.end method

.method public g(Z)V
    .locals 2
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 222
    const-string v1, "auto_cleanup_status"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 223
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 224
    iget-object v0, p0, Lamb;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lamb;->q:Lamc;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lamb;->q:Lamc;

    iget v1, p0, Lamb;->e:I

    invoke-interface {v0, p1, v1}, Lamc;->a(ZI)V

    .line 227
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lamb;->d:Ljava/lang/Boolean;

    .line 228
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lamb;->j:Z

    return v0
.end method

.method public h(Z)V
    .locals 2
    .parameter

    .prologue
    .line 257
    iput-boolean p1, p0, Lamb;->f:Z

    .line 258
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 259
    const-string v1, "smart_notification_status"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 260
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 261
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lamb;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lamb;->e:I

    return v0
.end method

.method public i(Z)V
    .locals 2
    .parameter

    .prologue
    .line 287
    iput-boolean p1, p0, Lamb;->u:Z

    .line 288
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 289
    const-string v1, "charging_nf"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 290
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 291
    return-void
.end method

.method public j(Z)V
    .locals 2
    .parameter

    .prologue
    .line 298
    iput-boolean p1, p0, Lamb;->t:Z

    .line 299
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 300
    const-string v1, "charging_done_notification"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 302
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lamb;->f:Z

    return v0
.end method

.method public k(Z)V
    .locals 2
    .parameter

    .prologue
    .line 309
    iput-boolean p1, p0, Lamb;->m:Z

    .line 310
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 311
    const-string v1, "lowbatter_reminder"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 312
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 313
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lamb;->u:Z

    return v0
.end method

.method public l(Z)V
    .locals 2
    .parameter

    .prologue
    .line 346
    iput-boolean p1, p0, Lamb;->n:Z

    .line 347
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 348
    const-string v1, "no_disturb_switch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 349
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 350
    return-void
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lamb;->t:Z

    return v0
.end method

.method public m(Z)V
    .locals 2
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 382
    const-string v1, "launch_battery_saver"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 383
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 384
    return-void
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lamb;->m:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lamb;->n:Z

    return v0
.end method

.method public o()[I
    .locals 3

    .prologue
    .line 366
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lamb;->o:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lamb;->p:I

    aput v2, v0, v1

    return-object v0
.end method

.method public p()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    const-string v1, "statusbar_style"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lamb;->a(I)V

    .line 378
    :cond_0
    return-void
.end method

.method public q()Z
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    const-string v1, "launch_battery_saver"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public r()I
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lamb;->a:Landroid/content/SharedPreferences;

    const-string v1, "optimize_time"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
