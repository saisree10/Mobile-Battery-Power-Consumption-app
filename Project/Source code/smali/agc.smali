.class public Lagc;
.super Ljava/lang/Object;
.source "ChargerRecordActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lagc;->a:Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lagc;->a:Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->a(Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    return-void
.end method
