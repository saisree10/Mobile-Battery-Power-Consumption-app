.class Layc;
.super Ljava/lang/Object;
.source "AppPowerUsageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Laya;


# direct methods
.method constructor <init>(Laya;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Layc;->a:Laya;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layd;

    .line 261
    iget-object v1, p0, Layc;->a:Laya;

    invoke-static {v1, v0}, Laya;->a(Laya;Layd;)V

    .line 262
    return-void
.end method
