.class Laum;
.super Ljava/lang/Object;
.source "NetworkOneKeySwitchDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lauk;


# direct methods
.method constructor <init>(Lauk;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Laum;->a:Lauk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Laum;->a:Lauk;

    invoke-static {v0}, Lauk;->c(Lauk;)Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->onClick(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Laum;->a:Lauk;

    invoke-static {v0}, Lauk;->b(Lauk;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lpf;->j(Landroid/content/Context;)V

    .line 47
    return-void
.end method
