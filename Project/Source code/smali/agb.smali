.class public Lagb;
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
    .line 145
    iput-object p1, p0, Lagb;->a:Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lagb;->a:Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->a(Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    return-void
.end method
