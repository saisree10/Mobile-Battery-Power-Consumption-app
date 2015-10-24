.class Laus;
.super Ljava/lang/Object;
.source "ChargingFlowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lauq;


# direct methods
.method constructor <init>(Lauq;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Laus;->b:Lauq;

    iput-object p2, p0, Laus;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x111

    .line 107
    iget-object v0, p0, Laus;->b:Lauq;

    invoke-static {v0}, Lauq;->c(Lauq;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "birc"

    const-string v2, "cfvc"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 111
    iget-object v0, p0, Laus;->b:Lauq;

    invoke-static {v0}, Lauq;->d(Lauq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    iget-object v0, p0, Laus;->b:Lauq;

    invoke-static {v0}, Lauq;->d(Lauq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Laus;->b:Lauq;

    invoke-static {v2}, Lauq;->c(Lauq;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 115
    const-string v1, "From"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Laus;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method
