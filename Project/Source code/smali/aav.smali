.class public Laav;
.super Landroid/content/BroadcastReceiver;
.source "PersonalCenterActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PersonalCenterActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/PersonalCenterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Laav;->a:Lcom/dianxinos/powermanager/PersonalCenterActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Laav;->a:Lcom/dianxinos/powermanager/PersonalCenterActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->finish()V

    .line 222
    return-void
.end method
