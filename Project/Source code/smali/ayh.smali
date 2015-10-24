.class Layh;
.super Ljava/lang/Object;
.source "AppsPowerUsageListAdapterKitKat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Layg;


# direct methods
.method constructor <init>(Layg;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Layh;->a:Layg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layk;

    .line 204
    iget-object v1, p0, Layh;->a:Layg;

    invoke-static {v1, v0}, Layg;->a(Layg;Layk;)V

    .line 205
    return-void
.end method
