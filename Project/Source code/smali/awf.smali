.class Lawf;
.super Ljava/lang/Object;
.source "PurchaseConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lawe;


# direct methods
.method constructor <init>(Lawe;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lawf;->a:Lawe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lawf;->a:Lawe;

    invoke-virtual {v0}, Lawe;->dismiss()V

    .line 67
    return-void
.end method
