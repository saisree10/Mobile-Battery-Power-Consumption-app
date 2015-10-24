.class Lawv;
.super Ljava/lang/Object;
.source "SleepModeTopTipsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lawu;


# direct methods
.method constructor <init>(Lawu;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lawv;->a:Lawu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lawv;->a:Lawu;

    invoke-static {v1}, Lawu;->a(Lawu;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lawv;->a:Lawu;

    invoke-static {v1}, Lawu;->a(Lawu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method
