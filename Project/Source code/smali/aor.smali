.class public Laor;
.super Landroid/os/Handler;
.source "BrightnessChangeActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/settings/BrightnessChangeActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/settings/BrightnessChangeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Laor;->a:Lcom/dianxinos/powermanager/settings/BrightnessChangeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Laor;->a:Lcom/dianxinos/powermanager/settings/BrightnessChangeActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/settings/BrightnessChangeActivity;->finish()V

    .line 30
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 31
    return-void
.end method
