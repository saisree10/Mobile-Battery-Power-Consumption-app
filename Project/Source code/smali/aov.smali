.class Laov;
.super Landroid/content/BroadcastReceiver;
.source "PowerSettingsHelperBase.java"


# instance fields
.field final synthetic a:Laou;


# direct methods
.method constructor <init>(Laou;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Laov;->a:Laou;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x4

    .line 201
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string v1, "com.dianxinos.dxbs.MODEMODIFIED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 203
    const-string v0, "command"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 205
    invoke-static {}, Laou;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Lamp;->g()Lamh;

    move-result-object v1

    .line 208
    if-ne v0, v4, :cond_1

    .line 209
    iget-object v0, p0, Laov;->a:Laou;

    const-string v2, "wifi"

    invoke-static {v0, v2}, Laou;->a(Laou;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    iget-object v0, p0, Laov;->a:Laou;

    invoke-virtual {v1, v4}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Laou;->a(Z)V

    .line 251
    :cond_0
    :goto_0
    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->b(Laou;)V

    .line 252
    return-void

    .line 212
    :cond_1
    if-ne v0, v3, :cond_2

    .line 213
    iget-object v0, p0, Laov;->a:Laou;

    const-string v2, "mobileData"

    invoke-static {v0, v2}, Laou;->a(Laou;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    iget-object v0, p0, Laov;->a:Laou;

    invoke-virtual {v1, v3}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Laou;->b(Z)V

    goto :goto_0

    .line 216
    :cond_2
    if-nez v0, :cond_3

    .line 217
    iget-object v0, p0, Laov;->a:Laou;

    const-string v2, "brightness"

    invoke-static {v0, v2}, Laou;->a(Laou;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    iget-object v0, p0, Laov;->a:Laou;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Laou;->a(I)V

    goto :goto_0

    .line 220
    :cond_3
    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    .line 221
    iget-object v0, p0, Laov;->a:Laou;

    const-string v1, "vibrate"

    invoke-static {v0, v1}, Laou;->a(Laou;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {}, Laou;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lapi;->a(Landroid/content/Context;)Lapi;

    move-result-object v1

    invoke-virtual {v1}, Lapi;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Laou;->b(I)V

    goto :goto_0

    .line 224
    :cond_4
    if-ne v0, v7, :cond_5

    .line 225
    iget-object v0, p0, Laov;->a:Laou;

    const-string v2, "GPS"

    invoke-static {v0, v2}, Laou;->a(Laou;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    iget-object v0, p0, Laov;->a:Laou;

    invoke-virtual {v1, v7}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Laou;->d(Z)V

    goto :goto_0

    .line 228
    :cond_5
    if-ne v0, v5, :cond_6

    .line 229
    iget-object v0, p0, Laov;->a:Laou;

    const-string v2, "bluetooth"

    invoke-static {v0, v2}, Laou;->a(Laou;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    iget-object v0, p0, Laov;->a:Laou;

    invoke-virtual {v1, v5}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Laou;->e(Z)V

    goto :goto_0

    .line 232
    :cond_6
    if-ne v0, v6, :cond_7

    .line 233
    iget-object v0, p0, Laov;->a:Laou;

    const-string v2, "sync"

    invoke-static {v0, v2}, Laou;->a(Laou;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    iget-object v0, p0, Laov;->a:Laou;

    invoke-virtual {v1, v6}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Laou;->f(Z)V

    goto/16 :goto_0

    .line 236
    :cond_7
    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    .line 237
    iget-object v0, p0, Laov;->a:Laou;

    const-string v2, "airplane"

    invoke-static {v0, v2}, Laou;->a(Laou;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    iget-object v0, p0, Laov;->a:Laou;

    invoke-virtual {v1}, Lamh;->l()Lahd;

    move-result-object v2

    invoke-virtual {v2}, Lahd;->a()Z

    move-result v2

    iput-boolean v2, v0, Laou;->c:Z

    .line 239
    iget-object v0, p0, Laov;->a:Laou;

    iget-object v2, p0, Laov;->a:Laou;

    iget-boolean v2, v2, Laou;->c:Z

    invoke-virtual {v0, v2}, Laou;->c(Z)V

    .line 242
    invoke-static {}, Lazf;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Laov;->a:Laou;

    invoke-virtual {v1, v3}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Laou;->b(Z)V

    goto/16 :goto_0

    .line 246
    :cond_8
    const-string v1, "com.dianxinos.dxbs.MODECHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->a(Laou;)V

    goto/16 :goto_0
.end method
