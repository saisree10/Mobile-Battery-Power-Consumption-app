.class public Ladm;
.super Landroid/os/Handler;
.source "BatteryThemeActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Ladm;->a:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    .line 105
    iget-object v0, p0, Ladm;->a:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02bd

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 107
    iget-object v0, p0, Ladm;->a:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->b(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ladm;->a:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)Ladp;

    move-result-object v1

    invoke-virtual {v1}, Ladp;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Ladm;->a:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)Ladp;

    move-result-object v0

    iget-object v1, p0, Ladm;->a:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->b(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ladp;->a(Ljava/util/ArrayList;)V

    .line 109
    iget-object v0, p0, Ladm;->a:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->c(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)V

    .line 110
    iget-object v0, p0, Ladm;->a:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    invoke-static {v0, v3}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;Z)V

    .line 111
    iget-object v0, p0, Ladm;->a:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->d(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)V

    .line 116
    :cond_0
    :goto_0
    iget-object v0, p0, Ladm;->a:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->e(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Ladm;->a:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->e(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 119
    :cond_1
    return-void

    .line 112
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    .line 113
    iget-object v0, p0, Ladm;->a:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a028c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
