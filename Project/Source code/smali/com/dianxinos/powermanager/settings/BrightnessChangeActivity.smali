.class public Lcom/dianxinos/powermanager/settings/BrightnessChangeActivity;
.super Landroid/app/Activity;
.source "BrightnessChangeActivity.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    new-instance v0, Laor;

    invoke-direct {v0, p0}, Laor;-><init>(Lcom/dianxinos/powermanager/settings/BrightnessChangeActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/BrightnessChangeActivity;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/settings/BrightnessChangeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 20
    const-string v1, "brightness_index"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 21
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/settings/BrightnessChangeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lahl;->a(Landroid/view/Window;I)V

    .line 22
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/BrightnessChangeActivity;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 24
    return-void
.end method
