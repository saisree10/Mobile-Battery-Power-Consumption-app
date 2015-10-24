.class Laym;
.super Ljava/lang/Object;
.source "HardwareUsageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Layl;


# direct methods
.method constructor <init>(Layl;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Laym;->a:Layl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layn;

    .line 198
    iget v2, v0, Layn;->i:I

    .line 200
    const/4 v1, 0x0

    .line 201
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    :goto_0
    if-eqz v0, :cond_0

    .line 236
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    :try_start_0
    iget-object v1, p0, Laym;->a:Layl;

    invoke-static {v1}, Layl;->a(Layl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_0
    :goto_1
    return-void

    .line 203
    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_3
    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_4
    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_5
    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 212
    iget-object v2, p0, Laym;->a:Layl;

    invoke-static {v2}, Layl;->a(Layl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lazh;->a(Landroid/content/Context;)Lazh;

    move-result-object v2

    .line 213
    invoke-virtual {v2}, Lazh;->e()V

    .line 214
    invoke-virtual {v2}, Lazh;->a()I

    move-result v3

    if-nez v3, :cond_6

    .line 215
    iget-object v0, p0, Laym;->a:Layl;

    invoke-static {v0}, Layl;->a(Layl;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a007a

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move-object v0, v1

    goto :goto_0

    .line 220
    :cond_6
    invoke-virtual {v2}, Lazh;->c()I

    move-result v1

    if-nez v1, :cond_7

    .line 221
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Laym;->a:Layl;

    invoke-static {v2}, Layl;->a(Layl;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    const-string v2, "position"

    iget v3, v0, Layn;->g:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const-string v2, "bar_percent"

    iget-wide v3, v0, Layn;->h:D

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-object v0, v1

    goto/16 :goto_0

    .line 225
    :cond_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laym;->a:Layl;

    invoke-static {v1}, Layl;->a(Layl;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 229
    :cond_8
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Laym;->a:Layl;

    invoke-static {v2}, Layl;->a(Layl;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    const-string v2, "position"

    iget v3, v0, Layn;->g:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    const-string v2, "bar_percent"

    iget-wide v3, v0, Layn;->h:D

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-object v0, v1

    goto/16 :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    iget-object v0, p0, Laym;->a:Layl;

    invoke-static {v0}, Layl;->a(Layl;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a01a7

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method
