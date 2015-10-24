.class Lafd;
.super Ljava/lang/Object;
.source "BatteryChargeDetailsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lafc;


# direct methods
.method constructor <init>(Lafc;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lafd;->a:Lafc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lafd;->a:Lafc;

    invoke-static {v0}, Lafc;->a(Lafc;)Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b(I)Z

    .line 117
    return-void
.end method
