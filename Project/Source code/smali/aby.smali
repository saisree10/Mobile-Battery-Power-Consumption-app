.class public Laby;
.super Landroid/content/BroadcastReceiver;
.source "SaverActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/SaverActivity;


# direct methods
.method private constructor <init>(Lcom/dianxinos/powermanager/SaverActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Laby;->a:Lcom/dianxinos/powermanager/SaverActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dianxinos/powermanager/SaverActivity;Labx;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Laby;-><init>(Lcom/dianxinos/powermanager/SaverActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    sget-object v0, Lcom/dianxinos/powermanager/SaverActivity;->v:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laby;->a:Lcom/dianxinos/powermanager/SaverActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/SaverActivity;->a(Lcom/dianxinos/powermanager/SaverActivity;)Lcom/dianxinos/common/ui/fragment/TitleIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Laby;->a:Lcom/dianxinos/powermanager/SaverActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/SaverActivity;->b(Lcom/dianxinos/powermanager/SaverActivity;)Lcom/dianxinos/common/ui/fragment/TitleIndicator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->setCurrentTab(I)V

    .line 32
    :cond_0
    return-void
.end method
