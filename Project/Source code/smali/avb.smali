.class public Lavb;
.super Landroid/os/Handler;
.source "CustomTabWidget.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/ui/CustomTabWidget;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/ui/CustomTabWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lavb;->a:Lcom/dianxinos/powermanager/ui/CustomTabWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 32
    iget-object v0, p0, Lavb;->a:Lcom/dianxinos/powermanager/ui/CustomTabWidget;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->invalidate()V

    .line 34
    :cond_0
    return-void
.end method
