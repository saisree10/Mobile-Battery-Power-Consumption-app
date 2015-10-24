.class public Lhv;
.super Ljava/lang/Object;
.source "ADMainActivity.java"

# interfaces
.implements Lhk;


# instance fields
.field final synthetic a:Lcom/dianxinos/acomponent/ui/ADMainActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/acomponent/ui/ADMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lhv;->a:Lcom/dianxinos/acomponent/ui/ADMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 118
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 119
    iget-object v0, p0, Lhv;->a:Lcom/dianxinos/acomponent/ui/ADMainActivity;

    invoke-static {v0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->a(Lcom/dianxinos/acomponent/ui/ADMainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lhw;

    invoke-direct {v1, p0}, Lhw;-><init>(Lhv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    :cond_0
    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    .line 128
    iget-object v0, p0, Lhv;->a:Lcom/dianxinos/acomponent/ui/ADMainActivity;

    invoke-static {v0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->a(Lcom/dianxinos/acomponent/ui/ADMainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lhx;

    invoke-direct {v1, p0}, Lhx;-><init>(Lhv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    :cond_1
    return-void
.end method
