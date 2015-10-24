.class public Laag;
.super Ljava/lang/Object;
.source "BatteryInfoDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lauu;

.field final synthetic b:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;Lauu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Laag;->b:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    iput-object p2, p0, Laag;->a:Lauu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 596
    iget-object v0, p0, Laag;->a:Lauu;

    invoke-virtual {v0}, Lauu;->dismiss()V

    .line 597
    iget-object v0, p0, Laag;->b:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->finish()V

    .line 598
    return-void
.end method
