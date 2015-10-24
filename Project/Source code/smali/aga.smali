.class public Laga;
.super Ljava/lang/Object;
.source "ChargerRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Laga;->a:Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Laga;->a:Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->finish()V

    .line 94
    return-void
.end method
