.class Lada;
.super Landroid/content/BroadcastReceiver;
.source "BatteryInfoHelper.java"


# instance fields
.field final synthetic a:Lacz;


# direct methods
.method constructor <init>(Lacz;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lada;->a:Lacz;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lada;->a:Lacz;

    invoke-static {v1}, Lacz;->a(Lacz;)Lazm;

    move-result-object v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lada;->a:Lacz;

    invoke-static {}, Lazm;->a()Lazm;

    move-result-object v2

    invoke-static {v1, v2}, Lacz;->a(Lacz;Lazm;)Lazm;

    .line 132
    :cond_0
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lada;->a:Lacz;

    invoke-static {v1}, Lacz;->a(Lacz;)Lazm;

    move-result-object v1

    const-string v2, "/data/data/com.dianxinos.dxbs/automatedtesting.txt"

    invoke-virtual {v1, v2}, Lazm;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 134
    iget-object v0, p0, Lada;->a:Lacz;

    invoke-static {v0, p2}, Lacz;->a(Lacz;Landroid/content/Intent;)V

    .line 135
    iget-object v0, p0, Lada;->a:Lacz;

    invoke-static {v0}, Lacz;->c(Lacz;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafj;->a(Landroid/content/Context;)Lafj;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lada;->a:Lacz;

    invoke-static {v3}, Lacz;->b(Lacz;)Ladd;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lafj;->a(JLadd;)V

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 140
    :cond_2
    const-string v1, "com.dianxinos.dxbs.test.batterychanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lada;->a:Lacz;

    invoke-static {v1}, Lacz;->a(Lacz;)Lazm;

    move-result-object v1

    const-string v2, "/data/data/com.dianxinos.dxbs/automatedtesting.txt"

    invoke-virtual {v1, v2}, Lazm;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    iget-object v0, p0, Lada;->a:Lacz;

    invoke-static {v0, p2}, Lacz;->a(Lacz;Landroid/content/Intent;)V

    .line 143
    iget-object v0, p0, Lada;->a:Lacz;

    invoke-static {v0}, Lacz;->c(Lacz;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafj;->a(Landroid/content/Context;)Lafj;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lada;->a:Lacz;

    invoke-static {v3}, Lacz;->b(Lacz;)Ladd;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lafj;->a(JLadd;)V

    goto :goto_0

    .line 146
    :cond_3
    const-string v1, "com.dianxinos.dxbs.BATTERY_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 147
    const-string v0, "percent"

    iget-object v1, p0, Lada;->a:Lacz;

    invoke-static {v1}, Lacz;->b(Lacz;)Ladd;

    move-result-object v1

    iget v1, v1, Ladd;->j:I

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 148
    iget-object v1, p0, Lada;->a:Lacz;

    invoke-static {v1}, Lacz;->d(Lacz;)Ladg;

    move-result-object v1

    invoke-virtual {v1, v0}, Ladg;->a(I)V

    .line 149
    iget-object v1, p0, Lada;->a:Lacz;

    invoke-static {v1}, Lacz;->b(Lacz;)Ladd;

    move-result-object v1

    iput v0, v1, Ladd;->j:I

    .line 150
    iget-object v0, p0, Lada;->a:Lacz;

    invoke-static {v0}, Lacz;->e(Lacz;)Laff;

    move-result-object v0

    invoke-virtual {v0}, Laff;->f()Lafh;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lada;->a:Lacz;

    invoke-static {v1}, Lacz;->e(Lacz;)Laff;

    move-result-object v1

    invoke-virtual {v1}, Laff;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 152
    iget-object v1, p0, Lada;->a:Lacz;

    invoke-static {v1}, Lacz;->e(Lacz;)Laff;

    move-result-object v1

    invoke-virtual {v1}, Laff;->f()Lafh;

    move-result-object v1

    const-string v2, "fix_time"

    invoke-virtual {v0}, Lafh;->c()I

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lafh;->a(I)V

    .line 164
    :cond_4
    iget-object v0, p0, Lada;->a:Lacz;

    iget-object v1, p0, Lada;->a:Lacz;

    invoke-static {v1}, Lacz;->b(Lacz;)Ladd;

    move-result-object v1

    invoke-static {v0, v1}, Lacz;->a(Lacz;Ladd;)V

    goto/16 :goto_0

    .line 169
    :cond_5
    const-string v1, "com.dianxinos.dxbs.MODECHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 170
    iget-object v0, p0, Lada;->a:Lacz;

    invoke-static {v0}, Lacz;->f(Lacz;)Laud;

    move-result-object v0

    invoke-virtual {v0}, Laud;->a()V

    .line 171
    iget-object v0, p0, Lada;->a:Lacz;

    invoke-static {v0}, Lacz;->b(Lacz;)Ladd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lada;->a:Lacz;

    invoke-static {v0}, Lacz;->b(Lacz;)Ladd;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Ladd;->i:Z

    .line 173
    iget-object v0, p0, Lada;->a:Lacz;

    invoke-static {v0}, Lacz;->b(Lacz;)Ladd;

    move-result-object v0

    iget-object v1, p0, Lada;->a:Lacz;

    invoke-static {v1}, Lacz;->f(Lacz;)Laud;

    move-result-object v1

    iget-object v2, p0, Lada;->a:Lacz;

    invoke-static {v2}, Lacz;->b(Lacz;)Ladd;

    move-result-object v2

    iget v2, v2, Ladd;->j:I

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3, v4}, Laud;->a(DI)I

    move-result v1

    iput v1, v0, Ladd;->k:I

    .line 175
    iget-object v0, p0, Lada;->a:Lacz;

    iget-object v1, p0, Lada;->a:Lacz;

    invoke-static {v1}, Lacz;->b(Lacz;)Ladd;

    move-result-object v1

    invoke-static {v0, v1}, Lacz;->a(Lacz;Ladd;)V

    goto/16 :goto_0

    .line 180
    :cond_6
    const-string v1, "com.dianxinos.dxbs.MODEMODIFIED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 181
    iget-object v0, p0, Lada;->a:Lacz;

    invoke-static {v0}, Lacz;->f(Lacz;)Laud;

    move-result-object v0

    invoke-virtual {v0}, Laud;->a()V

    .line 182
    iget-object v0, p0, Lada;->a:Lacz;

    invoke-static {v0}, Lacz;->b(Lacz;)Ladd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lada;->a:Lacz;

    invoke-static {v0}, Lacz;->b(Lacz;)Ladd;

    move-result-object v0

    iput-boolean v3, v0, Ladd;->i:Z

    .line 184
    iget-object v0, p0, Lada;->a:Lacz;

    invoke-static {v0}, Lacz;->b(Lacz;)Ladd;

    move-result-object v0

    iget-object v1, p0, Lada;->a:Lacz;

    invoke-static {v1}, Lacz;->f(Lacz;)Laud;

    move-result-object v1

    iget-object v2, p0, Lada;->a:Lacz;

    invoke-static {v2}, Lacz;->b(Lacz;)Ladd;

    move-result-object v2

    iget v2, v2, Ladd;->j:I

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3, v4}, Laud;->a(DI)I

    move-result v1

    iput v1, v0, Ladd;->k:I

    .line 186
    iget-object v0, p0, Lada;->a:Lacz;

    iget-object v1, p0, Lada;->a:Lacz;

    invoke-static {v1}, Lacz;->b(Lacz;)Ladd;

    move-result-object v1

    invoke-static {v0, v1}, Lacz;->a(Lacz;Ladd;)V

    goto/16 :goto_0

    .line 191
    :cond_7
    const-string v1, "com.dianxinos.dxbs.action.RemainingTimeUpate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lada;->a:Lacz;

    invoke-static {v0}, Lacz;->f(Lacz;)Laud;

    move-result-object v0

    invoke-virtual {v0}, Laud;->a()V

    .line 193
    iget-object v0, p0, Lada;->a:Lacz;

    invoke-static {v0}, Lacz;->b(Lacz;)Ladd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lada;->a:Lacz;

    invoke-static {v0}, Lacz;->b(Lacz;)Ladd;

    move-result-object v0

    iput-boolean v3, v0, Ladd;->i:Z

    .line 195
    iget-object v0, p0, Lada;->a:Lacz;

    invoke-static {v0}, Lacz;->b(Lacz;)Ladd;

    move-result-object v0

    iget-object v1, p0, Lada;->a:Lacz;

    invoke-static {v1}, Lacz;->f(Lacz;)Laud;

    move-result-object v1

    iget-object v2, p0, Lada;->a:Lacz;

    invoke-static {v2}, Lacz;->b(Lacz;)Ladd;

    move-result-object v2

    iget v2, v2, Ladd;->j:I

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3, v4}, Laud;->a(DI)I

    move-result v1

    iput v1, v0, Ladd;->k:I

    .line 197
    iget-object v0, p0, Lada;->a:Lacz;

    iget-object v1, p0, Lada;->a:Lacz;

    invoke-static {v1}, Lacz;->b(Lacz;)Ladd;

    move-result-object v1

    invoke-static {v0, v1}, Lacz;->a(Lacz;Ladd;)V

    goto/16 :goto_0
.end method
